com.appsgenii.HomesEdit={
    init: function(){
        self = this;
        self.validate_home_form();
    },
    validate_home_form: function(){
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
    }
}