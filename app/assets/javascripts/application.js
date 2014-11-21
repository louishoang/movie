// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require jquery.dataTables.min
//= require dataTables.foundation
//= require turbolinks
//= require owl.carousel
//= require leadgen.js
//= require genre_drop_down.js
//= require jquery.remotipart
//= require social-share-button
//= require_tree .

$(function(){
  $(document).foundation({
    equalizer : {
      // Specify if Equalizer should make elements equal height once they become stacked.
      equalize_on_stack: true
    }
  });

  $('video').on('play', function() {
    function disableElements()
    {
      $('.video-player video').each(function() {
        this.removeAttribute("controls");
        this.pause();
        this.disabled=true;
      });
    }

    if ( $( ".leadgen" ).is( ":hidden" ) ) {
        $( ".leadgen" ).delay( 2000 ).slideDown( "slow" );
      window.setTimeout(disableElements, 2000);
    }
  });

  $('#transactions').DataTable();
});
