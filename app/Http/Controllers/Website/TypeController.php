<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;


use App\TypeTour;
use App\Tour;

class TypeController extends Controller
{


	public function __construct(){
		
        $this->typetour = new TypeTour;
        $this->tour= new Tour;
	}

    public function index($idtour){
    	$data = [
            
            'tour'=>$this->tour->getByTypeTourId($idtour),
            
            'nameType'=>$this->typetour->getNameById($idtour),
            'type_tour'=>$this->typetour->get()->where('status',1),
    	];
        return view("website.type_tour.index",$data);
    }

    
}
