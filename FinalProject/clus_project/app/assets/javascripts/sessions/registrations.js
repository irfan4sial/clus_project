com.appsgenii.UsersRegistrationsNew ={
    init: function(){
        console.log("registration create");
        self = this;
        //self.validate_login_form();
    },
    validate_login_form: function(){
        $('#new_user').validate({
            rules: {
                'user[email]':{
                    required: true,
                    remote: "/homes/verify_email"
                },
                'user[password]': {
                    required: true
                }
            },
            messages: {
                'user[email]':{
                    required: 'Email required',
                    remote: 'Email not found'
                },
                'user[password]': {
                    required: "Password can't empty."
                }

            }
        });
    }
}
