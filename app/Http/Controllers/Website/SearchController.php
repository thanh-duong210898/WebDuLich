<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Tour;
use App\TypeTour;

class SearchController extends Controller
{
	public function __construct(){
		
       
        $this->tour= new Tour;
        $this->typetour= new TypeTour;

	}
    public function index(Request $request)
    {
    	$data = [
    		'tour'=>$this->tour->search($request),
    		 'type_tour'=>$this->typetour->get()->where('status',1),
    		
    	];
    	

    	return view('website.search.index',$data);
    }
    public function filter(request $request)
    {
        $data = [
            'tour'=>$this->tour->filter($request),
             'type_tour'=>$this->typetour->get()->where('status',1),
            
        ];
        

        return view('website.search.index',$data);
    }

}
