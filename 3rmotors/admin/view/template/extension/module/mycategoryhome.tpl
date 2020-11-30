<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-mycategoryhome" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title2; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-mycategoryhome" class="form-horizontal">

		  
		<div class="col-md-6">
		 <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
                  <td class="text-left"><?php echo $column_category; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($mycategories) { ?>
                <?php foreach ($mycategories as $category) { ?>
                <tr>
                  <td class="text-center"><?php if (in_array($category['category_id'], $selected)) { ?>
                    <input type="checkbox" name="mycategoryhome_setting[selected][]" value="<?php echo $category['category_id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="mycategoryhome_setting[selected][]" value="<?php echo $category['category_id']; ?>" />
                    <?php } ?></td>
                  <td class="text-left"><?php echo $category['name']; ?></td>
				</tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="4"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
		 </div>
		  
	<div class="col-md-6">
		<div class="form-group">
			<div class="col-sm-4">
			<label class="control-label"> <?php echo $entry_status; ?></label>
			</div>
			<div class="col-sm-8">
				<select name="mycategoryhome_status" id="input-status" class="form-control">
					<?php if ($mycategoryhome_status) { ?>
					<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
					<option value="0"><?php echo $text_disabled; ?></option>
					<?php } else { ?>
					<option value="1"><?php echo $text_enabled; ?></option>
					<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
					<?php } ?>
				</select>
			</div>
		</div>
		 
		<div class="form-group">
		  <div class="col-sm-4">
			 <label class="control-label" ><?php echo $size; ?></label>
		  </div>
		  <div class="col-sm-4">
			<input type="text" name="mycategoryhome_setting[size_w]" class="form-control" value = "<?php echo $size_w; ?>" >
		  </div>
		  <div class="col-sm-4">
			<input type="text" name="mycategoryhome_setting[size_h]" class="form-control" value = "<?php echo $size_h; ?>">
		  </div>
		</div>
		
		
			<div class="form-group">
				<div class="col-sm-4">
				<label class="control-label"> <?php echo $text_chicati; ?></label>
				</div>
				<div class="col-sm-8">
					<select name="mycategoryhome_setting[chicati]" id="input-status" class="form-control">
						<?php if ($chicati) { ?>
						<option value="1" selected="selected"><?php echo $text_yes; ?></option>
						<option value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_yes; ?></option>
						<option value="0" selected="selected"><?php echo $text_no; ?></option>
						<?php } ?>
					</select>
				</div>
			</div>
		
		 
	</div>
		  
		  
        </form>
      </div>
    </div>
  </div>
   <div class="container-fluid">
   <div class="panel-default panel-body text-center">My Category Home (Категории на главной) ver 1.1 @ <a href="http://My2You.ru">My2You </a></div>
   </div>
</div>
<?php echo $footer; ?>