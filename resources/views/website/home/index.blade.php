@extends("website.layouts.master")
@section("content")
<header class="ro-section ro-home">
    <div style="max-width: 1520px; margin :0 auto" class="ro-slider-style-1-wrapper">
        <div id="ro-slider-style-1" style="position: relative; top: 0px; left: 0px; width: 1520px; height: 700px; margin:0 auto;" class="ro-slider-style-1">
            <div data-u="slides" style="cursor: pointer; position: absolute; overflow: hidden; left: 0px; top: 0px; width: 1520px; height: 700px;">
                {{-- slide --}}
                @foreach ($slide as $element)
                <div>
                    <div data-u="image" data-before="red" class="ro-overlay-bg ro-home-slider-1-background ro-behind-bg-1 ro-front-bg-5"></div>
                    <div data-u="caption" data-t="B" style="position: absolute; top: 0px; left: 0px; width: 100%;height: 600px;"><img src="{{ asset('').$element->image }}" alt="slider-img" /></div>
                    <div data-u="caption" data-t="T" style="position: absolute; top: 225px; left: 620px; width: 800px;height: 120px;">
                        <p style="line-height:25px;" class="ro-font-size-3"><span style="position:relative;margin-left:80px; top:-10px"><span class="ro-font-size-1">{{ $element->title }}&nbsp;</span><span class="ro-font-size-2 ro-color-main">spa</span></span><br />{{ $element->description }}</p>
                    </div>
                    <div data-u="caption" data-t="B" data-t2="T" style="position: absolute; top: 325px; left: 620px; width: 150px;height: 40px;"><a href="{{ $element->link }}" class="ro-btn-bd-1">SEE MORE</a></div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</header>
<div class="ro-section ro-padding-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-xs-12 text-center ro-section-mb">
                <p class="ro-service-caption">
                    {{$title->description ?? null}}
                </p>
            </div>
            <div class="ro-service-1-wrapper">
                <div class="col-lg-7">
                    <div class="ro-service-1-item clearfix">
                        <div class="ro-image ro-left"><img src="{{loadImage($homeService[0]->image) ?? null}}" alt="service" class="img-responsive" /></div>
                        <div class="ro-content">
                            <h3 class="ro-hr-heading">{{$homeService[0]->title ?? null}}</h3>
                            <p class="ro-bgc-trans-1">{{$homeService[0]->description ?? null}}<a href="{{$homeService[0]->link ?? null}}" class="ro-more"><i class="icon-right106"></i></a></p>
                        </div>
                    </div>
                    <div class="ro-service-1-item clearfix">
                        <div class="ro-content ro-left">
                            <h3 class="ro-hr-heading">{{$homeService[1]->title ?? null}}</h3>
                            <p class="ro-bgc-trans-1">{{$homeService[1]->description ?? null}}<a href="{{$homeService[1]->link ?? null}}" class="ro-more"><i class="icon-right106"></i></a></p>
                        </div>
                        <div class="ro-image"><img src="{{loadImage($homeService[1]->image) ?? null}}" alt="service" class="img-responsive" /></div>
                    </div>
                </div>
                <div class="col-lg-5 col-xs-12">
                    <div class="ro-service-1-item ro-service-1-v clearfix">
                        <div class="ro-image ro-left"><img src="{{loadImage($homeService[2]->image) ?? null}}" alt="service" class="img-responsive" /></div>
                        <div class="ro-content">
                            <h3 class="ro-hr-heading">{{$homeService[2]->title ?? null}}</h3>
                            <p class="ro-bgc-trans-5">{{$homeService[2]->description ?? null}}<a href="{{$homeService[2]->link ?? null}}" class="ro-more"><i class="icon-right106"></i></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="ro-advertise-1 ro-section">
    <div class="container">
        <div class="row">
           <img width="100%" src="{{loadImage($banner->image)}}" alt="">
        </div>
    </div>
</div>
<div class="ro-section ro-padding-top">
    <div class="container">
        <div class="row ro-section-mb">
            <div class="col-md-12">
                <h3 class="ro-hr-heading ro-section-heading">OUR TEAM</h3>
            </div>
            @foreach ($ourTeam as $element)
            <div class="col-md-4">
                <div class="ro-team-item"><img src="{{loadImage($element->image) ?? null}}" alt="team-member" class="img-responsive" />
                    <div class="ro-content">
                        <h5>{{$element->title ?? null}}</h5>
                        <p><i class="ro-color-main ro-font-regular">{{$element->type_name ?? null}}</i></p>
                        <p>{{$element->description ?? null}}
                        </p>
                       
                    </div>
                </div>
            </div>
            @endforeach
         
        </div>
        <div class="ro-hr"></div>
    </div>
</div>
<div class="ro-section ro-padding-top ro-small-border-top">
    <div class="container">
        <div id="ro-testimonial-slider" class="ro-testimonial-slider flexslider ro-section-mb">
            <ul class="slides">
                @foreach ($slideTitle as $element)
                <li class="ro-item">
                    <h5>{{ $element->title }}</h5>
                    <p>{{$element->description}}</p>
                </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
@endsection
