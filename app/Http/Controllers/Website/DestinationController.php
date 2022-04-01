<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
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
            'listtour'=>$this->tour->getByStar($idtour),
            // 'orderby'=>$data->orderby('star')->DESC;
    	];
        return view("website.destination_tour.index",$data);
    }
    public function starratings(Request $request){
        
        $this->validate($request,[
            
        ],[

        ]);
        $tour = tour::find($request->id);
        $tour->numratings=$tour->numratings +1;
        $tour->allstar=$tour->allstar + $request->valuestar;
        $tour->star = ($tour->allstar)/($tour->numratings);
        $tour->save();
        return back()->with('success','Edit tour Success');
        // return view('website.about');
    }

    
}
