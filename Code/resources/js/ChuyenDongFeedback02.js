$(document).ready(function(){
    $('.news-carousel').slick({
        slidesToShow: 3, 
        slidesToScroll: 1,
        dots: true,
        arrows: true,
        responsive: [
            {
                breakpoint: 1200, 
                settings: {
                    slidesToShow: 2, 
                    slidesToScroll: 1,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 800, 
                settings: {
                    slidesToShow: 1, 
                    slidesToScroll: 1
                }
            }
        ]
    });
});

