<?php if(session()->has('msg')): ?>
    <div class="alert alert-<?php echo e(session('type')); ?>">
        <?php echo session('msg'); ?>

    </div>
<?php endif; ?>
<?php /**PATH E:\laragon\www\MDUZAIR\zaika\@mdcore\resources\views/components/msg/flash.blade.php ENDPATH**/ ?>