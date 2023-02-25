<?php if(session()->has('msg')): ?>
    <div class="alert alert-<?php echo e(session('type')); ?>">
        <?php echo Purifier::clean(session('msg')); ?>

    </div>
<?php endif; ?>
<?php /**PATH E:\laragon\www\MDUZAIR\zaika\@mdcore\resources\views/components/msg/success.blade.php ENDPATH**/ ?>