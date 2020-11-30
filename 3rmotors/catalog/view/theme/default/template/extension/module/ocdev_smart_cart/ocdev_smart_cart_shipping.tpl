<p><?php echo $text_shipping_help; ?></p>
<form class="form-horizontal">
	<select name="smca_country_id" id="smca-input-country">
		<option value=""><?php echo $entry_country; ?></option>
		<?php foreach ($countries as $country) { ?>
		<?php if ($country['country_id'] == $country_id) { ?>
		<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
		<?php } else { ?>
		<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
		<?php } ?>
		<?php } ?>
	</select>
	<select name="smca_zone_id" id="smca-input-zone"></select>
	<input type="text" name="smca_postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="smca-input-postcode" />
	<input type="button" value="<?php echo $button_quote; ?>" id="smca-button-quote" data-loading-text="<?php echo $text_loading; ?>" class="next-step-button" />
</form>
<div id="smca-shipping-result"></div>
<script type="text/javascript"><!--
	$('#smca-button-quote').on('click', function() {
		maskElement('#check-data', true);
		$.ajax({
			url: 'index.php?route=extension/module/ocdev_smart_cart/shipping_quote',
			type: 'post',
			data: 'smca_country_id=' + $('select[name=\'smca_country_id\']').val() + '&smca_zone_id=' + $('select[name=\'smca_zone_id\']').val() + '&smca_postcode=' + encodeURIComponent($('input[name=\'smca_postcode\']').val()),
			dataType: 'json',
			beforeSend: function() {
				$('#smca-button-quote').button('loading');
			},
			complete: function() {
				$('#smca-button-quote').button('reset');
			},
			success: function(json) {
				$('.field-error').remove();

				if (json['error']) {
					if (json['error']['warning']) {
						maskElement('#check-data', false);
						$('#smca-shipping-result').before('<span class="error-text field-error">' + json['error']['warning'] + '</span>');
					}

					if (json['error']['country']) {
						maskElement('#check-data', false);
						$('select[name=\'smca_country_id\']').addClass('error-style').after('<span class="error-text field-error">' + json['error']['country'] + '</span>');
					} else {
						maskElement('#check-data', false);
						$('select[name=\'smca_country_id\']').removeClass('error-style');
					}

					if (json['error']['zone']) {
						maskElement('#check-data', false);
						$('select[name=\'smca_zone_id\']').addClass('error-style').after('<span class="error-text field-error">' + json['error']['zone'] + '</span>');
					} else {
						maskElement('#check-data', false);
						$('select[name=\'smca_zone_id\']').removeClass('error-style');
					}

					if (json['error']['postcode']) {
						maskElement('#check-data', false);
						$('input[name=\'smca_postcode\']').addClass('error-style').after('<span class="error-text field-error">' + json['error']['postcode'] + '</span>');
					} else {
						maskElement('#check-data', false);
						$('input[name=\'smca_postcode\']').removeClass('error-style');
					}
				}


				if (json['shipping_method']) {
					$('#smca-block-shipping').remove();
					$('select[name=\'smca_country_id\']').removeClass('error-style');
					$('select[name=\'smca_zone_id\']').removeClass('error-style');
					$('input[name=\'smca_postcode\']').removeClass('error-style');
					maskElement('#check-data', false);

					html  = '<div id="smca-block-shipping" class="table-responsive">';
					html += '  <p><?php echo $text_smca_shipping_method; ?></p>';
					html += '  <table class="table table-bordered">';
					html += '      <tbody>';
					for (i in json['shipping_method']) {
						if (!json['shipping_method'][i]['error']) {
							for (j in json['shipping_method'][i]['quote']) {
								html += '<tr>';
								html += '  <td class="first-td">';
								if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
									html += '<div><input type="radio" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" name="smca_shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></div>';
								} else {
									html += '<div><input type="radio" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" name="smca_shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></div>';
								}
								html += '  </td>';
								html += '  <td>';
								html += 	'<label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label>';
								html += '  </td>';
								html += '  <td style="text-align: right;">';
								html += 	'<label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label>';
								html += '  </td>';
								html += '</tr>';
							}
						} else {
							html += '<tr><td class="first-td">' + json['shipping_method'][i]['error'] + '</td></tr>';
						}
					}
					html += '      </tbody>';
					html += '  </table>';

					<?php if ($shipping_method) { ?>
						html += '        <input type="button" value="<?php echo $button_shipping; ?>" id="smca-button-shipping" data-loading-text="<?php echo $text_loading; ?>" class="next-step-button" />';
						<?php } else { ?>
							html += '        <input type="button" value="<?php echo $button_shipping; ?>" id="smca-button-shipping" data-loading-text="<?php echo $text_loading; ?>" class="next-step-button" disabled="disabled" />';
							<?php } ?>

							html += '</div> ';

							$('#smca-shipping-result').append(html);

							$('input[name=\'smca_shipping_method\']').on('change', function() {
								$('#smca-button-shipping').prop('disabled', false);
							});
						}
					}
				});
			});

$(document).delegate('#smca-button-shipping', 'click', function() {
	$.ajax({
		url: 'index.php?route=extension/module/ocdev_smart_cart/shipping',
		type: 'post',
		data: 'smca_shipping_method=' + encodeURIComponent($('input[name=\'smca_shipping_method\']:checked').val()),
		dataType: 'json',
		beforeSend: function() {
			$('#smca-button-shipping').button('loading');
		},
		complete: function() {
			$('#smca-button-shipping').button('reset');
		},
		success: function(json) {
			$('.field-error').remove();
			if (json['error']) {
				maskElement('#check-data', false);
				$('#smca-shipping-result').after('<span class="error-text field-error">' + json['error'] + '</span>');
			} else {
				maskElement('#check-data', false);
				$('#smca-shipping-result').after('<span id="smca-shipping-success">' + json['success'] + '</span>').fadeIn();
				$('#smca-shipping-success').delay(3000).fadeOut();
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
	$('select[name=\'smca_country_id\']').on('change', function() {
		$.ajax({
			url: 'index.php?route=extension/total/shipping/country&country_id=' + this.value,
			dataType: 'json',
			beforeSend: function() {
				$('select[name=\'smca_country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
			},
			complete: function() {
				$('.fa-spin').remove();
			},
			success: function(json) {
				if (json['postcode_required'] == '1') {
					$('input[name=\'smca_postcode\']').parent().parent().addClass('required');
				} else {
					$('input[name=\'smca_postcode\']').parent().parent().removeClass('required');
				}

				html = '<option value=""><?php echo $entry_zone; ?></option>';

				if (json['zone'] && json['zone'] != '') {
					for (i = 0; i < json['zone'].length; i++) {
						html += '<option value="' + json['zone'][i]['zone_id'] + '"';

						if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
							html += ' selected="selected"';
						}

						html += '>' + json['zone'][i]['name'] + '</option>';
					}
				} else {
					html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
				}

				$('select[name=\'smca_zone_id\']').html(html);
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
});

$('select[name=\'smca_country_id\']').trigger('change');
//--></script>
