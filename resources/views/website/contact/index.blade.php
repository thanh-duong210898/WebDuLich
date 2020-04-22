@extends("website.layouts.master")
@section("styles")
<style type="text/css">
.iframe-100 iframe {
    width: 100%
}

</style>
@endsection
@section("content")
<div class="ro-section ro-padding-top">
    <div class="container">
        <div class="row">
            <div class="col-md-7 col-xs-12 ro-mt-10 iframe-100">{!!$contact->map!!}</div>
            <div class="col-md-5 col-xs-12 ro-section-mb">
                <div class="row ro-contact-info-wrapper">
                    <div class="col-md-6">
                        <div class="ro-contact-info icon-185040-map-pin-streamline">
                            {{$contact->address}}
                        </div>
                        {{-- <div class="ro-contact-info icon-185038-home-house-streamline">Web:<a href="#" class="ro-color-main"> --}}
                                {{-- <u>www.domain.com</u></a></div> --}}
                        <div class="ro-contact-info icon-185078-email-mail-streamline">Email:<a class="ro-color-main">{{$contact->email}}</a></div>
                    </div>
                    <div class="col-md-6">
                        <div class="ro-contact-info icon-phone">Phone: {{$contact->phone}}</div>
                        {{-- <div class="ro-contact-info icon-map">Fax: +444 123456789</div> --}}
                    </div>
                </div>
                {{-- <form method="post" action="http://demo.9wpthemes.com/aqua/phpscript/contact.php" class="ro-form ro-contact-form ro-form-area">
                    <h5 class="ro-hr-heading ro-left">CONTACT FORM</h5>
                    <div class="row">
                        <div class="col-md-6 col-xs-12">
                            <input type="text" placeholder="Name" name="name" required="required">
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <input type="email" placeholder="Email" name="email" required="required">
                        </div>
                        <div class="col-md-12 col-xs-12">
                            <input type="text" placeholder="Subject" name="subject" required="required">
                            <textarea placeholder="Write your comment ..." name="message" required="required"></textarea>
                        </div>
                        <div class="col-md-12 col-xs-12 text-center">
                            <input type="submit" value="SEND" class="pull-right ro-btn-1 ro-send">
                        </div>
                    </div>
                </form> --}}
            </div>
        </div>
    </div>
</div>
@endsection
