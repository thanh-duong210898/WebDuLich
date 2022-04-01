@extends('admin.layouts.app')
@section('title','Product List')
@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('admin/vendor/datatables/dataTables.bootstrap4.min.css') }}">
<link href="{{ asset('admin/vendor/summernote/summernote-lite.css') }}" rel="stylesheet">
<style>
    .modal-lg{
      max-width: 80%;
    }
  </style>
@stop
@section('content')
<div class="container-fluid">
    <!-- Page Heading -->
    <!-- <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">User List</h1>
   </div> -->
    <!-- Content Row -->
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><a href="{{ route('get_add_inventory') }}" class="btn btn-primary"> Thêm Nhập/Xuất</a></h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID </th>
                            <th>Tên Cây</th>
                            <th>Số lượng</th>
                            <th>Giá</th>
                            <th>Loại</th>
                            <th>Ngày</th>
                            <th>Tổng tiền</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Large modal -->
<div id="editModal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="container-fluid">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Nhập/Xuất</h6>
                    </div>
                    <div class="card-body">
                        <form role="form" id="editForm" method="post" enctype="multipart/form-data">
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
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy bỏ</button>
                                        <input type="submit" class="btn btn-primary" value="Lưu" />
                                        <input type="hidden" value="" name="id">
                                        <input type="hidden" value="" name="product_id">
                                   </div>
                                </div>
                                </div>
                             </div>


                            {{-- <div class="row">
                                <div class="col-lg-8 push-lg-2 personal-info">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label form-control-label">Cây</label>
                                                <div class="col-lg-4">                     
                                                <select class="form-control" name="product_id" disabled id="selectProduct">
                                                    @foreach ($product as $element)
                                                        <option 
                                                        value="{{$element->id}}">{{$element->name}}</option>
                                                    @endforeach
                                                </select>
                                                </div>

                                                <label class="col-lg-2 col-form-label form-control-label">Số lượng</label>
                                                    <div class="col-lg-4">                     
                                                    <input required="" class="form-control @error('inventory') is-invalid @enderror" type="number" name="amount" value="0" placeholder="0" />
                                                    </div>
                                            </div>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                       <div class="form-group row">
                                          <label class="col-lg-2 col-form-label form-control-label"> Loại</label>
                                          <div class="col-lg-4">                     
                                             <select class="form-control" name="type" id="selectType">
                                                    <option value="1"> Nhập </option>
                                                    <option value="2"> Xuất </option>
                                             </select>
                                          </div>
                     
                                          <label class="col-lg-2 col-form-label form-control-label">Giá</label>
                                          <div class="col-lg-4">                     
                                             <input required="" class="form-control @error('price') is-invalid @enderror" type="number" name="price" value="{{isset($product->price) ? $product->price : old('name')}}" placeholder="0" />
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                            <div class="form-group row">
                                <label class="col-lg-2 col-form-label form-control-label"></label>
                                <div class="col-lg-9">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy bỏ</button>
                                    <input type="submit" class="btn btn-primary" value="Lưu" />
                                    <input type="hidden" value="" name="id">
                                    <input type="hidden" value="" name="product_id">
                                </div>
                            </div>
                            </div> --}}
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- <div id="inventoryModal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="container-fluid">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Nhập xuất cây</h6>
                    </div>
                    <div class="card-body">
                        <form role="form" id="inventoryForm" method="post" enctype="multipart/form-data">
                            @csrf
                            <div>
                                <label class="" id="labelInventory"></label>
                                <div class="form-group row">
                                    <div class="col-4 row">
                                        <label class="col-4 col-form-label form-control-label">Số lượng</label>
                                        <div class="col-8">
                                            <input required="" class="form-control @error('amount') is-invalid @enderror" type="text" name="amount" value="" placeholder="0" />
                                        </div>
                                    </div>
                                    <div class="col-4 row">
                                        <label class="col-lg-4 col-form-label form-control-label">Giá</label>
                                        <div class="col-lg-8">
                                            <input required="" class="form-control @error('price') is-invalid @enderror" type="number" name="price" value="" placeholder="0" />
                                        </div>
                                    </div>

                                    <div class="col-4 row">                    
                                        <select class=" col-8 form-control" name="type" id="">
                                           <option value="1">Nhập</option> 
                                           <option value="2">Xuất</option> 
                                        </select>
                                     </div>

                                </div>

                                <div class="form-group row ">
                                    <label class="col-lg-4 col-form-label form-control-label"></label>
                                    <div class="col-lg-8">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy bỏ</button>
                                        <input type="submit" class="btn btn-primary" value="Lưu" />
                                        <input type="hidden" value="" name="product_id">
                                    </div>
                                </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --}}
@endsection
@section('script')
<script src="{{ asset('admin/vendor/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('admin/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>
<script>
$(document).ready(function() {

    table = $("#dataTable").DataTable({
        // dom: 'lifrtp',
        // processing:true,
        serverSide: true,
        ajax: {
            url: "{{ route('datatables_inventory') }}",
        },
        order: [[ 5, 'desc' ]],
        columns: [
            { data: 'id', name: 'id' },
            { data: 'product_name', name: 'product_name' },
            { data: 'amount', name: 'amount' },
            { data: 'price', name: 'price' },
            { data: 'type', name: 'type' },
            { data: 'date', name: 'date' },
            { data: 'total', name: 'total', orderable: false, searcheble: false },
            { data: 'action', name: 'action', orderable: false, searcheble: false },
        ],
        "fnDrawCallback": function() {
            $('.checkbox_type').bootstrapToggle();
        }
    });

    $(document).on('click', '.edit', function(e) {
        e.preventDefault();
        var id = $(this).attr('data-id');
        $.ajax({
            url: "{{ route('edit-inventory') }}",
            method: 'get',
            dataType: "json",
            data: { id: id },
            success: function(data) {
                if (data.success) {
                    var path = "{{ asset('upload/images') }}";
                    $("input[name='product_id']").val(data.inventory.product_id);
                    $("input[name='price']").val(data.inventory.price);
                    $("input[name='id']").val(data.inventory.id);
                    $("input[name='amount']").val(data.inventory.amount);
                    $("input[name='date']").val(data.inventory.date);
                    $("#selectProduct").val(data.inventory.product_id).find("option[value='" + data.inventory.product_id + "']").attr('selected', true);
                    $("#selectType").val(data.inventory.type).find("option[value='" + data.inventory.type + "']").attr('selected', true);
                    $("#editModal").modal("show");
                }
            },
            error: function() {
                toastr.error('Failed to edit product', 'Error !!');
            },
        });
    });

    $(document).on('click', '.delete', function(e) {
        e.preventDefault();
        var id = $(this).attr('data-id');
        if (confirm("Dồng ý xóa ??")) {
            $.ajax({
                url: "{{ route('inventory_delete') }}",
                method: 'post',
                data: { _token: '{{csrf_token()}}', id: id },
                success: function(data) {
                    if (data) {
                        toastr.success(data, 'Success !!');
                        table.draw();
                    }
                },
                error: function() {
                    toastr.error('Error delete', 'Error !!');
                },
            });
        } else return false;
    });

    $("#editForm").on("submit", function(e) {
        e.preventDefault();
        var form = $('#editForm')[0];
        var form_data = new FormData(form);
        console.log(form_data)
        $.ajax({
            url: "{{ route('postEditInventory') }}",
            method: "post",
            data: form_data,
            cache: false,
            contentType: false,
            processData: false,
            dataType: "json",
            success: function(data) {
                
                if (data.success) {
                    $("#editModal").modal("hide");
                    toastr.success("Edit Success!");
                    table.draw();
                }
            },
            error: function() {
                toastr.error("Failed to edit!");
            }
        });
    });

    $("#inventoryForm").on("submit", function(e) {
        e.preventDefault();
        var form = $('#inventoryForm')[0];
        var form_data = new FormData(form);
        $.ajax({
            url: "{{ route('addInventory') }}",
            method: "post",
            data: form_data,
            cache: false,
            contentType: false,
            processData: false,
            dataType: "json",
            success: function(data) {
                if (data.success) {
                    $("#inventoryModal").modal("hide");
                    toastr.success("Edit Product Success!");
                    table.draw();
                }
            },
            error: function() {
                toastr.error("Failed to edit product!");
            }
        });
    });

    // $(document).on('click', '.delete', function(e) {
    //     e.preventDefault();
    //     var id = $(this).attr('data-id');
    //     if (confirm("Are you sure delete this data?")) {
    //         $.ajax({
    //             url: "{{ route('product_delete') }}",
    //             method: 'post',
    //             data: { _token: '{{csrf_token()}}', id: id },
    //             success: function(data) {
    //                 if (data) {
    //                     toastr.success(data, 'Success !!');
    //                     table.draw();
    //                 }
    //             },
    //             error: function() {
    //                 toastr.error('Error delete', 'Error !!');
    //             },
    //         });
    //     } else return false;
    // });

    $(document).on('change', '.check_home_page', function(e) {
        e.preventDefault();
        var id = $(this).attr('data-id');
        console.log(id);
        $.ajax({
            url: "{{ route('checkHomePage') }}",
            method: "get",
            data: { id: id },
            success: function(data) {
                if (data) {
                    toastr.success(data);
                    table.draw();
                }
            },
            error: function() {
                toastr.error("Check Active Error");
            }
        });
    });

    $(document).on('change', '.check_trending', function(e) {
        e.preventDefault();
        var id = $(this).attr('data-id');
        console.log(id);
        $.ajax({
            url: "{{ route('checkTrendingProduct') }}",
            method: "get",
            data: { id: id },
            success: function(data) {
                if (data) {
                    toastr.success(data);
                    table.draw();
                }
            },
            error: function() {
                toastr.error("Check Active Error");
            }
        });
    });

    $(document).on('change', '.check_best_seller', function(e) {
        e.preventDefault();
        var id = $(this).attr('data-id');
        console.log(id);
        $.ajax({
            url: "{{ route('checkBestSeller') }}",
            method: "get",
            data: { id: id },
            success: function(data) {
                if (data) {
                    toastr.success(data);
                    table.draw();
                }
            },
            error: function() {
                toastr.error("Check Active Error");
            }
        });
    });

});

</script>
<script src="{{ asset('admin/js/upload_avatar.js') }}"></script>
<script src="{{ asset('admin/vendor/summernote/summernote-lite.js') }}"></script>
<script>
function Sumnernote() {
    $('#summernote').summernote();
    $('.note-icon-trash').trigger('click');
}

</script>
@stop
