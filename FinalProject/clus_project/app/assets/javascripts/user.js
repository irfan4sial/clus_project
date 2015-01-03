$(document).ready(function(){
    $("#login_btn_id").on('click','',function(){

        //$('#crop-image-modal').modal();
    });
    $('#new_user').validate({
        rules: {
            'user[email]':{
                required: function(){alert("dsffsdf")}
            }
        },
        messages: {
            'user[email]':{
                required: 'Email required'
            }
        }
    });
});