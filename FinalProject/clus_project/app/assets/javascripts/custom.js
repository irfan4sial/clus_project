$(document).ready(function(){
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