// Credit to Start Bootstrap and Blackrock Digital - https://github.com/BlackrockDigital/startbootstrap-resume#about

$(document).ready( () => {

  "use strict"; // Start of use strict

  if ($('#resume-layout').length > 0) {

	  // Smooth scrolling using jQuery easing
	  $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
	    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
	      if (target.length) {
	        $('html, body').animate({
	          scrollTop: (target.offset().top)
	        }, 1000, "easeInOutExpo");
	        return false;
	      }
	    }
	  });

	  // Closes responsive menu when a scroll trigger link is clicked
	  $('.js-scroll-trigger').click(function() {
	    $('.navbar-collapse').collapse('hide');
	  });

	  // Activate scrollspy to add active class to navbar items on scroll
	  $('body').scrollspy({
	    target: '#sideNav'
	  });

	  // Get the perfect offset to the name in the title
	  let diegoWidth = $(".get-width").width();
	  let deWidth = $(".subtract-width").width() - 1;
	  let offsetWidth = diegoWidth - deWidth;
	  setTimeout( () => {
	  	$(".de-berenguer").css("margin-left", offsetWidth);
	  }, 300)

	  // Add link to email after a second (hopefully this will avoid spam bots)
	  setTimeout( () => {
	  	let emailAddress = "mailto:diego"
	  	emailAddress += "@diazdeberenguer.com"
	  	$(".hide-email-from-bots").attr("href", emailAddress)
	  }, 1000 )
	}

})
