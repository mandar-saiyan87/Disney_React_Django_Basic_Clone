import React from "react";
import Slider from "react-slick"; // For Image Slider
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

function ImgSlider() {
  let settings = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
  };

  return (
    <>
      <div className="carousel">
        <Slider {...settings}>
          <div className="wrap">
            <img src="/images/slider-badging.jpg" alt="" />
          </div>
          <div className="wrap">
            <img src="/images/slider-badag.jpg" alt="" />
          </div>
          <div className="wrap">
            <img src="/images/slider-scale.jpg" alt="" />
          </div>
        </Slider>
      </div>
    </>
  );
}

export default ImgSlider;
