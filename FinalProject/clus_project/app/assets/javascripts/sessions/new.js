com.appsgenii.UsersSessionsNew ={
    init: function(){
        console.log("session create");
        self = this;
        self.validate_login_form();
    },
    validate_login_form: function(){
        $('#sign_in_user').validate({
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
