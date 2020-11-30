<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-4 text-center">
        <h5><i class="fas fa-info" style="font-size: 12px"></i> <?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <!-- <div class="col-sm-3">
        <h5><?php //echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php //echo $contact; ?>"><?php //echo $text_contact; ?></a></li>
          
          <li><a href="<?php //echo $sitemap; ?>"><?php //echo $text_sitemap; ?></a></li>
        </ul>
      </div> -->
      <div class="col-sm-4 text-center">
        <h5><i class="fas fa-recycle" style="font-size: 12px;"></i> <?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <!-- <li><a href="<?php //echo $voucher; ?>"><?php //echo $text_voucher; ?></a></li> -->
          <!-- <li><a href="<?php //echo $affiliate; ?>"><?php //echo $text_affiliate; ?></a></li> -->
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-4 text-center">
        <h5><i class="fas fa-user" style="font-size: 12px"></i> <?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <div class="row text-center">
        
    <!--<div class="col-sm-4">
        <ul class="list-unstyled">
        <li class="footer_phone">8 (496) 618-02-09</li>
        <li class="footer_phone">8 (916) 651-08-88 - Автотехцентр</li>
        <li class="footer_phone">8 (916) 651-09-99 - Автозапчасти</li>
        </ul>
    </div>-->
    
    <div class="col-sm-3">
        <ul class="list-unstyled" style="padding-top:10px">
        <li class="footer_phone" style="font-size:16px"><a href="tel:+74966180209">8 (496) 618-02-09</a></li>
        <li class="footer_phone"><a href="tel:+79166510888">8 (916) 651-08-88</a></li>
        <li class="footer_phone"><a href="tel:+79166510999">8 (916) 651-09-99</a></li>
        </ul>
    </div>
    
    <div class="col-sm-3">
        <ul class="list-unstyled" style="padding-top:10px">
        <li class="time_work_footer">ПН - СБ: 9:00 - 19:00</li>
        <li class="time_work_footer">ВС: выходной день</li>
        <li class="time_work_footer">г. Коломна, ул. Астахова, д. 2Б</li>
        </ul>
    </div>
    

    
    
    <div class="col-sm-3 hidden-xs" style="padding-top:10px">
        <ul class="list-unstyled">
        <li class="enter"><?php echo $mistake_main_text;?></li>
        </ul>
    </div>
    
    <div class="col-sm-3">
        
        <ul class="socialIcons">
            <li><a href="https://vk.com/vizit_auto_kolomna" class="vk"><i class="fab fa-vk"></i></a></li>
            <li><a href="https://www.instagram.com/vizit_auto_kolomna/" class="instagram"><i class="fab fa-instagram"></i></a></li>
            <li><a href="https://ok.ru/vizit.auto.kolomna" class="odnoklassniki"><i class="fab fa-odnoklassniki"></i></a></li>
            <li><a href="viber://add?number=79166510888" class="viber"><i class="fab fa-viber"></i></a></li>
            <li><a href="https://wapp.click/79166510888" class="whatsapp"><i class="fab fa-whatsapp"></i></a></li>
        </ul>
        
        <ul class="list-unstyled" style="padding-top:0px">
            <li class="visa"><img src="/vizitshop/image/catalog/accept-payment.png" alt="Способы оплаты" style="width:260px"></li>
        </ul>
        
        
            
        
            
            
        
    </div>
    
    
    </div>
    
    
    <hr>
    <p class="text-center"><?php echo $powered; ?></p>
    <p class="text-center" style="font-size:8px">Обращаем ваше внимание на то, что данный интернет-сайт носит исключительно информационный характер и ни при каких условиях не является публичной офертой, определяемой положениями ч. 2 ст. 437 Гражданского кодекса Российской Федерации. Для получения подробной информации о стоимости и сроках выполнения услуг, пожалуйста, обращайтесь непосредственно к специалистам компании.</p>
    
    
  </div>
</footer>

<script src="/catalog/view/javascript/platform.js" defer></script>
<div class="elfsight-app-e55c958c-ec17-4178-b9f0-b21000cad2c5 hidden-xs"></div>

</body></html>