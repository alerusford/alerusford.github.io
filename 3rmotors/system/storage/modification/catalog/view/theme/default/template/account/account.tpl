<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $text_my_account; ?></h2>
      <ul class="list-unstyled">
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $edit; ?>"><img src="catalog/view/theme/default/image/account-images/edit.png" alt="<?php echo $text_edit; ?>" >
<h5><?php echo $text_edit; ?></h5></a></div></div>
<style> .product-thumb { padding-top: 10px; }</style> 
      
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $password; ?>"><img src="catalog/view/theme/default/image/account-images/password.png" alt="<?php echo $text_password; ?>" >
<h5><?php echo $text_password; ?></h5></a></div></div>
      
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $address; ?>"><img src="catalog/view/theme/default/image/account-images/address.png" alt="<?php echo $text_address; ?>" >
<h5><?php echo $text_address; ?></h5></a></div></div>
      
             		
		<div class="col-md-3 text-center"><div class="product-thumb">
			<a href="<?php echo $wishlist; ?>">
				<img src="catalog/view/theme/default/image/account-images/wishlist.png" alt="<?php echo $text_wishlist; ?>" >
				<h5><?php echo $text_wishlist; ?></h5>
			</a>
		</div></div><div class="clearfix"></div>
      
      </ul>
      <?php if ($credit_cards) { ?>
      <h2><?php echo $text_credit_card; ?></h2>
      <ul class="list-unstyled">
        <?php foreach ($credit_cards as $credit_card) { ?>
        <li><a href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a></li>
        <?php } ?>
      </ul>
      <?php } ?>
      <h2><?php echo $text_my_orders; ?></h2>
      <ul class="list-unstyled">
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $order; ?>"><img src="catalog/view/theme/default/image/account-images/orders.png" alt="<?php echo $text_order; ?>" >
<h5><?php echo $text_order; ?></h5></a></div></div>
      
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $download; ?>"><img src="catalog/view/theme/default/image/account-images/download.png" alt="<?php echo $text_download; ?>" >
<h5><?php echo $text_download; ?></h5></a></div></div>
      
        <?php if ($reward) { ?>
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $reward; ?>"><img src="catalog/view/theme/default/image/account-images/reward.png" alt="<?php echo $text_reward; ?>" >
<h5><?php echo $text_reward; ?></h5></a></div></div>
      
        <?php } ?>
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $return; ?>"><img src="catalog/view/theme/default/image/account-images/return.png" alt="<?php echo $text_return; ?>" >
<h5><?php echo $text_return; ?></h5></a></div></div>
      
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $transaction; ?>"><img src="catalog/view/theme/default/image/account-images/trans.png" alt="<?php echo $text_transaction; ?>" >
<h5><?php echo $text_transaction; ?></h5></a></div></div>
      
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $recurring; ?>"><img src="catalog/view/theme/default/image/account-images/payments.png" alt="<?php echo $text_recurring; ?>" >
<h5><?php echo $text_recurring; ?></h5></a></div></div><div class="clearfix"></div>
      
      </ul>
      <h2><?php echo $text_my_newsletter; ?></h2>
      <ul class="list-unstyled">
             		
<div class="col-md-3 text-center"><div class="product-thumb"><a href="<?php echo $newsletter; ?>"><img src="catalog/view/theme/default/image/account-images/newsletter.png" alt="<?php echo $text_newsletter; ?>" >
<h5><?php echo $text_newsletter; ?></h5></a></div></div>
      
      </ul>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 