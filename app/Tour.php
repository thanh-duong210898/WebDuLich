<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tour extends Model
{
    protected $table = "tour";

    public function getByTypeTourId($request){

        return $this->select('tour.*')
                ->join('type_tour','type_tour.id','tour_TypeTour_id')->where('type_tour.id',$request)->get();
    }
    public function getDescriptionById($id){
        $description = tour::find($id);
        $description = $description->description;
        return $description;
    }
    public function getPrice($id){
        $price = tour::find($id);
        return $price->price;
    }
    public function getImgById($id){
        
        $value=tour::find($id);
        $img= $value->image;
        return $img;
    }
    public function getNameById($id){

        $value=tour::find($id);
        $name= $value->name;
        return $name;
    }
    public function getTourIDById($id){

        $value=tour::find($id);
        $TourID= $value->tour_id;
        return $TourID;
    }
    public function getValueByID($id)
    {
        $value=tour::find($id);
        return $value;
    }
    public function search($request)
    {

        $tour = tour::where('name','like','%'.$request->key.'%')
                ->orwhere('price','like',$request->key)->get();
        return $tour;

        // return $this->select('tour.*')->where('name','like','%'.$request->key.'%')
        //         ->orwhere('price','like',$request->key)->get();
    }

}
