<div class="container">
		<h2><?php echo $this->lang->line('tool_component_builder');?></h2>
        <ul class="nav nav-tabs" id="auth_tab" style="margin-bottom: 0px;">
            <li class="active"><a href="<?php echo base_url(); ?>admin/component/builder"> <?php echo $this->lang->line('components'); ?> </a></li>
            <li><a href="<?php echo base_url(); ?>admin/component/groups"> <?php echo $this->lang->line('group_component'); ?> </a></li>
            <li><a href="<?php echo base_url(); ?>admin/table/index"><?php echo $this->lang->line('table_builder'); ?></a></li>
            <li><a href="<?php echo base_url(); ?>admin/language/index"> <?php echo $this->lang->line('language_manager'); ?> </a></li>
        </ul>
        <?php echo $content; ?>
    </div>