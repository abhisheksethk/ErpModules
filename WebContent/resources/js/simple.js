  $( function() {
    $( ".date" ).datepicker({
      changeMonth: true,
      changeYear: true,
      minDate: new Date(1960, 1 - 1, 1)
    });
  } );
  