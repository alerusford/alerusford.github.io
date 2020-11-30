<h3><?php echo $heading_title; ?></h3>
<div class="row product-layout">
	<?php foreach ($categories as $mycategory) { ?>
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="mycategory product-thumb transition">
			<div class="image"><a href="<?php echo $mycategory['href']; ?>"><img src="<?php echo $mycategory['image']; ?>" alt="<?php echo $mycategory['name']; ?>" title="<?php echo $mycategory['name']; ?>" class="img-responsive" /></a></div>
			<div class="caption cap-mycategory">
				<h4><a href="<?php echo $mycategory['href']; ?>"><?php echo $mycategory['name']; ?></a></h4>
			</div>

			<?php if ($mycategory['children']) { ?>
			<div class="child">
				<h4><a href="<?php echo $mycategory['href']; ?>"><?php echo $mycategory['name']; ?></a></h4>
				<ul class="list-unstyled">
					<?php foreach ($mycategory['children'] as $key => $chicategory) { ?>
						<?php if ($key < 9)  { ?>  <li><a href="<?php echo $chicategory['href']; ?>"><?php echo $chicategory['name']; ?></a></li>  <?php } ?>
					<?php } ?>
					<?php if ($key >= 9)  { ?>  <li><a href="<?php echo $mycategory['href']; ?>"><?php echo $all; ?></a></li>  <?php } ?>
				</ul>
			</div>
			<?php } ?>
		</div>
	</div>
	<?php } ?>
</div>