
$(document).ready(function(){
    jQuery(".best_in_place").best_in_place();
    $('#show_editor').on("click", "", function(){
        CKEDITOR.replace('show_editor');
    });
    $('.new_home').validate({
        rules: {
            'home[name]': {
                required: true
            }
        },
        messages:{
            'home[name]':{
                required: "Please enter name"
            }
        }
    });
});
