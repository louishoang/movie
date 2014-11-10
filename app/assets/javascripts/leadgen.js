$(document).on('click', 'video', function(){
  if (this.paused) {
      this.play();
      if ( $( ".leadgen" ).is( ":hidden" ) ) {
        $( ".leadgen" ).delay( 2000 ).slideDown( "slow" );
    }
  }
});
