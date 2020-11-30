<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">

			<div class="box-label">			
			<?php if ($product['jan']) { ?><div class="label-product label_sale"><span><?php echo $product['jan']; ?></span></div><?php } ?>
			<?php if ($product['isbn']) { ?><div class="label-product label_new"><span><?php echo $product['isbn']; ?></span></div><?php } ?>
			<?php if ($product['mpn']) { ?><div class="label-product label_hit"><span><?php echo $product['mpn']; ?></span></div><?php } ?>	
			</div>			
			
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption" style="min-height: 165px;">
        <h4 style="text-align:center;"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        
        <div class="manufacturer"><?php echo $product['manufacturer'];?></div>
        <div class="model"><?php echo $product['model'];?></div>
         
        
        <!-- <p><?php //echo $product['description']; ?></p> -->
        
        
        <?php //if ($product['rating']) { ?>
        <!-- <div class="rating"> -->
          <?php //for ($i = 1; $i <= 5; $i++) { ?>
          <?php //if ($product['rating'] < $i) { ?>
         <!-- <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> -->
          <?php //} else { ?>
          <!-- <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> -->
          <?php //} ?>
          <?php //} ?>
        <!-- </div> -->
        <?php //} ?>
        
        
       
        <?php if ($product['price']) { ?>
        <div class="price">
            <!-- <p class="price h3 text-center"> -->
            <p class="">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span><br>
          <span class="price-old"><?php echo $product['price']; ?></span>  
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        </div>
        
        <div class="stock_status">
            <?php
                if ($product['quantity'] > 0) 
                {
                echo ('В наличии: ' . $product['quantity']);
                } 
                else {
                echo $product['stock_status'];
                }
                ?>
       
        </div>
        
        
        
        
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fas fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fas fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fas fa-exchange"></i></button>
      </div>
				<?php if ($buyoneclick_status_module) { ?>
					<button type="button" class="btn-block boc_order_category_btn" <?php if ($buyoneclick_ya_status || $buyoneclick_google_status) { ?> onClick="clickAnalytic(); return true;" <?php } ?> data-toggle="modal" data-target="#boc_order" data-product="<?php echo $product['name'] ?>" data-product_id="<?php echo $product['product_id']; ?>"><?php echo $buyoneclick_name; ?></button>
				<?php } ?>
    </div>
  </div>
  <?php } ?>
</div>