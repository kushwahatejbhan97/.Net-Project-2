// Header Section

/*==================== SHOW SCROLL UP ====================*/
function stickyTop() {
  const stickyNavbar = document.getElementsByClassName("myNavbar");
  if (this.scrollY >=20) stickyNavbar[0].classList.add("sticky-top");
  else stickyNavbar[0].classList.remove("sticky-top");
}
window.addEventListener("scroll", stickyTop);

// Hero Section Slider
$(document).ready(function () {
    $(".swiper-section .owl-carousel").owlCarousel({
      stagePadding: 25,
      loop: true,
      margin: 8,
      dots: false,
      autoplay: true,
      responsive: {
        0: {
          items: 1,
        },
        600: {
          items: 3,
        },
        1000: {
          items: 5,
        },
      },
    });

    $(".mostsellingprodcuts .owl-carousel").owlCarousel({
      loop: false,
      margin: 2,
      dots: false,
      items: 2.5,
      autoplay:false,
    });

  // $(".slider.owl-carousel").owlCarousel({
  //   // stagePadding: 50,
  //   dots: false,
  //   margin: 10,
  //   items: 4,
  // });
});





/*==================== OTP  ====================*/


$('.digit-group').find('input').each(function () {
  $(this).attr('maxlength', 1);
  $(this).on('keyup', function (e) {
    var parent = $($(this).parent());

    if (e.keyCode === 8 || e.keyCode === 37) {
      var prev = parent.find('input#' + $(this).data('previous'));

      if (prev.length) {
        $(prev).select();
      }
    } else if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 65 && e.keyCode <= 90) || (e.keyCode >= 96 && e.keyCode <= 105) || e.keyCode === 39) {
      var next = parent.find('input#' + $(this).data('next'));

      if (next.length) {
        $(next).select();
      } else {
        if (parent.data('autosubmit')) {
          parent.submit();
        }
      }
    }
  });
});


/*==================== OTP  END ====================*/


/*==================== SINGLE PAGE ====================*/

$('#singlepageslider').owlCarousel({
  loop: true,
  margin: 10,
  nav: false,
  autoplay: true,
  items:1,
  dots:true,
})


/*--------------- PRODUCT DETAILS ------------------*/

function showmoremenu() {
  document.getElementById("showlistmore").style.display = "block";
  document.getElementById("showmoreBTN").style.display = "none";
}
function showlessmenu() {
  document.getElementById("showlistmore").style.display = "none";
  document.getElementById("showmoreBTN").style.display = "block";
}


/*--------------- PRODUCT DETAILS END------------------*/

/*==================== SINGLE PAGE  END ====================*/