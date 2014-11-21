$(document).on('click', 'video', function(){

  function disableElements()
  {
  $('.video-player video').each(function() {
    this.removeAttribute("controls");
    this.pause();
    this.disabled=true;
  });
  }

  if (this.paused) {
      this.play();
      if ( $( ".leadgen" ).is( ":hidden" ) ) {
        $( ".leadgen" ).delay( 2000 ).slideDown( "slow" );
      window.setTimeout(disableElements, 2000);
    }
  }
});
