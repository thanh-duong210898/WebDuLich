@extends('admin.layouts.app')
@section('title','Iventory '.$name)
@section('style')

<link href="vendor/summernote/summernote-lite.css" rel="stylesheet">
<style>
      .panel-heading{
         background: #f8f9fc;
      }
   </style>
@stop 
@section('content')
<div class="container-fluid">
   <div class="card shadow mb-4">
      <div class="card-header py-3">
         <h6 class="m-0 font-weight-bold text-primary">{{$name}} Nhập Xuất</h6>
      </div>
      <div class="card-body">
         <form role="form" method="post" enctype="multipart/form-data">
            @csrf
         <div class="row">

            <div class="col-lg-4 pb-3">
               <div class="row">
                  <label class="col-lg-4 col-form-label form-control-label">Cây:</label>
                        {{-- <div class="col-lg-10">                      --}}
                           <select class="col-lg-8 form-control" name="product_id" id="">
                              @foreach ($product as $element)
                                  <option 
                                  value="{{$element->id}}">{{$element->name}}</option>
                              @endforeach
                           </select>
                        {{-- </div> --}}
               </div>                     
            </div>

            <div class="col-lg-4 pb-3">
               <div class="row">
                  <label class="col-lg-4 col-form-label form-control-label">Số lượng:</label>
                        {{-- <div class="col-lg-8">                      --}}
                           <input required="" class="col-lg-8 form-control @error('inventory') is-invalid @enderror" type="number" name="amount" value="0" placeholder="0" />
                        {{-- </div> --}}
               </div>                     
            </div>

            <div class="col-lg-4 pb-3">
               <div class="row">
                  <label class=" col-lg-4 col-form-label form-control-label"> Loại:</label>
                        <select class="col-lg-8 form-control" name="type" id="">
                               <option value="1"> Nhập </option>
                               <option value="2"> Xuất </option>
                        </select>
               </div>                     
            </div>

            <div class="col-lg-4">
               <div class="row">
                  <label class="col-lg-4 col-form-label form-control-label">Giá</label>
                  {{-- <div class="col-lg-4">                      --}}
                     <input required="" class=" col-lg-8 form-control @error('price') is-invalid @enderror" type="number" name="price" value="0" placeholder="0" />
                  {{-- </div> --}}
               </div>                     
            </div>

            <div class="col-lg-4">
               <div class="row">
                  <label class=" col-lg-4 col-form-label form-control-label">Ngày:</label>
                  <input required="" class=" col-lg-8 form-control @error('date') is-invalid @enderror" type="date" name="date"  placeholder="0" />
               </div>                     
            </div>

            <div class="form-group col-lg-12 pt-3 ">
               <div class="row">
               {{-- <label class="col-lg-2 col-form-label form-control-label"></label> --}}
               <div class="col-lg-4 push-lg-4">                     
                  <a href="{{ route('inventory') }}" class="btn btn-secondary">Hủy</a>
                  <input type="submit" class="btn btn-primary" value="Lưu" />
               </div>
            </div>
            </div>
         </div>
         </form>
      </div>
   </div>
</div>
@endsection
@section('script')
@endsection