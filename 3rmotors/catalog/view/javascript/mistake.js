$(document).ready(function() {
	
    $("#mistake_form").submit(function(event) {
		var action = $(this).attr("action");
		var sendingForm = $(this);
		var submit_btn = $(this).find("input[type=submit]");
		var value_text = $(submit_btn).attr("value");
		console.log($(event.target).serializeArray());
		var waiting_text = $(submit_btn).attr("data-wait-text");
		$.ajax({
			type: "POST",
			url: action,
			data: $(event.target).serializeArray(),
			beforeSend:function(){
				$(submit_btn).prop( "disabled", true );
				$(submit_btn).addClass("waiting").val("Sending");
			},
			success: function(msg,status){
				$(sendingForm).trigger('reset');
				$(submit_btn).removeClass("waiting");
				$(submit_btn).val(value_text);
				$(submit_btn).prop( "disabled", false );
				$("#mistake").magnificPopup("close");
				$(".mistake_popup-holder").slideDown( 300 ).delay( 3000 ).slideUp( 300 );
			},
			error: function(){
				$(submit_btn).prop( "disabled", false );
				$(submit_btn).removeClass("waiting").val("Error");
			}

		});
		event.preventDefault();
    });	

});
function getText(e) 
{
	if (!e) e = window.event; 
	if(((e.ctrlKey) && ((e.keyCode==10)||(e.keyCode==13))) || ((e.metaKey) && ((e.keyCode==10)||(e.keyCode==13)))) {
		var sel = mis_get_sel_text();
		if (sel.selected_text.length > 300) {
			alert('Можно выделить не более 300 символов!');
		}
		else if (sel.selected_text.length == 0) {
			alert('Выделите ошибку!');
		}
		else {
		  mis = mis_get_sel_context(sel);
		}		
		//console.log(mis);
		$("#mistake_form").find('input[name="mistake_text"]').val(mis);
		$("#mistake_form").find('#mistake_text_show').html(mis);
		$.magnificPopup.open({
		  items: {
		    src: '#mistake'
		  },
		  type: 'inline'
		});
	}
	return true;
}	

function mis_get_sel_context(sel) {
  selection_start = sel.selection_start;
  selection_end = sel.selection_end;
  if (selection_start > selection_end) {
    tmp = selection_start;
    selection_start = selection_end;
    selection_end = tmp;
  }
  
  context = sel.full_text;

  context_first = context.substring(0, selection_start);
  context_second = context.substring(selection_start, selection_end);
  context_third = context.substring(selection_end, context.length);
  context = context_first + '<b>' + context_second + '</b>' + context_third;
  
  context_start = selection_start - 60;
  if (context_start < 0) {
    context_start = 0;
  }

  context_end = selection_end + 60;
  if (context_end > context.length) {
    context_end = context.length;
  }

  context = context.substring(context_start, context_end);

  context_start = context.indexOf(' ') + 1;

  if (selection_start + 60 < context.length) {
    context_end = context.lastIndexOf(' ', selection_start + 60);
  }
  else {
    context_end = context.length;
  }

  selection_start = context.indexOf('<strong>');
  if (context_start > selection_start) {
    context_start = 0;
  }

  if (context_start) {
    context = context.substring(context_start, context_end);
  }

  return context;
}
	
function mis_get_sel_text(){
   if (window.getSelection) {
    txt = window.getSelection();
    selected_text = txt.toString();
    full_text = txt.anchorNode.textContent;
    selection_start = txt.anchorOffset;
    selection_end = txt.focusOffset;
  }
  else if (document.getSelection) {
    txt = document.getSelection();
    selected_text = txt.toString();
    full_text = txt.anchorNode.textContent;
    selection_start = txt.anchorOffset;
    selection_end = txt.focusOffset;
  }
  else if (document.selection) {
    txt = document.selection.createRange();
    selected_text = txt.text;
    full_text = txt.parentElement().innerText;

    var stored_range = txt.duplicate();
    stored_range.moveToElementText(txt.parentElement());
    stored_range.setEndPoint('EndToEnd', txt);
    selection_start = stored_range.text.length - txt.text.length;
    selection_end = selection_start + selected_text.length;
  }
  else {
    return;
  }
  var txt = {
    selected_text: selected_text,
    full_text: full_text,
    selection_start: selection_start,
    selection_end: selection_end
  };
  return txt;
}