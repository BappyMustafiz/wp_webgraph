( function ( $ ) {
	wp.customize( 'header_navbar_color', function( value ){
		value.bind( function( newval ){
			$( '.navbar' ).css( 'background-color', newval );
		} );
	} );
} )( jQuery );