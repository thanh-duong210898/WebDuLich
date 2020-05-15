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

}
