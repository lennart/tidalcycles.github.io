(function($, window) {
    var metas = document.getElementsByTagName('meta');
    var i;

    $(document).ready(function() { $(".tidal-video").fitVids(); });


    $('[data-toggle="popover"]').popover({
        html: true,
        content: function () { // popover handler for function signature code
            var btn = $(this);

            var content_id = btn.data("tidalId");
            var content = "<pre><code>"
                + $( "#" + btn.data("tidalId") ).text()
                + "</code></pre>" ;

            return content;
        }
    });

    if (navigator.userAgent.match(/iPhone/i)) {
        for (i=0; i<metas.length; i++) {
            if (metas[i].name == "viewport") {
                metas[i].content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
            }
        }
        document.addEventListener("gesturestart", gestureStart, false);
    }
    function gestureStart() {
        for (i=0; i<metas.length; i++) {
            if (metas[i].name == "viewport") {
                metas[i].content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";
            }
        }
    }
}(jQuery, this, undefined));
