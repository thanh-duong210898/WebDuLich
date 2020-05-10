@extends("website.layouts.master")
@section("content")
<div class="ro-section ro-padding-top">
    <div class="container">
        <div class="row">
            {{-- <div class="col-lg-8 col-lg-offset-2">
                <div class="ro-quote-content text-center">
                    <q>&nbsp;When you have once seen the glow of happiness on the face of a beloved person, you know that a man can have<br class="hidden-sm hidden-xs">no vocation but to awaken that light on the faces surrounding him. In the depth of winter,<br>I finally learned that within me there lay an invincible summer.&nbsp;</q>
                    <div class="ro-author-name">_ Albert Camus _</div>
                </div>
            </div> --}}
            <div class="load-post">
                {{-- <div class="col-lg-12">
                    <div class="ro-blog-article ro-preview"><a href="blog-article1.html" class="ro-title">International Yoga Day: Find the Yoga Style Perfect for You!</a>
                        <div class="ro-image"><img src="assets/images/blog3.jpg" alt="blog image" class="img-responsive">
                            <div class="ro-note"><a href="#" title="Close" class="ro-note-top ro-dismiss-thisnote"><i class="icon-wrong6"></i></a>
                                <p class="ro-ellipsis ro-note-content" style="overflow-wrap: break-word;">When you have once seen the glow of happiness on the face of a beloved person. <br> <br> <span>Suspendisse consectetur consectetur bibendum.Etiam vel orci ipsum. Sed eget velit ipsum...</span></p><a href="blog-article1.html" title="Read More" class="ro-note-bottom"><i class="icon-arrow413"></i></a>
                            </div>
                        </div>
                        <div class="ro-content ro-ellipsis" style="overflow-wrap: break-word;">
                            <p>Through various yoga modalities ranging from bikram and power yoga to ashtanga and vinyasa, yoga has many healthy benefits for the mind, body, and soul. Originating in ancient India, the word yoga means to unite or to join, and in yoga, we unite our minds and our bodies through breath. Most Western yoga derives from hatha, one of the six major branches of yoga. Traditional hatha yoga consists of asanas (physical yoga postures) and pranayamas (breathing exercises). With over 100 yoga poses, it’s no wonder yogis never get bored. Like many calming spa treatments, yoga is a discipline that utilizes the mind-body connection to reduce stress, increase flexibility, and enhance wellbeing.In honor of International Yoga Day we’re sharing this handy infographic to help you learn about the different styles and find the practice that’s perfect for you. Learn more about yoga and find classes and studios near you with our Yoga Guide.</p>
                        </div>
                        <div class="ro-detail">
                            <span>Posted:&nbsp;<a href="#">March 16, 2015</a></span>
                            <span>By:&nbsp;<a href="#">admin</a></span><span>Comment:&nbsp;<a href="#">20</a></span>
                        </div>
                    </div>
                </div> --}}
            </div>
            <div class="col-lg-12">
                <div class="ro-blog-article">
                    <div class="ro-loading"><a href="#" class="btn-load-more" page="1">LOAD MORE ...</a></div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
<script type="text/javascript">
$(document).ready(function() {
    var slug = "{{$slug}}";
    var page = 0;
    getByPage(page, slug);
    $(".btn-load-more").on('click', function(e) {
        e.preventDefault();
        page = $(this).attr('page');
        getByPage(page, slug);
        page++;
        $(this).attr('page', page);
    })
    // alert('dd');
});

function getByPage(page, slug) {
    $.ajax({
        url: "{{ route('blog.getPostByPage') }}",
        data: { page, slug },
        dataType: "json",
        success: function(data) {
            if (data.status) {
                var html = '';
                for (var i = 0; i < data.data.length; i++) {
                    html += '<div class="col-lg-12">' +
                        '<div class="ro-blog-article ro-preview"><a href="blog-article1.html" class="ro-title">' + data.data[i].title + '</a>' +
                        data.data[i].description +
                        '<div class="ro-detail">' +
                        '<span>Posted:&nbsp;<a >' + data.data[i].created_at + '</a></span>' +
                        // '<span>By:&nbsp;<a href="#">admin</a></span><span>Comment:&nbsp;<a href="#">20</a></span>' +
                        '</div>' +
                        '</div>' +
                        '</div>';
                }
                $(".load-post").append(html);
            }
        }
    })
}

</script>
@endsection
