<style>
    .bottom-left {
  position: absolute;
  bottom: 8px;
  left: 80px;
}
</style>


<!-- Slideshow Starts Here-->
<section id="hero" class="contentfont animated fadeIn slow" style="background-color: brown">
    <section class="hero-container" data-aos="fade-up">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">

                <div class="carousel-item active"  style="background-image: url(slideshow/6.jpg);background-size:contain;">
                    <div class="view overlay">
                        <div class="row mx-5">
                            <div align="left" class="col-md-5 p-5 mx-5">
                                <h1 class="black-text animated fadeInLeft slow " style="font-size:40px;margin-top:35px;margin-left:50px;">Get a 10% discount on all high quality products</h1>
                                <a href="/#Products" style="margin-left:50px;" class="btn btn-dark">Order Now</a>
                            </div>

                            <div class="col-md-3 animated fadeInRight slow">
                                <img class="img-fluid slideshowimage" src=" {{ asset('slideshow/slide1-1.png') }}" alt="Slide-1" style="width:100%;">
                            </div>
                            <div class="col-md-3 animated fadeInRight slow">
                                <img class="img-fluid slideshowimage" src=" {{ asset('slideshow/slide1-2.png') }}" alt="Slide-1" style="margin-top:35px;width:100%;">
                            </div>
                        </div>
                    </div>
                </div>


                <div class="carousel-item" style="background-color: brown">
                    <div class="view overlay">
                        <div class="row mx-5">
                            <div align="left" class="col-md-5 p-5 mx-5">
                                <h1 class="black-text animated fadeInLeft slow " style="font-size:40px;margin-top:110px;margin-left:50px;">High-quality,rust-resistant watches at a 10% discount on sales</h1>
                                <a href="/#Products" class="btn btn-dark" style="margin-left:50px;">Order Now</a>
                            </div>

                            <div class="col-md-3 animated fadeInRight slow">
                                <img class="img-fluid slideshowimage" src=" {{ asset('slideshow/slide2-1.png') }}" alt="Slide-1" style="margin-top:80px;">
                            </div>
                            <div class="col-md-3 animated fadeInRight slow">
                                <img class="img-fluid slideshowimage" src=" {{ asset('slideshow/slide2-2.png') }}" alt="Slide-1">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="view overlay">
                        <div align="center" class="p-5 my-5 "> <br>
                            <h1 class="black-text animated fadeInLeft slow " style="font-size:30px;">Get stylish and stunning watches or glasses within 3 days</h1>
                            <div class="container">
                                <div class="row ">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-3 animated fadeInRight slow">
                                        <img class="img-fluid slideshowimage" src=" {{ asset('slideshow/slide3-1.png') }}" alt="Slide-1">
                                    </div>
                                    <div class="col-md-3 animated fadeInRight slow">
                                        <img class="img-fluid slideshowimage" src=" {{ asset('slideshow/slide3-2.png') }}" alt="Slide-1">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="carousel-item">
                    <div class="view overlay">
                        <div align="center" class="p-5 " style="margin-top:-20px;">
                            <h1 class="black-text animated fadeInLeft slow" style="margin-bottom:90px">We make high quality and scratch resistant products</h1>
                            <a href="{{ url('about') }}" target="_blank" class="btn btn-dark">Know More </a>
                        </div>
                    </div>
                </div>


                <!--Controls-->
                <p style="padding:40px;">
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <i class="fas fa-long-arrow-alt-left fa-2x" style="background:black;color:white;padding:5px;border-radius:20px;"></i>
                    </a>
                </p>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <i class="fas fa-long-arrow-alt-right fa-2x" style="background:black;color:white;padding:5px;border-radius:20px;"></i>
                </a>
            </div>
        </div>
    </section>

</section>
