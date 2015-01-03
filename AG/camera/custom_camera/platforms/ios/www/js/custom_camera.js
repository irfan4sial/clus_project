//
//  custom_camera.js
//  CustomCamera
//
//  Created by Imran on 11/09/2014.
//
//

#include <stdio.h>
var CustomCamera = {
getPicture: function(success, failure){
    cordova.exec(success, failure, "CustomCamera", "openCamera", []);
}
};
