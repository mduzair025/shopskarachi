<!-- footer area start -->
<footer class="footer-area 
    <?php if( request()->routeIs('frontend.dynamic.page') && isset($page_post->breadcrumb_status) && $page_post->breadcrumb_status): ?> 
        index-02 dark
    <?php endif; ?>
">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <?php if(isset($dynamic_page_footer)): ?>
                    <?php if($dynamic_page_footer == 1): ?>
                        <?php echo render_frontend_sidebar('footer', ['column' => true]); ?>

                    <?php elseif($dynamic_page_footer == 2): ?>
                        <?php echo render_frontend_sidebar('footer_two', ['column' => true]); ?>

                    <?php endif; ?>
                <?php else: ?>
                    <?php echo render_frontend_sidebar('footer', ['column' => true]); ?>

                <?php endif; ?>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="copyright-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-area-inner justify-content-center">
                            <div class="content">
                                <p class="copyright"><?php echo purify_html_raw(get_footer_copyright_text()); ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer area end -->

<!-- modal area start -->
<div class="product-modal-wrap" id="productview">
    <div class="product-modal">
        <div class="product-img">
            <img src="assets/img/flash-sale/Image-1.jpg" alt="image">
        </div>
        <div class="content">
            <h4 class="title"><?php echo e(__('product name')); ?></h4>
            <small class="is_available text-secondary"></small>
            <div class="ratings">
                <i class="las la-star icon"></i>
                <i class="las la-star icon"></i>
                <i class="las la-star icon"></i>
                <i class="lar la-star icon"></i>
            </div>
            <div class="pricing">
                <ul class="list">
                    <li class="price">
                        <del class="main_price"></del>
                    </li>
                    <li class="price sale_price"></li>
                </ul>
            </div>
            <p class="info"><?php echo e(__('Product Info')); ?></p>
            <div class="cart-option">
                <div class="d-flex add_to_cart_info">
                    <div class="input-group">
                        <input class="quantity form-control" type="number" min="1" max="10000000" value="1">
                    </div>
                    <div class="add-cart-btn">
                        <a href="#" class="add-to-cart add_to_cart modal_add_to_cart"><?php echo e(__('add to cart')); ?></a>
                    </div>
                    <div class="add-cart-btn">
                        <a href="#" class="add-to-cart buy_now ml-1"><?php echo e(__('Buy Now')); ?></a>
                    </div>
                </div>
            </div>
            <div class="attribute-options"></div>
            <div class="product_meta">
                <span class="sku_wrapper"><?php echo e(__('SKU')); ?>: <span class="sku"></span></span>
                <span class="posted_in"><?php echo e(__('Category')); ?>: <a href="#" class="product_category" rel="tag">|</a></span>
                <span class="posted_in productview_subcategory"><?php echo e(__('Subcategory')); ?>: 
                    <span id="product_subcategory_links"></span>
                </span>
            </div>
        </div>

        <div class="close-btn" id="close">
            <span class="btn-x">×</span>
        </div>
    </div>
</div>
<!-- modal area start -->

<!-- back to top area start -->
<div class="scroll-to-top">
    <i class="las la-angle-up"></i>
</div>
<!-- back to top area end -->

<!-- jquery -->
<script src="<?php echo e(asset('assets/frontend/js/jquery-3.6.0.min.js')); ?>"></script>
<!-- jquery migrate -->
<script src="<?php echo e(asset('assets/frontend/js/jquery-migrate-3.3.2.js')); ?>"></script>
<!-- bootstrap -->
<script src="<?php echo e(asset('assets/frontend/js/bootstrap.min-v4.6.0.js')); ?>"></script>
<!-- popper -->
<script src="<?php echo e(asset('assets/frontend/js/popper.min.js')); ?>"></script>
<!-- slick js -->
<script src="<?php echo e(asset('assets/frontend/js/slick.min.js')); ?>"></script>
<!-- isotope js -->
<script src="<?php echo e(asset('assets/frontend/js/isotope.pkgd.min-v3.0.6.js')); ?>"></script>
<!-- countdown js -->
<script src="<?php echo e(asset('assets/frontend/js/loopcounter.js')); ?>"></script>
<!-- wow js -->
<script src="<?php echo e(asset('assets/frontend/js/wow.js')); ?>"></script>
<!-- main js -->
<script src="<?php echo e(asset('assets/frontend/js/main.js')); ?>"></script>

<?php echo $__env->make('frontend.partials.google-captcha', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('frontend.partials.gdpr-cookie', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('frontend.partials.inline-script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('frontend.partials.twakto', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.sweet-alert-msg','data' => []]); ?>
<?php $component->withName('sweet-alert-msg'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php echo $__env->yieldContent('scripts'); ?>

<script src="<?php echo e(asset('assets/common/js/toastr.min.js')); ?>"></script>
<?php echo $__env->make('frontend.partials.scripts.footer-scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

</body>
</html>
<?php /**PATH E:\laragon\www\MDUZAIR\zaika\@mdcore\resources\views/frontend/partials/footer.blade.php ENDPATH**/ ?>