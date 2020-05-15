<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Slide;
use App\SlideTitle;
use App\HomeService;
use App\OurTeam;
use App\Title;
use App\Banner;
use App\TypeTour;
use App\Tour;


class HomeController extends Controller
{

	private $slide;
    private $slideTitle;
    private $homeService;
    private $title;

	public function __construct(){
		$this->slide = new Slide;
        $this->slideTitle = new SlideTitle;
        $this->homeService = new HomeService;
        $this->ourTeam = new OurTeam;
        $this->title = new Title;
        $this->banner = new Banner;
        $this->typetour = new TypeTour;
        $this->tour= new Tour;

	}

    public function index(){
    	$data = [
    		'slide' => $this->slide->getAll(),
            'slideTitle' => $this->slideTitle->getAll(),
            'homeService' => $this->homeService->getByNumber(4),
            'ourTeam' => $this->ourTeam->getByNumber(2),
            'title' => $this->title->find(1) ?? null,
            'banner' => $this->banner->find(1) ?? null,
            'typetour' =>$this->typetour->getAll(),
            'tour'=>$this->tour->getByTypeTourId(1),
    	];
        return view("website.home.index",$data);
    }

    
}
