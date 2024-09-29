window.onload = function() {
    // TODO:: Do your initialization job

    // add eventListener for tizenhwkey
    document.addEventListener('tizenhwkey', function(e) {
        if (e.keyName === "back") {
            try {
                tizen.application.getCurrentApplication().exit();
            } catch (ignore) {}
        }
    });

    // Sample code
    var mainPage = document.querySelector('#main');
    
    jQuery(function() {
        jQuery.getFeed({
            url: 'rss/sample.xml',
        	success: function(feed) {
            	var html = '';
                for(var i = 0; i < feed.items.length; i++) {            
                    var item = feed.items[i];
                    
                    html += '<div class="panel panel-primary">'
                    + '<div class="panel-heading">'
                    + '<h3 class="panel-title"><span class="glyphicon glyphicon-globe"/> '
                	+ item.title
                    + '</h3>'
                    + '</div><!--End panel heading-->'
                    + '<div class="panel-body">'
                    + item.updated
                    + item.description
                    + '</div><!--End panel body-->'
                    + '<div class="panel-footer">'
                    + '<span class="glyphicon glyphicon-eye-open"/> <a href="' + item.link + '">'
                    + item.title
                    + '</a>'
                    + '</div><!--End panel footer-->'
                    + '</div><!--End panel primary-->';
                }
                
                jQuery('#result').append(html);
            }    
        });
    });
};