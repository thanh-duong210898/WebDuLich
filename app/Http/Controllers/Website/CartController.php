<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Tour;
use Yajra\Datatables\Datatables;
use App\Functions\General;
use Illuminate\Http\Request;
use App\User;


class CartController extends Controller
{
	public function __construct(){
		
        
        $this->tour= new Tour;
	}
    public function index($idtour){
    	$data = [
    		'ValueTour'=>$this->tour->getValueByID($idtour)
    	];
    	return view("website.cart.demo",$data);
    }
    public function demo(){
        return view("website.cart.list");
    }
    public function add(Request $request){
        $this->validate($request,[
            
        ],[

        ]);
        $user = new user;
        $user->name = $request->contact_name;
        $user->email = $request->email;
        $user->phone = $request->mobilephone;
        $user->address = $request->address;
        $user->adult = $request->adult;
        $user->children11 = $request->children11;
        $user->children = $request->children;
        $user->small_children = $request->small_children;
        $user->guests = $request->guests;
        $user->note = $request->note;
        $user->id_tour = $request->idtour;
        $user->save();
        return redirect()->route('website.about')->with('success','Add tour Success');


    }
    public function list()
    {
        return view('website.cart.1');
    }
}
