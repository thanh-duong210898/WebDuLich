<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;

use App\Tour;

class DestinationController extends Controller
{
    private $tour;
	public function __construct(){
		
        $this->tour= new Tour;
	}

    public function index($idtour){
        $data = $this->tour->getById($idtour);    
    	$data = [
            'price'=>$data->price,
            'value'=>$this->tour->getByTypeTourId($idtour),
            'tour'=>$this->tour->getByTypeTourId($idtour),
            'description'=>$data->description,
            'img'=>$data->image,
            'name'=>$data->name,
            'ValueTour'=>$data,
    	];
        return view("website.destination_tour.index",$data);
    }


    
}
