<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

<!-- <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> -->
<!-- <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'> -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->



<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /> -->
<link href="https://fonts.googleapis.com/css?family=Arsenal&display=swap" rel="stylesheet"> 
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/gamburger.css">
<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/tooltip.css">
<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/soc.css">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script> -->
<link href="catalog/view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- <script src="http://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> -->
 <link href="https://fonts.googleapis.com/css?family=El+Messiri&display=swap" rel="stylesheet"> 
 <!-- <script src="catalog/view/javascript/ocen.js" type="text/javascript"></script> -->
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>

        <!-- <script src="catalog/view/javascript/scroll.js" type="text/javascript"></script>
        <link rel="stylesheet" href="catalog/view/javascript/scroll/includes/style.css">
        <link rel="stylesheet" href="catalog/view/javascript/scroll/includes/prettify/prettify.css">
        <link rel="stylesheet" href="catalog/view/javascript/scroll/jquery.scrollbar.css">
        <script type="text/javascript" src="catalog/view/javascript/scroll/includes/prettify/prettify.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/scroll/includes/jquery.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/scroll/jquery.scrollbar.js"></script> -->

<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(57590191, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/57590191" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

</head>
<body class="<?php echo $class; ?>">


<nav id="top">
<div class="container">
    <?php //echo $currency; ?>
    <?php //echo $language; ?>
    
   
      
      <!-- <div class="con-tooltip bottom">
          <p> Телефоны </p>
              <div class="tooltip ">
                    <p><i class="fa fa-clock-o" aria-hidden="true"></i> ПН-СБ: 9:00 - 19:00</p>
                    <p><i class="fa fa-clock-o" aria-hidden="true"></i> ВС: выходной день</p>
              </div>
      </div> -->
    <!-- </div> -->
    
    
    
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <!-- <li><a href="<?php //echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $telephone; ?></span></li> -->
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">

            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></span></a></li>
            <!-- <li><a href="<?php //echo $download; ?>"><?php //echo $text_download; ?></a></li> -->
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        
<!--         <li><a href="<?php //echo $shopping_cart; ?>" title="<?php //echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_shopping_cart; ?></span></a></li> -->
<!--         <li><a href="<?php //echo $checkout; ?>" title="<?php //echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_checkout; ?></span></a></li> -->
      </ul>

    </div>




<!--   <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
  <?php //if ($logged) { ?>
  <a class="dropdown-item" href="<?php //echo $account; ?>"><?php //echo $text_account; ?></a>
  <a class="dropdown-item" href="<?php //echo $order; ?>"><?php //echo $text_order; ?></a>
  <a class="dropdown-item" href="<?php //echo $transaction; ?>"><?php //echo $text_transaction; ?></a>
  <a class="dropdown-item" href="<?php //echo $download; ?>"><?php //echo $text_download; ?></a>
  <a class="dropdown-item" href="<?php //echo $logout; ?>"><?php //echo $text_logout; ?></a>
  <?php //} //else { ?>
  <a class="dropdown-item" href="<?php //echo $register; ?>"><?php //echo $text_register; ?></a>
  <a class="dropdown-item" href="<?php //echo $login; ?>"><?php //echo $text_login; ?></a>
  <?php //} ?>
  
</div> -->

<div class="con-tooltip hidden-xs" style="padding-top:9px;">
            <p><i class="fas fa-map-marker-alt"></i> г. Коломна, ул. Астахова, д. 2Б  | </p>
</div>

<div class="con-tooltip hidden-xs" style="padding-top:9px;">
            <p><i class="fas fa-clock"></i> ПН-СБ: 9:00 - 19:00 | </p>
        <!-- <div class="tooltip hidden-xs hidden-sm hidden-md">
            <p>Без обеда</p>
            <p>ВС: выходной день</p>
        </div>    -->   
</div>

<div class="con-tooltip bottom hidden-xs" style="padding-top:9px;">
            <p><i class="fas fa-phone-alt"></i> +7 (496) 618-02-09</p>
        <div class="tooltip hidden-xs hidden-sm hidden-md" style="width:150px;text-align:center">
            <p>+7 (916) 651-08-88</p>
            <p>+7 (916) 651-09-99</p>
            <p>mail@vizit-auto.ru</p>
        </div>        
</div>




</nav> 












<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-2">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      
      

   








      <div class="col-sm-7">
          <div class="col-sm-12"><?php echo $search; ?>
              
               
               
               
      <!-- <div id="anim">
        <span class="tooltip" data-tooltip="username must consist of 29 symbols." style="color:#000">ПН-СБ: 9:00-19:00</span>
      </div> -->
 
     
<!--     <div class="row hidden-xs hidden-sm hidden-md">
  <div class="con con-tooltip col-sm-6" style="left:0">
      <p><big>ПН-СБ: 9:00-19:00</big></p>
          <div class="tooltip top">
              <p>ВС: выходной день</p>
          </div>
  </div>
  
  <div class="con con-tooltip col text-center">
      <p><big>г.Коломна, ул.Астахова, 2Б</big></p>
          
  </div>
</div> -->
      <!-- <div class="con-tooltip bottom">
          <p><big>г.Коломна, ул.Астахова, 2Б</big></p>
              <div class="tooltip top ">
                  
                  <p>ВС: выходной день</p>
              </div>
      </div> -->
      
      <!-- <div class="clock"><i class="fa fa-clock-o" aria-hidden="true"></i> ПН-СБ: 9:00 - 19:00</div>
      <div class="clock" style="padding-left:20px;">ВС: выходной день</div>
      <div class="clock" style=""><i class="fa fa-map-marker" aria-hidden="true"></i><big>  г.Коломна, ул. Астахова, 2Б</big></div> -->
      
      
      
      </div>
       </div> 
      
      <div class="col-sm-3">
      <!-- <div class="telephone"><i class="fa fa-phone" aria-hidden="true"></i><b> +7 (496) 618-02-09</b></div>
        <div class="telephone"><i class="fa fa-phone" aria-hidden="true"></i><b> +7 (916) 651-08-88</b></div>
        <div class="telephone"><i class="fa fa-phone" aria-hidden="true"></i><b> +7 (916) 651-09-99</b></div> -->
      <div class="col-sm-12"><?php echo $cart; ?>
<!--         <div class="con text-center">
<div class="con-tooltip left">
  <p><big>+7 (496) 618-02-09</big></p>
      <div class="tooltip hidden-xs hidden-sm hidden-md">
          
          <p>+7 (916) 651-08-88</p>
          <p>+7 (916) 651-09-99</p>
          
          <p>mail@vizit-auto.ru</p>
      </div>
      </div>
</div> -->
      </div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>

<!-- МОБИЛЬНАЯ КНОПКА МЕНЮ -->
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs" data-target=".navbar-ex1-collapse" data-target=".navbar-ex1-collapse"><?php echo $text_category; ?></span>
      
             <div class="gamburger">
                  <input type="checkbox" id="checkbox4" class="checkbox4 visuallyHidden " data-toggle="collapse" data-target=".navbar-ex1-collapse">
				                    <label for="checkbox4">
                                        <div class="hamburger hamburger4 visible-xs">
				                            <span class="bar bar1"></span>
				                            <span class="bar bar2"></span>
				                            <span class="bar bar3"></span>
				                            <span class="bar bar4"></span>
				                            <span class="bar bar5"></span>
				                        </div>
                                      </label>
            </div>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php //echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>




<?php } ?>
