jQuery(function($){
        $('#bulletLooper').on('shown', function(e){
            $('.looper-nav > li', this)
                    .removeClass('active')
                    .eq(e.relatedIndex)
                        .addClass('active');
        });
    });
