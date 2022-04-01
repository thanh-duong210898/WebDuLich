<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Inventory;
use App\Product;
use App\Functions\General;
use Yajra\Datatables\Datatables;
class InventoryController extends Controller
{
    public function create(Request $request)
    {
        
        if($request->amount < 0 || $request->price <0 || $request->product_id <0 ) {
            return false;
        }
        $product = Product::where('id',$request->product_id)->first();
        if(!$product->id){
            return false;
        }

        $product->inventory =  $request->type == 1 ? $product->inventory + $request->amount : $product->inventory - $request->amount;
        $product->save();

        $inventory = New Inventory;
        $inventory->product_id = $request->product_id;
        $inventory->amount = $request->amount;
        $inventory->type = $request->type;
        $inventory->price = $request->price;

        $inventory->save();

        return json_encode(['success'=>true]);
    }

    public function index(){    
        $data['product'] = Product::where('status',1)->get();
        return view('admin.inventory.index', $data);
    }   

    // public function edit(){
    //     $data['category'] = Category::where('status',1)->get();  
    //     return view('admin.product.edit',$data);
    // }

    public function datatables(){
        $product = Inventory::select('inventory.*', 'product.name as product_name')
                            ->join('product','product.id','product_id')
                            ->orderBy('created_at', "desc")
                            ->get();
        return Datatables::of($product)
        ->addColumn('action',function($product){
            return '<a href="#" data-id='.$product->id.' class="btn btn-success btn-sm edit">
            <i class="fas fa-edit"></i></a> 
                <a href="#" data-id='.$product->id.' class="btn btn-danger btn-sm delete"><i class="fas fa-trash"></i></a>';
        })
        ->editColumn('price',function($product){
            return number_format($product->price);
        })
        ->editColumn('type',function($product){
            return $product->type == 1 ? "Nhập" : "Xuất";
        })
        ->setRowClass(function ($product) {
            return $product->type == 1 ? 'alert-success' : 'alert-warning';
        })
        // ->orderColumn('amount')
        ->addColumn('total',function($product){
            return number_format($product->price * $product->amount);
         })
        ->rawColumns(['action','total'])
        ->make(true);        
    }

    public function get_add(){
        $data['name'] = 'Add';
        $data['product'] = Product::select('id','name')->get();
        return view('admin.inventory.add_or_edit',$data); 
    }

    public function post_add(Request $request){
        if($request->amount < 0 || $request->price <0 || $request->product_id <0 ) {
            return false;
        }
        $product = Product::where('id',$request->product_id)->first();
        if(!$product->id){
            return false;
        }

        $product->inventory =  $request->type == 1 ? $product->inventory + $request->amount : $product->inventory - $request->amount;
        $product->save();

        $inventory = New Inventory;
        $inventory->date = $request->date;
        $inventory->product_id = $request->product_id;
        $inventory->amount = $request->amount;
        $inventory->type = $request->type;
        $inventory->price = $request->price;

        $inventory->save();
        return redirect()->route('inventory')->with('success','Add product Success');
    }

    public function get_edit(Request $request){
        // $data['name'] = 'Edit';
        $product = Inventory::select('inventory.*', 'product.name as product_name')->where('inventory.id', $request->id)
        ->join('product','product.id','product_id')->first();
        // $category = Category::where('status',1)->get(); 
        $result = [
            'success' => true,
            'inventory' =>  $product,           
        ];
        return json_encode($result);
        // return view('admin.product.add_or_edit',$data);
    }

    public function post_edit(Request $request){

        $inventory = Inventory::find($request->id);
        $product = Product::find($request->product_id);

        if( $request->type == $inventory->type ){
            if($request->type == 1){
                if($request->amount >= $inventory->amount) {
                    $product->inventory = $product->inventory + $request->amount - $inventory->amount;
                } else{
                    $product->inventory = $product->inventory - ($inventory->amount - $request->amount);
                }
            } else{
                if($request->amount >= $inventory->amount) {
                    $product->inventory = $product->inventory - ($request->amount - $inventory->amount);
                } else{
                    $product->inventory = $product->inventory + ($inventory->amount - $request->amount);
                }
            }
        } else{
            if($request->type == 1){ 
                $product->inventory = $product->inventory + $request->amount + $inventory->amount;
            } else{
                $product->inventory = $product->inventory - $request->amount - $inventory->amount;
            }
        }


        $inventory->price = $request->price;
        $inventory->amount = $request->amount;
        $inventory->type = $request->type;
        $inventory->date = $request->date;
        $product->save();
        $inventory->save();

        return json_encode(['success'=>true]);
        // return back()->with('success','Edit product Success');
    }

    public function delete(Request $request){ 
        if($request->id){ 
            $inventory = Inventory::findOrFail($request->id);
            $product = Product::find($inventory->product_id);

            if($inventory->type == 1){
                $product->inventory = $product->inventory - $inventory->amount;
            } else{
                $product->inventory = $product->inventory + $inventory->amount;
            }
            $product->save();
            $inventory->delete();
            return "Delete Success";
        }
    }
}
