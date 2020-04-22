@php
$contact = \App\Contact::first();
@endphp
<footer class="ro-section">
    <div class="container">
        <div class="ro-main-footer">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-7 col-xs-12 ro-footer-item">
                    <h5>NEW BUSINESS</h5>
                    <p>{{$contact->email ?? null}}<br>{{$contact->phone ?? null}}</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-xs-12 ro-footer-item">
                    <h5>OUR ADDRESS</h5>
                    <p>{{$contact->address ?? null}}</p><br class="hidden-xs">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-xs-12 ro-footer-item ro-open-time">
                    <h5>OPENTIME</h5>
                    {!!$contact->mission ?? null!!}
                </div>
                {{-- <div class="col-lg-1 visible-lg">
                    <div class="ro-footer-separator"></div>
                </div> --}}
                {{-- <div class="col-lg-4 col-md-12 col-sm-7 col-xs-12 ro-footer-item">
                    <h5>NEWSLETTER SIGNUP</h5>
                    <div class="ro-footer-newletter">
                        <input type="text"><a href="#"><i class="icon-basic-mail-open-text"></i></a>
                    </div>
                    <ul class="ro-social">
                        <li><a href="#"><i class="icon-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-twitter"></i></a></li>
                        <li><a href="#"><i class="icon-gplus"></i></a></li>
                        <li><a href="#"><i class="icon-stumbleupon"></i></a></li>
                        <li><a href="#"><i class="icon-tumblr"></i></a></li>
                        <li><a href="#"><i class="icon-vimeo"></i></a></li>
                        <li><a href="#"><i class="icon-pinterest"></i></a></li>
                        <li><a href="#"><i class="icon-dribbble"></i></a></li>
                        <li><a href="#"><i class="icon-instagrem"></i></a></li>
                    </ul>
                </div> --}}
            </div>
        </div>
        <div class="ro-foot-footer">
            <h6>© 2015 AQUA SPA AND BEAUTY. DESIGNED BY THEMEROYAL</h6>
        </div>
    </div>
</footer>
