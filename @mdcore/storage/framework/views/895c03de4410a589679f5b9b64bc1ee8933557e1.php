<form action="<?php echo e($route); ?>" method="post" style="display: inline-block">
    <?php echo csrf_field(); ?>
    <input type="hidden" name="item_id" value="<?php echo e($id); ?>">
    <button type="submit" title="<?php echo e(__('clone this to new draft')); ?>"
            class="btn btn-xs btn-secondary btn-sm mb-3 mr-1">
        <i class="far fa-copy"></i>
    </button>
</form>
<?php /**PATH E:\laragon\www\MDUZAIR\zaika\@mdcore\resources\views/components/table/btn/clone.blade.php ENDPATH**/ ?>