<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Post;

class BlogController extends Controller
{
	private $post;
  
	public function __construct(){
		$this->post = new Post;
     
	}

    public function getBySlug($slug){
    	$data = [
    		'slug' => $slug,
    	];
        return view("website.blog.index",$data);
    }

    public function getPostByPage(Request $request){ //dd($request->all());
    	$take = 3;
    	$skip = $request->page * $take;

    	$data = $this->post->getByPostTypeSlug($request->slug, $take, $skip);
    	// echo $data; die;
    	return response()->json(['status'=>1,'data'=>$data]);
    }

    // public function getNew(){
    //     return view("website.blog.index");
    // }
    
}
