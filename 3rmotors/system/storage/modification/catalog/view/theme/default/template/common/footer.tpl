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


				<style type="text/css">
					#cookie_consent_notification,
					#cookie_consent_notification *,
					#cookie_consent_notification *:before,
					#cookie_consent_notification *:after {
						font-family: inherit;
						font-weight: 300;
						font-size: 16px;
						line-height: 1.6;
						-webkit-box-sizing: border-box;
						-moz-box-sizing: border-box;
						box-sizing: border-box;
					}
					#cookie_consent_notification {
						position: fixed;
						top: auto;
						left: 0;
						right: auto;
						bottom: 0;
						margin: 0;
						padding: 8px 24px;
						color: white;
						background: rgba(0,0,0,.9);
						z-index: 999999;
						width: 100%;
						text-align: center;
						-webkit-transition: all ease-out 0.3s;  
						-moz-transition: all ease-out 0.3s;
						-ms-transition: all ease-out 0.3s; 
						-o-transition: all ease-out 0.3s;
						transition: all ease-out 0.3s;  
						-webkit-transform: translate3d(0,100%,0);
						-moz-transform: translate3d(0,100%,0);
						-ms-transform: translate3d(0,100%,0);
						-o-transform: translate3d(0,100%,0);
						transform: translate3d(0,100%,0);
						-webkit-backface-visibility: hidden; /* Chrome, Safari, Opera */
						backface-visibility: hidden;
					}
					#cookie_consent_notification.active {
						-webkit-transform: translate3d(0,0,0);
						-moz-transform: translate3d(0,0,0);
						-ms-transform: translate3d(0,0,0);
						-o-transform: translate3d(0,0,0);
						transform: translate3d(0,0,0);
					}
					#cookie_consent_notification .disable_cookie_consent_notification {
						display: inline-block;
						text-decoration: none;
						text-align: center;
						/*font-weight: bold;*/
						margin: 0 10px;
						padding: 0 6px;
						color: #229ac8;
					}
				</style>
				<script type="text/javascript">
				(function($) {
					(function(g,f){"use strict";var h=function(e){if("object"!==typeof e.document)throw Error("Cookies.js requires a `window` with a `document` object");var b=function(a,d,c){return 1===arguments.length?b.get(a):b.set(a,d,c)};b._document=e.document;b._cacheKeyPrefix="cookey.";b._maxExpireDate=new Date("Fri, 31 Dec 9999 23:59:59 UTC");b.defaults={path:"/",secure:!1};b.get=function(a){b._cachedDocumentCookie!==b._document.cookie&&b._renewCache();return b._cache[b._cacheKeyPrefix+a]};b.set=function(a,d,c){c=b._getExtendedOptions(c); c.expires=b._getExpiresDate(d===f?-1:c.expires);b._document.cookie=b._generateCookieString(a,d,c);return b};b.expire=function(a,d){return b.set(a,f,d)};b._getExtendedOptions=function(a){return{path:a&&a.path||b.defaults.path,domain:a&&a.domain||b.defaults.domain,expires:a&&a.expires||b.defaults.expires,secure:a&&a.secure!==f?a.secure:b.defaults.secure}};b._isValidDate=function(a){return"[object Date]"===Object.prototype.toString.call(a)&&!isNaN(a.getTime())};b._getExpiresDate=function(a,d){d=d||new Date; "number"===typeof a?a=Infinity===a?b._maxExpireDate:new Date(d.getTime()+1E3*a):"string"===typeof a&&(a=new Date(a));if(a&&!b._isValidDate(a))throw Error("`expires` parameter cannot be converted to a valid Date instance");return a};b._generateCookieString=function(a,b,c){a=a.replace(/[^#$&+\^`|]/g,encodeURIComponent);a=a.replace(/\(/g,"%28").replace(/\)/g,"%29");b=(b+"").replace(/[^!#$&-+\--:<-\[\]-~]/g,encodeURIComponent);c=c||{};a=a+"="+b+(c.path?";path="+c.path:"");a+=c.domain?";domain="+c.domain: "";a+=c.expires?";expires="+c.expires.toUTCString():"";return a+=c.secure?";secure":""};b._getCacheFromString=function(a){var d={};a=a?a.split("; "):[];for(var c=0;c<a.length;c++){var e=b._getKeyValuePairFromCookieString(a[c]);d[b._cacheKeyPrefix+e.key]===f&&(d[b._cacheKeyPrefix+e.key]=e.value)}return d};b._getKeyValuePairFromCookieString=function(a){var b=a.indexOf("="),b=0>b?a.length:b;return{key:decodeURIComponent(a.substr(0,b)),value:decodeURIComponent(a.substr(b+1))}};b._renewCache=function(){b._cache= b._getCacheFromString(b._document.cookie);b._cachedDocumentCookie=b._document.cookie};b._areEnabled=function(){var a="1"===b.set("cookies.js",1).get("cookies.js");b.expire("cookies.js");return a};b.enabled=b._areEnabled();return b},e="object"===typeof g.document?h(g):h;"function"===typeof define&&define.amd?define(function(){return e}):"object"===typeof exports?("object"===typeof module&&"object"===typeof module.exports&&(exports=module.exports=e),exports.Cookies=e):g.Cookies=e})("undefined"===typeof window? this:window);
					$(document).ready(function($) {
						var show_notification = true;
						var html = '<div id="cookie_consent_notification">';
								html += 'Cайт использует файлы cookie для улучшения вашего пользовательского интерфейса.';
								html += '<a href="javascript:void(0);" class="disable_cookie_consent_notification">';
								html += 'Согласен!';
							html += '</a><a href="https://support.google.com/accounts/answer/61416?hl=ru" target="_blank" class="disable_cookie">Отключить</a></div>';
						if (typeof Cookies == "undefined" || typeof Cookies != "function") {
							show_notification = false;
						} else if (typeof Cookies.get('disable_cookie_consent_notification') != "undefined" && Cookies.get('disable_cookie_consent_notification') == 'true') {
							show_notification = false;
						}
						if (show_notification) {
							$('body').append(html);
							$('#cookie_consent_notification').addClass('active');
							$('.disable_cookie_consent_notification').on('click', function(event) {
								event.preventDefault();
								$('#cookie_consent_notification').removeClass('active');
								Cookies.set('disable_cookie_consent_notification', 'true');
							});
						}
					});
				})(jQuery);
				</script>
			

					<div id="mistake" class="mfp-hide mistake_popup">
						<header class="magnific_heading">
							<h3><?php echo $mistake_title; ?></h3>
						</header>
						<form id="mistake_form" class="request-form" action="send_mistake.php">
							<fieldset>
								<div style="display:none">
									<input id="mistake_admin_email" type="text" name="admin_email" value="<?php echo $mistake_admin_email; ?>">
								</div>			
								<div style="display:none">
									<input id="mistake_link" type="text" name="mistake_link" value="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>">
								</div>									
								<div style="display:none">
									<input id="mistake_text" type="text" name="mistake_text">
								</div>
								<p id="mistake_text_show"></p>
								<div class="magnific_form_row">
									<input id="mistake_comment" class="form-control" type="text" name="mistake_comment" placeholder="<?php echo $mistake_comment; ?>">
								</div>
								<div class="magnific_form_row magnific_form_submit">
									<input type="submit" value="<?php echo $mistake_send; ?>" class="btn btn-primary">
								</div>
							</fieldset>
						</form>
					</div>
					<div class="mistake_popup-holder">
						<div class="mistake_success_popup">
							<div class="magnific_form_row">
								<p><?php echo $mistake_success; ?></p>
							</div>
						</div>
					</div>
					<script>
						$(document).ready(function() {
							document.onkeypress = getText;
						});
					</script>
            

				<?php if ($buyoneclick_status) { ?>
					<div id="boc_order" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="boc_form" action="" role="form">
									<fieldset>
								<div class="modal-header">
									<button class="close" type="button" data-dismiss="modal">×</button>
									<h2 id="boc_order_title" class="modal-title"><?php echo $buyoneclick_title; ?></h2>
								</div>
								<div class="modal-body">
									<div id="boc_product_field" class="col-xs-12"></div>
									<div class="col-xs-12"><hr /></div>
									<div class="col-xs-12">
										<div style="display:none">
											<input id="boc_admin_email" type="text" name="boc_admin_email" value="<?php echo $buyoneclick_admin_email; ?>">
										</div>
										<div style="display:none">
											<input id="boc_product_id" type="text" name="boc_product_id">
										</div>
										<?php if ($buyoneclick_field1_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field1_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-user" aria-hidden="true"></i></span>
												<input id="boc_name" class="form-control<?php if ($buyoneclick_field1_required) { echo ' required';} ?>" type="text" name="boc_name" placeholder="<?php echo $buyoneclick_field1_title; ?>">
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field2_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field2_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-phone-square" aria-hidden="true"></i></span>
												<input id="boc_phone" class="form-control<?php if ($buyoneclick_field2_required) { echo ' required';} ?>" type="tel" name="boc_phone" placeholder="<?php if ($buyoneclick_validation_status) { echo $buyoneclick_validation_type; } else { echo $buyoneclick_field2_title; } ?>"<?php if ($buyoneclick_validation_status) {echo ' data-pattern="true"';} else {echo ' data-pattern="false"';} ?>>
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field3_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field3_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-envelope" aria-hidden="true"></i></span>
												<input id="boc_email" class="form-control<?php if ($buyoneclick_field3_required) { echo ' required';} ?>" type="email" name="boc_email" placeholder="<?php echo $buyoneclick_field3_title; ?>">
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field4_status) { ?>
											<div class="form-group<?php if ($buyoneclick_field4_required) { echo ' has-warning';} ?>">
												<textarea id="boc_message" class="form-control<?php if ($buyoneclick_field4_required) { echo ' required';} ?>" name="boc_message" rows="3" placeholder="<?php echo $buyoneclick_field4_title; ?>" ></textarea>
											</div>
										<?php } ?>
										<?php if ($buyoneclick_agree_status !=0) { ?>
											<div class="checkbox">
												<label>
													<input id="boc_agree" type="checkbox" name="boc_agree" class="required" value="1"> <?=$buyoneclick_text_agree;?>
												</label>
											</div>
										<?php } ?>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="modal-footer">
									<div class="col-sm-2 hidden-xs">
									</div>
									<div class="col-sm-8 col-xs-12">
										<button type="submit" id="boc_submit" class="btn btn-lg btn-block btn-default"><?php echo $buyoneclick_button_order; ?></button>
									</div>
									<div class="col-sm-2 hidden-xs">
									</div>
								</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
					<div id="boc_success" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-body">
									<div class="text-center"><?php echo $buyoneclick_success_field; ?></div>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript"><!--
					$('.boc_order_btn').on('click', function() {
						$.ajax({
							url: 'index.php?route=common/buyoneclick/info',
							type: 'post',
							data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
							beforeSend: function() {
								$('.boc_order_btn').button('loading');
							},
							complete: function() {
								$('.boc_order_btn').button('reset');
							},
							success: function(data) {
								//console.log(data);
								$('#boc_product_field').html(data);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								console.log(thrownError + " | " + xhr.statusText + " | " + xhr.responseText);
							}
						});
					});
					$('.boc_order_category_btn').on('click', function() {
						var for_post = {};
						for_post.product_id = $(this).attr('data-product_id');
						$.ajax({
							url: 'index.php?route=common/buyoneclick/info',
							type: 'post',
							data: for_post,
							beforeSend: function() {
								$('.boc_order_btn').button('loading');
							},
							complete: function() {
								$('.boc_order_btn').button('reset');
							},
							success: function(data) {
								//console.log(data);
								$('#boc_product_field').html(data);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								console.log(thrownError + " | " + xhr.statusText + " | " + xhr.responseText);
							}
						});
					});					
					//--></script>
				<?php } ?>
				

        <?php
          $customer_groups = isset($smca_form_data['customer_groups']) ? $smca_form_data['customer_groups'] : array();
          $stores = isset($smca_form_data['stores']) ? $smca_form_data['stores'] : array();
        ?>
        <?php if ($smca_form_data['activate'] && !in_array($smca_customer_group_id, $customer_groups) && !in_array($smca_store_id, $stores)) { ?>
        <!-- <?php echo $smca_form_data['front_module_name'].':'.$smca_form_data['front_module_version']; ?> -->
        <script type="text/javascript">
          $(function() {
            $.ajax({
              type: 'get',
              url:  'index.php?route=extension/module/ocdev_smart_cart/cartProducts',
              dataType: 'json',
              success: function(json) {
                // one step
                $.each($("[onclick^='"+json['add_function_selector']+"']"), function() {
                  var product_id = $(this).attr('onclick').match(/[0-9]+/);
                    $(this)
                    .attr('onclick', 'getOCwizardModal_smca(\'' + $(this).attr('onclick').match(/[0-9]+/) + '\',\'' + 'add' + '\');')
                    .addClass('smca-call-button');
                });
                var product_id_in_page = $("input[name='product_id']").val();
                  $('#'+json['add_id_selector'])
                  .unbind('click')
                  .attr('onclick', 'getOCwizardModal_smca(\'' + product_id_in_page + '\',\'' + 'add_option' + '\');');
                // two step
                if (json['cart_products']) {
                  $.each(json['cart_products'], function(i,value) {
                    $('[onclick="getOCwizardModal_smca(\'' + value + '\',\'' + 'add' + '\');"]')
                    .html('<i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md">' + json['text_in_cart'] + '</span>')
                    .attr('onclick', 'getOCwizardModal_smca(\'' + value + '\',\'' + 'load' + '\');');
                    $('[onclick="getOCwizardModal_smca(\'' + value + '\',\'' + 'add_option' + '\');"]')
                    .html(json['text_in_cart'])
                    .attr('onclick', 'getOCwizardModal_smca(\'' + value + '\',\'' + 'load_option' + '\');');
                  });
                }
                if (json['cart_products_vs_options']) {
                  $.each(json['cart_products_vs_options'], function(i,value) {
                    $('[onclick="getOCwizardModal_smca(\'' + value + '\',\'' + 'add' + '\');"]')
                    .html('<i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md">' + json['text_in_cart'] + '</span>');
                    $('[onclick="getOCwizardModal_smca(\'' + value + '\',\'' + 'add_option' + '\');"]')
                    .html(json['text_in_cart_vs_options']);
                  });
                }
              }
            });
          });
          function getOCwizardModal_smca(product_id, action) {
            quantity = typeof(quantity) != 'undefined' ? quantity : 1;
            if (action == "add") {
              $.ajax({
                url: 'index.php?route=checkout/cart/add',
                type: 'post',
                data: 'product_id=' + product_id + '&quantity=' + quantity,
                dataType: 'json',
                success: function(json) {
                  if (json['redirect']) {
                    location = json['redirect'];
                  }
                  if (json['success']) {
                    buttonManipulate();
                    getOCwizardModal_smca(product_id,'load');
                    $('#cart-total').html(json['total']);
                  }
                }
              });
            }

            if (action == "load" || action == "load_option") {
              $.magnificPopup.open({
                tLoading: '<img src="catalog/view/theme/default/stylesheet/ocdev_smart_cart/loading.svg" alt="" />',
                items: {
                  src: 'index.php?route=extension/module/ocdev_smart_cart',
                  type: 'ajax'
                },
                showCloseBtn: false
              });
              $('.mfp-bg').css({
                'background': 'url(image/ocdev_smart_cart/background/<?php echo $smca_form_data['style_beckground']; ?>)',
                'opacity': '<?php echo ($smca_form_data['background_opacity'] == 0) ? $smca_form_data['background_opacity'] : $smca_form_data['background_opacity']/10; ?>'
              });
            }

            if (action == "add_option") {
              $.ajax({
                url: 'index.php?route=checkout/cart/add',
                type: 'post',
                data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
                dataType: 'json',
                beforeSend: function() {
                  $('#button-cart').button('loading');
                },
                complete: function() {
                  $('#button-cart').button('reset');
                },
                success: function(json) {
                  $('.alert, .text-danger').remove();
                  $('.form-group').removeClass('has-error');

                  if (json['error']) {
                    if (json['error']['option']) {
                      for (i in json['error']['option']) {
                        var element = $('#input-option' + i.replace('_', '-'));

                        if (element.parent().hasClass('input-group')) {
                          element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                        } else {
                          element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                        }
                      }
                    }
                    $('.text-danger').parent().addClass('has-error');
                  }
                  if (json['success']) {
                    buttonManipulate();
                    getOCwizardModal_smca(product_id, 'load_option');
                    $('#cart-total').html(json['total']);
                  }
                }
              });
            }
          }
        </script>
        <!-- <?php echo $smca_form_data['front_module_name'].':'.$smca_form_data['front_module_version']; ?> -->
        <?php } ?>
      
</body></html>