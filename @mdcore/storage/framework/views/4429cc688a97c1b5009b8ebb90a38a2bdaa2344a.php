<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Dashboard')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<?php
    $statistics = [
        ['title' => __('Total Admin'),'value' => $total_admin, 'icon' => 'lar la-user'],
        ['title' => __('Total Customer'),'value' => $total_user, 'icon' => 'lar la-user'],
        ['title' => __('Total Blog'),'value' => $all_blogs_count, 'icon' => 'lar la-edit'],
        ['title' => __('Total Products'),'value' => $all_products_count, 'icon' => 'las la-box'],
        ['title' => __('Completed Sale'),'value' => $all_completed_sell_count, 'icon' => 'las la-boxes'],
        ['title' => __('Pending Sale'),'value' => $all_pending_sell_count, 'icon' => 'las la-history'],
        ['title' => __('Sold Amount'),'value' => $total_sold_amount, 'icon' => 'las la-coins'],
        ['title' => __('Ongoing Campaign'),'value' => $total_ongoing_campaign, 'icon' => 'las la-gifts'],
    ];
?>
    <div class="main-content-inner">
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-12">
                <div class="row mt-3">
                    <?php
                        $bg_colors = [
                            'dash-bg-blue',
                            'dash-bg-green',
                            'dash-bg-yellow',
                            'dash-bg-pink',
                            'dash-bg-lime',
                            'dash-bg-brown',
                        ];
                    ?>
                    <?php $__currentLoopData = $statistics; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-md-3 my-3">
                        <div class="card card-hover">
                            <div class="dash-box text-white <?php echo e($bg_colors[$key % count($bg_colors)]); ?>">
                                <h1 class="dash-icon">
                                    <i class="<?php echo e($data['icon']); ?> mb-1 font-16"></i>
                                </h1>
                                <div class="dash-content">
                                    <small class="font-light"><?php echo e(__($data['title'])); ?></small>
                                    <h5 class="mb-0 mt-1"><?php echo e($data['value']); ?></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
                <div class="row my-5">
                    <div class="col-lg-6 my-4">
                        <div class="chart-wrapper margin-top-40">
                            <h2 class="chart-title"><?php echo e(__("Earned Per Month In")); ?> <?php echo e(date('Y')); ?></h2>
                            <canvas id="monthlyEarned"></canvas>
                        </div>
                    </div>
                    <div class="col-lg-6 my-4">
                        <div class="chart-wrapper margin-top-40">
                            <h2 class="chart-title"><?php echo e(__("Earned Per Day In Last 30 Days")); ?></h2>
                           <div>
                               <canvas id="monthlyEarnedPerDay"></canvas>
                           </div>
                        </div>
                    </div>
                    <div class="col-lg-6 my-4">
                        <div class="chart-wrapper margin-top-40">
                            <h2 class="chart-title"><?php echo e(__("Product Order Per Day In Last 30 Days")); ?></h2>
                           <div>
                               <canvas id="monthlyOrderCountPerDay"></canvas>
                           </div>
                        </div>
                    </div>
                    <div class="col-lg-6 my-4">
                        <div class="chart-wrapper margin-top-40">
                            <h2 class="chart-title"><?php echo e(__("Product Sold Per Day In Last 30 Days")); ?></h2>
                           <div>
                               <canvas id="monthlySoldCountPerDay"></canvas>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('assets/backend/js/chart.js')); ?>"></script>
    <script>
        $.ajax({
            url: '<?php echo e(route('admin.home.chart.data')); ?>',
            type: 'POST',
            async: false,
            data: {
                _token : "<?php echo e(csrf_token()); ?>"
            },
            success: function (data) {
                labels = data.labels;
                chartdata = data.data;
                new Chart(
                    document.getElementById('monthlyEarned'),
                    {
                        type: 'bar',
                        data: {
                            labels: data.labels,
                            datasets: [{
                                label: '<?php echo e(__("Amount Earned")); ?>',
                                backgroundColor: '#fcb11a',
                                borderColor: '#f5cb62',
                                data: data.data,
                            }]
                        }
                    }
                );
            }
        });

        $.ajax({
            url: '<?php echo e(route('admin.home.chart.data.by.day')); ?>',
            type: 'POST',
            async: false,
            data: {
                _token : "<?php echo e(csrf_token()); ?>"
            },
            success: function (data) {
                labels = data.labels;
                chartdata = data.data;
                new Chart(
                    document.getElementById('monthlyEarnedPerDay'),
                    {
                        type: 'line',
                        data: {
                            labels: data.labels,
                            datasets: [{
                                label: '<?php echo e(__("Amount Earned")); ?>',
                                backgroundColor: '#15771f',
                                borderColor: '#acefd3',
                                data: data.data,
                            }]
                        },
                    }
                );
            }
        });

        $.ajax({
            url: '<?php echo e(route('admin.home.chart.sale.count.per.day')); ?>',
            type: 'POST',
            async: false,
            data: {
                _token : "<?php echo e(csrf_token()); ?>"
            },
            success: function (data) {
                labels = data.labels;
                chartdata = data.data;
                new Chart(
                    document.getElementById('monthlySoldCountPerDay'),
                    {
                        type: 'line',
                        data: {
                            labels: data.labels,
                            datasets: [{
                                label: '<?php echo e(__("Product Sales")); ?>',
                                backgroundColor: '#15771f',
                                borderColor: '#acefd3',
                                data: data.data,
                            }]
                        },
                    }
                );
            }
        });

        $.ajax({
            url: '<?php echo e(route("admin.home.chart.order.count.per.day")); ?>',
            type: 'POST',
            async: false,
            data: {
                _token : "<?php echo e(csrf_token()); ?>"
            },
            success: function (data) {
                labels = data.labels;
                chartdata = data.data;
                new Chart(
                    document.getElementById('monthlyOrderCountPerDay'),
                    {
                        type: 'line',
                        data: {
                            labels: data.labels,
                            datasets: [{
                                label: '<?php echo e(__("Product Order")); ?>',
                                backgroundColor: '#15771f',
                                borderColor: '#acefd3',
                                data: data.data,
                            }]
                        },
                    }
                );
            }
        });

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\laragon\www\MDUZAIR\zaika\@mdcore\resources\views/backend/admin-home.blade.php ENDPATH**/ ?>