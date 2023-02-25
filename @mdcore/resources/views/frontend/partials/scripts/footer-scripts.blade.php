<script>
    (function ($) {
        'use strict'

        let site_currency_symbol = '{{ site_currency_symbol() }}';

        $(document).ready(function () {
            refreshShippingDropdown();
            refreshWishlistDropdown();

            $(document).on('click', '.add_to_cart_ajax', function (e) {
                e.preventDefault();
                let product_id = $(this).data('id');
                $.ajax({
                    url: '{{ route("frontend.products.add.to.cart.ajax") }}',
                    type: 'POST',
                    data: {
                        product_id: product_id,
                        quantity: 1,
                        product_attributes: [],
                        _token: '{{ csrf_token() }}'
                    },
                    success: function (data) {
                        toastr.success(data.msg);
                        if (data.quantity_msg) {
                            toastr.warning(data.quantity_msg)
                        }
                        refreshShippingDropdown();
                    },
                    erorr: function (err) {
                        toastr.error('{{ __("something went wrong!! try again") }}');
                    }
                });
            });

            $(document).on('click', '.single-thumb', function () {
                let attribute_img_el = $('#attribute_img');
                attribute_img_el.attr('src', '');
                attribute_img_el.prev().show();
            });

            $('.thumb-link img').on('click', function (e) {
                let source = $(this).attr('src');
                let key = $(this).parent().data('key');
                let attribute_img_el = $('.attribute_img');
                $('.magnific[data-key="'+key+'"]').closest('.single-main-image').find('.attribute_img').attr('src', source);
                attribute_img_el.hide();
                attribute_img_el.prev().show();
                console.log([$('.magnific[data-key="'+key+'"]').closest('.single-main-image').find('.attribute_img'), source])
            })

            $('.attribute input[type=radio]').on('click', function () {
                let attribute_img_el = $('.attribute_img');
                let total_extra = 0;
                let main_price = Number($('#price').data('mainPrice'));
                let all_checked = $('.attribute input[type=radio]:checked');

                // image
                if ($(this).data('attrImage')) {
                    attribute_img_el.attr('src', $(this).data('attrImage')).show();
                    attribute_img_el.closest('.single-main-image').find('.magnific').attr('href', $(this).data('attrImage'));
                    attribute_img_el.prev().hide();
                } else {
                    // attribute_img_el.attr('src', '');
                    attribute_img_el.hide();
                    attribute_img_el.prev().show();
                }

                //price
                for (let i = 0; i < all_checked.length; i++) {
                    total_extra += Number($(all_checked[i]).siblings('span').data('extra'));
                }
                let new_price = main_price + total_extra;
                $('#price').text(site_currency_symbol + parseFloat(new_price).toFixed(2));
            });

            $(document).on('click', '.add_to_wishlist_ajax', function (e) {
                e.preventDefault();
                let product_id = $(this).data('id');
                $.ajax({
                    url: '{{ route("frontend.products.add.to.wishlist.ajax") }}',
                    type: 'POST',
                    data: {
                        product_id: product_id,
                        quantity: 1,
                        product_attributes: [],
                        _token: '{{ csrf_token() }}'
                    },
                    success: function (data) {
                        toastr.success(data.msg);
                        refreshWishlistDropdown();
                    },
                    erorr: function (err) {
                        toastr.error('{{ __("An error occurred") }}');
                    }
                });
            });

            $('.nav_search_btn').on('click', function (e) {
                e.preventDefault();
                if ($('.search_bar .form-group .form-control').val().length) {
                    $('#product_search_form').trigger('submit');
                } else {
                    $('.search_bar .form-group').toggle('fast', 'swing');
                }
            });

            $('body').on('click', '.quick-view', function (e) {
                e.preventDefault();
                let data = $(this).data();
                let rating = $(this).data('rating');
                let stock_msg = "{{ __('Item is not available in stock') }}";
                let stock_class = 'text-danger';
                let badge = $(this).data('badge');
                let campaignPercentage = $(this).data('campaignpercentage');;

                $('#productview a.add-to-cart').data('id', data['id']);

                $('#productview .title').text(data['title']);
                $('#productview .info').text(data['summary']);
                $('#productview .sale_price').text(data['salePrice']);
                $('#productview .main_price').text('');
                var parserPrice = parseFloat(data['price'].replace(/[^0-9]/g,''));
                if(parserPrice){
                    $('#productview .main_price').text(data['price']);
                }
                $('#productview .product_category').text(data['category']);
                $('#productview .product_category').attr('href', data['categoryUrl']);
                $('#productview .product-img img').attr('src', data['image']);
                
                $('#productview .product-img .discount-tag').remove();
                $('#productview .product-img .sale').remove();
                //badge 
                if(campaignPercentage !== undefined){
                      $('#productview .product-img').append('<span class="discount-tag">-'+campaignPercentage+'%</span>');
                }
                 if(badge !== undefined){
                      $('#productview .product-img').append('<span class="sale">'+badge+'</span>');
                }
              
                
                $('#productview .sku_wrapper .sku').text(data['inventory']);

                if (data['inStock']) {
                    stock_msg = "{{ __('Item is available in stock') }}";
                    stock_class = 'text-success';
                }

                $('#productview .is_available').removeClass('text-success');
                $('#productview .is_available').removeClass('text-danger');

                $('#productview .is_available').text(stock_msg);
                $('#productview .is_available').addClass(stock_class);

                if (data['inventory'] && data['inventory'].length) {
                    $('#productview .sku_wrapper').show();
                }

                let subcategory_html = '';
                let subcategory = data['subcategory'];

                for (let i = 0; i < subcategory.length; i++) {
                    let comma = '';

                    if (i < subcategory.length - 1) {
                        comma += ', ';
                    }

                    subcategory_html += '<a href="'+subcategory[i]['url']+'" class="product_subcategory" rel="tag">'+subcategory[i]['name']+'</a>' + comma;
                }

                $('#product_subcategory_links').html(subcategory_html);

                if (!subcategory_html.length) {
                    $('.productview_subcategory').hide();
                } else {
                    $('.productview_subcategory').show()
                }

                let rating_html = '';

                for (let i = 0; i < Number(rating); i++) {
                    rating_html += '<i class="las la-star icon"></i>';
                }

                for (let i = Math.ceil(Number(rating)); i < 5; i++) {
                    rating_html += '<i class="lar la-star icon"></i>';
                }

                $('#productview .ratings').html(rating_html);

                if (Number(rating)) {
                    $('#productview .ratings').show()
                } else {
                    $('#productview .ratings').hide()
                }

                $('#productview').addClass('show');
            });

            $(document).on('click', '.add_to_compare_ajax', function (e) {
                e.preventDefault();
                let product_id = $(this).data('id');
                $.ajax({
                    url: '{{ route("frontend.products.add.to.compare") }}',
                    type: 'POST',
                    data: {
                        product_id: product_id,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function (data) {
                        if (data) {
                            toastr.success('{{ __("Item added to compare") }}');
                        }
                    },
                    erorr: function (err) {
                        toastr.error('{{ __("An error occurred") }}');
                    }
                });
            });

            $('#product_filter_featured_products').on('click', function (e) {
                let url = '{{ route("frontend.products.filter.top.rated") }}';
                loadFilterData(url);
            });
            $('#product_filter_top_selling').on('click', function (e) {
                let url = '{{ route("frontend.products.filter.top.selling") }}';
                loadFilterData(url);
            });
            $('#product_filter_new_products').on('click', function (e) {
                let url = '{{ route("frontend.products.filter.new") }}';
                loadFilterData(url);
            });

            $(document).on('click', '#quickview', function (e) {
                e.preventDefault();
                loadProductAttributeHtml($(this).data('slug'));
            });

            $(document).on('click', '.remove_cart_item', function (e) {
                e.preventDefault();
                let id = $(this).data('id');
                let attributes = $(this).data('attr');
                $('.lds-ellipsis').show();

                $.ajax({
                    url: '{{ route("frontend.products.cart.ajax.remove") }}',
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        id: id,
                        product_attributes: attributes
                    },
                    success: function (data) {
                        $('.lds-ellipsis').hide(300);
                        $('#cart-container').html(data);
                        refreshShippingDropdown();
                    },
                    error: function (err) {
                        toastr.error('{{ __("An error occurred") }}');
                        $('.lds-ellipsis').hide(300);
                    }
                });
            });

            $(document).on('click', '.buy_now', function (e) {
                e.preventDefault();

                let product_id = $(this).data('id');
                let quantity = Number($(this).closest('.add_to_cart_info').find('input.quantity').val().trim());
                let price = $('#price').text().split(site_currency_symbol)[1];
                let attributes = {};

                // get attributes
                let rendered_attributes = $('.attribute_row');
                for (let i = 0; i < rendered_attributes.length; i++) {
                    let name = $(rendered_attributes[i]).find('.name').text();
                    let selected_attribute = $(rendered_attributes[i]).find('input.checkbox:checked').next().text();
                    attributes[name] = selected_attribute;
                }

                attributes['price'] = price;

                let selected_attributes_arr = [];
                let all_selected_attributes = $('.attribute_row input.checkbox:checked');
                all_selected_attributes.map(function (k, v) {
                    selected_attributes_arr.push($(v).data('attr'));
                });

                if (attributeSelected(attributes)) {
                    $.ajax({
                        url: '{{ route("frontend.products.add.to.cart.ajax") }}',
                        type: 'POST',
                        data: {
                            product_id: product_id,
                            quantity: quantity,
                            product_attributes: selected_attributes_arr,
                            _token: '{{ csrf_token() }}'
                        },
                        success: function (data) {
                            toastr.success(data.msg);
                            if (data.quantity_msg) {
                                toastr.warning(data.quantity_msg)
                            }
                            setTimeout(function () {
                                location.href = '{{ route("frontend.checkout") }}';
                            }, 1000);
                        },
                        erorr: function (err) {
                            toastr.error('{{ __("An error occurred") }}');
                        }
                    });
                } else {
                    toastr.error('{{ __("Select all attribute to proceed") }}');
                }
            });

            $(document).on('click', '#productview .modal_add_to_cart', function (e) {
                e.preventDefault();
                let site_currency_symbol = '{{ site_currency_symbol() }}';
                let product_id = $(this).data('id');
                let quantity = Number($('.quantity').val().trim());
                let price = Number($('#productview .price.sale_price').text().split(site_currency_symbol)[1].trim())
                let attributes = {};

                // get attributes
                let rendered_attributes = $('.attribute_row');
                for (let i = 0; i < rendered_attributes.length; i++) {
                    let name = $(rendered_attributes[i]).find('.name').text();
                    let selected_attributes_arr = [];
                    let selected_attribute = $(rendered_attributes[i]).find('input.checkbox:checked').next().text();
                    attributes[name] = selected_attribute;
                }

                attributes['price'] = price;

                let selected_attributes_arr = [];
                let all_selected_attributes = $('.attribute_row input.checkbox:checked');
                all_selected_attributes.map(function (k, v) {
                    selected_attributes_arr.push($(v).data('attr'));
                });

                if (attributeSelected(attributes)) {
                    $.ajax({
                        url: '{{ route("frontend.products.add.to.cart.ajax") }}',
                        type: 'POST',
                        data: {
                            product_id: product_id,
                            quantity: quantity,
                            product_attributes: selected_attributes_arr,
                            _token: '{{ csrf_token() }}'
                        },
                        success: function (data) {
                            toastr.success(data.msg);
                            if (data.quantity_msg) {
                                toastr.warning(data.quantity_msg)
                            }
                            refreshShippingDropdown();
                        },
                        erorr: function (err) {
                            toastr.error('{{ __("An error occurred") }}');
                        }
                    });
                } else {
                    toastr.error('{{ __("Select all attribute to proceed") }}');
                }
            });

            $(document).on('change', '#langchange', function(e) {
                $.ajax({
                    url : "{{ route('frontend.langchange') }}",
                    type: "GET",
                    data:{
                        'lang' : $(this).val()
                    },
                    success:function (data) {
                        location.reload();
                    }
                });
            });
        });

        function refreshShippingDropdown() {
            $.ajax({
                url: '{{ route("frontend.products.cart.info.ajax") }}',
                type: 'GET',
                success: function (data) {
                    $('#cart_badge').text(data.item_total);
                    $('#top_minicart_container').html(data.cart);
                },
                erorr: function (err) {
                    toastr.error('{{ __("An error occurred") }}');
                }
            });
        }

        function refreshWishlistDropdown() {
            // sync changes in details page
            $.ajax({
                url: '{{ route("frontend.products.wishlist.total") }}',
                type: 'GET',
                success: function (data) {
                    $('#wishlist_badge').text(data.total);
                },
                erorr: function (err) {
                    toastr.error('{{ __("An error occurred") }}');
                }
            });
        }

        function loadFilterData(url) {
            $('.lds-ellipsis').show();
            $.ajax({
                url: url,
                type: 'GET',
                success: function (data) {
                    if (data) {
                        $('#product_filter_section').html(data);
                        $('.lds-ellipsis').hide(300);
                    }
                },
                erorr: function (err) {
                    toastr.error('{{ __("An error occurred") }}');
                    $('.lds-ellipsis').hide(300);
                }
            });
        }

        function loadProductAttributeHtml(slug) {
            let url = "{{ route('frontend.products.attribute.html') }}";
            $('.lds-ellipsis').show();
            $.ajax({
                url: url,
                type: 'GET',
                data: {slug: slug},
                success: function (data) {
                    if (data) {
                        $('.lds-ellipsis').hide(300);
                        $('#productview .cart-option').html(data);
                    }
                },
                erorr: function (err) {
                    toastr.error('{{ __("An error occurred") }}');
                    $('.lds-ellipsis').hide(300);
                }
            });
        }
    })(jQuery)
    function attributeSelected(attribute) {
        let attribute_rows = $('.attribute_row');
        let attr_names = [];
        let attr_selected = [];

        $('.attribute_row .attribute input[type=radio]').map(function (k, v) {
            if (attr_names.indexOf($(v).attr('name')) == -1) {
                attr_names.push($(v).attr('name'))
            }
        });

       attr_names.map(function (k, v) {
            if ($('input[name="'+k+'"]:checked').val()) {
                attr_selected.push($('input[name="'+k+'"]:checked').val());
            }
        });

        return attr_names.length == attr_selected.length;
    }
    function addslashes(str) {
        return (str + '').replace(/[\\"']/g, '\\$&').replace(/\u0000/g, '\\0');
    }
</script>
