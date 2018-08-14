$(document).ready(function() {
    $(".select2").select2({
        'allowClear': true
    });
    var max_fields = 3; //maximum input boxes allowed
    var wrapper_phone = $("#group-phone"); //Fields wrapper
    var wrapper_email = $("#group-email");
    var add_button_phone = $("#input-plus-phone"); //Add button ID
    var add_button_email = $("#input-plus-email");
    var x_email = 1; //initlal text box count
    var x_phone = 1;
    $(add_button_phone).click(function(e) { //on add input button click
        e.preventDefault();
        if (x_email < max_fields) { //max input box allowed
            x_email++; //text box increment
            $(wrapper_phone).append('<div class="input-group" style="margin:7px 0 10px 0"><input type="text" id="" value="" placeholder="Thêm số điện thoại" class="form-control input-small"><span id="input-remove-phone" class="input-group-addon input-remove"> <span class="fa fa-remove"></span> </span></div>'); //add input box
        }
    });

    $(wrapper_phone).on("click", "#input-remove-phone", function(e) { //user click on remove text
        e.preventDefault();
        $(this).parent('div').remove();
        x_email--;
    })
    $(add_button_email).click(function(e) { //on add input button click
        e.preventDefault();
        if (x_phone < max_fields) { //max input box allowed
            x_phone++; //text box increment
            $(wrapper_email).append('<div class="input-group" style="margin:7px 0 10px 0"><input type="text" id="" value="" placeholder="Thêm Email" class="form-control input-small"><span id="input-remove-email" class="input-group-addon input-remove"> <span class="fa fa-remove"></span> </span></div>'); //add input box
        }
    });

    $(wrapper_email).on("click", "#input-remove-email", function(e) { //user click on remove text
        e.preventDefault();
        $(this).parent('div').remove();
        x_phone--;
    })
    $(".css-treeview li").not(':has(ul)').children("label").addClass('no-before');
    $('.date').on("dp.hide", function(e) {
        document.activeElement.blur();
    });
    $('.date').contextmenu(function() {
        return false;
    });
    $('.datet').contextmenu(function() {
        return false;
    });

});
$(function() {
    $('[data-toggle="tooltip"]').tooltip();
});
$('.open-datetimepicker').click(function(event) {
    event.preventDefault();
    $('#datetimepicker').click();

});
$('input.checkid:checkbox').change(function() {
    if ($(this).is(":checked")) {
        $('div.rowid').addClass("menuitemshow");
    } else {
        $('div.rowid').removeClass("menuitemshow");
    }
});
