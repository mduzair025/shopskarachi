<?php if(session()->has('msg')): ?>
    <div class="alert alert-<?php echo e(session('type')); ?>">
        <?php echo purify_html(session('msg')); ?>

    </div>
<?php endif; ?>
<?php /**PATH E:\laragon\www\MDUZAIR\zaika\@mdcore\resources\views/backend/partials/message.blade.php ENDPATH**/ ?>