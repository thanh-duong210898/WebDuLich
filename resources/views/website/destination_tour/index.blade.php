@extends("website.layouts.master")
@section("content")




    <div class="destination_banner_wrap overlay">
        <div class="destination_text text-center">
            <h3>Saintmartine Iceland</h3>
            <p>Pixel perfect design with awesome contents</p>
        </div>
    </div>





<div class="destination_details_tour_info">

        <div class="container">
            <div class="row {{-- justify-content-center --}}">
                <div class="col-lg-6 col-md-7">
                    <div class="destination_info">
                        <img src="{{asset($img)}}" width="500"  height="600">
                    </div>
                </div>
                    <div class="col-lg-6 col-md-5">
                    <div class="destination_price">
                    <h3 class="ten_sp">{!!$name!!}</h3>
                    <div style="margin-bottom: 20px;">

                    <div class="pull-left danhgiasao">
                    <input type="range" value="5" step="0.1" id="backing5">s
                    <div class="rateit" style="float: left;" data-rateit-backingfld="#backing5" data-rateit-resetable="false"  data-rateit-ispreset="true"
                    data-rateit-min="0" data-rateit-max="5">
                    </div>
                    <span class="hreview-aggregate" style="margin-left: 10px;">
                    <span class="item">
                    <span class="fn">
                        <span class="rating"><span class="average"><strong>5</strong></span>
                            <strong>/<span class="best">5 </span></strong>trong 
                            <span class="votes"><strong>2</strong>
                            </span> Đánh giá
                            <span class="summary"></span></span>
                    </span>
                    </span>
                    </span>
                    </div>
                    <span style="display: inline-block;margin-right: 30px;"><strong><i class="fa fa-eye" aria-hidden="true"></i> Lượt xem:</strong> 1186 </span>
                    <span style="display: inline-block;margin-right: 30px;"><strong><i class="fa fa-comment-o" aria-hidden="true"></i> Bình luận:</strong> 2 </span>
                    <div class="clearfix"></div>
                    </div>
                    <div class="row m-5">
                    <div class="col-sm-6 p5">
                    <p><i class="fa fa-barcode" aria-hidden="true"></i> MÃ TOUR: {{ $ValueTour->tour_id }}</p>
                    <p><i class="fa fa-clock-o" aria-hidden="true"></i> Thời gian: {{ $ValueTour->tour_date }} Ngày</p>
                    <p><i class="fa fa-calendar" aria-hidden="true"></i> Ngày khởi hành: 
                        {{ $ValueTour->date_start }}</p>
                    </div>
                    <div class="col-sm-6 p5">
                    <p><i class="fa fa-car" aria-hidden="true"></i> Phương tiện di chuyển: {{ $ValueTour->transport }}</p>
                    <p><i class="fa fa-map-marker" aria-hidden="true"></i> Nơi khởi hành: {{ $ValueTour->place_start }}</p>
                    <p><i class="fa fa-calendar-o" aria-hidden="true"></i> <a href="https://hoangkhoitravel.com/index.php?com=search&textsearch=tour-du-lich-phu-quoc-3-ngay-2-dem"><b>Ngày khác</b></a></p>
                    </div>
                    </div>

                    <hr style="margin-top: 10px;margin-bottom: 10px;border-color: #eae8e8;">
                    <div class="row m-10">
                    <div class="col-sm-8">
                    <p style="margin-bottom: 0px;"><b>GIÁ TOUR:</b> <strong class="gia-tour">  {{ number_format($ValueTour->price) }}</strong> vnđ<br>
                    
                    </div>
                    <div class="col-sm-4">
                    <form method="post" action="https://hoangkhoitravel.com/gio-hang.html" class="check-cart row">
                    <input class="form-control" type="hidden" value="1" name="soluong1" />
                    <input type="hidden" name="id" value="36">
                    <input type="hidden" name="url" value="https://hoangkhoitravel.com/tour-du-lich-phu-quoc-3-ngay-2-dem.html?fbclid=IwAR243iJmm7hHmLymUVNIP16CqrSxYzlW66OjppuR3PRlKeS2zQkjbPjkjn8">
                    <div class="">
                    <a href="{{ route('website.about') }}">
                    <button type="button" data-toggle="modal" data-target="#myModal" name="addcart" class="btn-cart form-control" >Đặt chỗ</button>
                    </a>
                    </div>
                    </form>
                    </div>
                    </div>
                    <hr style="margin-top: 10px;margin-bottom: 10px;border-color: #eae8e8;">
                    <div style="font-size: 15px;color: red;">
                    <i class="fa fa-phone" aria-hidden="true"></i> Hotline hỗ trợ 24/7: <strong>(028) 6660 1616 - 0962.111.247</strong>
                    <div class="pull-right xs-none">
                    <div class="fb-like" data-href="https://hoangkhoitravel.com/tour-du-lich-phu-quoc-3-ngay-2-dem.html?fbclid=IwAR243iJmm7hHmLymUVNIP16CqrSxYzlW66OjppuR3PRlKeS2zQkjbPjkjn8" data-width="" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                </div>
            </div>
        </div>


    <div class="destination_details_tour_info">
        <div class="container">
            <div class="row {{-- justify-content-center --}}">
                <div class="col-lg-8 col-md-9">
                    <div class="destination_info">
                        {!!$description!!}
                    </div>
                </div>
                    {{-- <div class="col-lg-3 col-md-2">
                    <div class="destination_price">
                    <h2 class="ten_sp">Tour Du Lịch Phú Quốc 3 Ngày 2 đêm</h2>
                    <div style="margin-bottom: 20px;">

                    <div class="pull-left danhgiasao">
                    <input type="range" value="5" step="0.1" id="backing5">
                    <div class="rateit" style="float: left;" data-rateit-backingfld="#backing5" data-rateit-resetable="false"  data-rateit-ispreset="true"
                    data-rateit-min="0" data-rateit-max="5">
                    </div>
                    <span class="hreview-aggregate" style="margin-left: 10px;">
                    <span class="item">
                    <span class="fn">
                        <span class="rating"><span class="average"><strong>5</strong></span>
                            <strong>/<span class="best">5 </span></strong>trong 
                            <span class="votes"><strong>2</strong>
                            </span> Đánh giá
                            <span class="summary"></span></span>
                    </span>
                    </span>
                    </span>
                    </div>
                    <span style="display: inline-block;margin-right: 30px;"><strong><i class="fa fa-eye" aria-hidden="true"></i> Lượt xem:</strong> 1186 </span>
                    <span style="display: inline-block;margin-right: 30px;"><strong><i class="fa fa-comment-o" aria-hidden="true"></i> Bình luận:</strong> 2 </span>
                    <div class="clearfix"></div>
                    </div>
                    <div class="row m-5">
                    <div class="col-sm-6 p5">
                    <p><i class="fa fa-barcode" aria-hidden="true"></i> MÃ TOUR: HKTPQ18</p>
                    <p><i class="fa fa-clock-o" aria-hidden="true"></i> Thời gian: 3 ngày 2 đêm</p>
                    <p><i class="fa fa-calendar" aria-hidden="true"></i> Ngày khởi hành:
                    HÀNG NGÀY                    </p>
                    </div>
                    <div class="col-sm-6 p5">
                    <p><i class="fa fa-car" aria-hidden="true"></i> Phương tiện di chuyển: Ô tô</p>
                    <p><i class="fa fa-map-marker" aria-hidden="true"></i> Nơi khởi hành: TP. Hồ Chí Minh</p>
                    <p><i class="fa fa-calendar-o" aria-hidden="true"></i> <a href="https://hoangkhoitravel.com/index.php?com=search&textsearch=tour-du-lich-phu-quoc-3-ngay-2-dem"><b>Ngày khác</b></a></p>
                    </div>
                    </div>

                    <hr style="margin-top: 10px;margin-bottom: 10px;border-color: #eae8e8;">
                    <div class="row m-10">
                    <div class="col-sm-8">
                    <p style="margin-bottom: 0px;"><b>GIÁ TOUR:</b> <strong class="gia-tour">1,650,000</strong> vnđ<br>
                    Số chỗ còn nhận: <b>40</b></p>
                    </div>
                    <div class="col-sm-4">
                    <form method="post" action="https://hoangkhoitravel.com/gio-hang.html" class="check-cart row">
                    <input class="form-control" type="hidden" value="1" name="soluong1" />
                    <input type="hidden" name="id" value="36">
                    <input type="hidden" name="url" value="https://hoangkhoitravel.com/tour-du-lich-phu-quoc-3-ngay-2-dem.html?fbclid=IwAR243iJmm7hHmLymUVNIP16CqrSxYzlW66OjppuR3PRlKeS2zQkjbPjkjn8">
                    <div class="">
                    <button type="button" data-toggle="modal" data-target="#myModal" name="addcart" class="btn-cart form-control" >Đặt chỗ</button>
                    </div>
                    </form>
                    </div>
                    </div>
                    <hr style="margin-top: 10px;margin-bottom: 10px;border-color: #eae8e8;">
                    <div style="font-size: 15px;color: red;">
                    <i class="fa fa-phone" aria-hidden="true"></i> Hotline hỗ trợ 24/7: <strong>(028) 6660 1616   0962.111.247</strong>
                    <div class="pull-right xs-none">
                    <div class="fb-like" data-href="https://hoangkhoitravel.com/tour-du-lich-phu-quoc-3-ngay-2-dem.html?fbclid=IwAR243iJmm7hHmLymUVNIP16CqrSxYzlW66OjppuR3PRlKeS2zQkjbPjkjn8" data-width="" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                    </div>
                    </div>
                    </div>
                    </div> --}}
                    
                </div>
            </div>
        </div>
    
    <div class="destination_details_info">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-9">
                    
                    <div class="bordered_1px"></div>
                    <div class="contact_join">
                        <h3>Contact for join</h3>
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="single_input">
                                        <input type="text" placeholder="Your Name">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="single_input">
                                        <input type="text" placeholder="Phone no.">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_input">
                                        <textarea name="" id="" cols="30" rows="10"placeholder="Message" ></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="submit_btn">
                                        <button class="boxed-btn4" type="submit">submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- newletter_area_start  -->
    <div class="newletter_area overlay">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-lg-10">
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <div class="newsletter_text">
                                <h4>Subscribe Our Newsletter</h4>
                                <p>Subscribe newsletter to get offers aynd about
                                    new places to discover.</p>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="mail_form">
                                <div class="row no-gutters">
                                    <div class="col-lg-9 col-md-8">
                                        <div class="newsletter_field">
                                            <input type="email" placeholder="Your mail" >
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4">
                                        <div class="newsletter_btn">
                                            <button class="boxed-btn4 " type="submit" >Subscribe</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- newletter_area_end  -->

    <div class="popular_places_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb_70">
                        <h3>More Places</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="img/place/1.png" alt="">
                            <a href="#" class="prise">$500</a>
                        </div>
                        <div class="place_info">
                            <a href="#"><h3>California</h3></a>
                            <p>United State of America</p>
                            <div class="rating_days d-flex justify-content-between">
                                <span class="d-flex justify-content-center align-items-center">
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i>
                                     <a href="#">(20 Review)</a>
                                </span>
                                <div class="days">
                                    <i class="fa fa-clock-o"></i>
                                    <a href="#">5 Days</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="img/place/2.png" alt="">
                            <a href="#" class="prise">$500</a>
                        </div>
                        <div class="place_info">
                            <a href="#"><h3>Korola Megna</h3></a>
                            <p>United State of America</p>
                            <div class="rating_days d-flex justify-content-between">
                                <span class="d-flex justify-content-center align-items-center">
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i>
                                     <a href="#">(20 Review)</a>
                                </span>
                                <div class="days">
                                    <i class="fa fa-clock-o"></i>
                                    <a href="#">5 Days</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="img/place/3.png" alt="">
                            <a href="#" class="prise">$500</a>
                        </div>
                        <div class="place_info">
                            <a href="#"><h3>London</h3></a>
                            <p>United State of America</p>
                            <div class="rating_days d-flex justify-content-between">
                                <span class="d-flex justify-content-center align-items-center">
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i> 
                                     <i class="fa fa-star"></i>
                                     <a href="#">(20 Review)</a>
                                </span>
                                <div class="days">
                                    <i class="fa fa-clock-o"></i>
                                    <a href="#">5 Days</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    

@endsection