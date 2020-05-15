<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;

use App\Tour;

class DestinationController extends Controller
{

	public function __construct(){
		
        $this->tour= new Tour;
	}

    public function index($idtour){
            
    	$data = [
            'price'=>$this->tour->getPrice($idtour),
            'value'=>$this->tour->getByTypeTourId($idtour),
            'tour'=>$this->tour->getByTypeTourId($idtour),
            'description'=>$this->tour->getDescriptionById($idtour),
            'img'=>$this->tour->getImgById($idtour),
            'name'=>$this->tour->getNameById($idtour),
    	];
        return view("website.destination_tour.index",$data);
    }


    
}
