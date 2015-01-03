


CarrierWaveCropper ={

    init: function(caption){
        self = this;
        self.caption = caption;
        alert(caption+'_cropbox');
        alert(self.caption);
        $(caption+'_cropbox').Jcrop({

            aspectRatio: 1,
            setSelect: [0, 0, 200, 200],
            onSelect: function(coords){self.update(coords)},
            onChange: function(coords){self.update(coords)}
        })
    },

    init_landscape: function(caption){
        self = this;
        self.caption = caption;
        $(caption+'_cropbox').Jcrop({
            aspectRatio: 600/400,
            setSelect: [0, 0, 600, 400],
            onSelect: function(coords){self.update_landscape(coords)},
            onChange: function(coords){self.update_landscape(coords)}
        })
    },
    update: function(coords){
        alert("update")
        $(self.caption+'_crop_x').val(coords.x)
        $(self.caption+'_crop_y').val(coords.y)
        $(self.caption+'_crop_w').val(coords.w)
        $(self.caption+'_crop_h').val(coords.h)
        self.updatePreview(coords)
    },
    updatePreview: function(coords){
        $(self.caption+'_previewbox').css({
            "width": Math.round(100/coords.w * $(self.caption+'_cropbox').width()) + 'px',
            "height": Math.round(100/coords.h * $(self.caption+'_cropbox').height()) + 'px',
            "marginLeft": '-' + Math.round(100/coords.w * coords.x) + 'px',
            "marginTop": '-' + Math.round(100/coords.h * coords.y) + 'px'})
    },
    update_landscape: function(coords){
        $(self.caption+'_crop_x').val(coords.x)
        $(self.caption+'_crop_y').val(coords.y)
        $(self.caption+'_crop_w').val(coords.w)
        $(self.caption+'_crop_h').val(coords.h)
        self.updatePreview(coords)
    },
    updatePreview_landscape: function(coords){
        $(self.caption+'_previewbox').css({
            "width": Math.round(100/coords.w * $(self.caption+'_cropbox').width()) + 'px',
            "height": Math.round(100/coords.h * $(self.caption+'_cropbox').height()) + 'px',
            "marginLeft": '-' + Math.round(100/coords.w * coords.x) + 'px',
            "marginTop": '-' + Math.round(100/coords.h * coords.y) + 'px'})
    }
}
;
