@extends('admin.master')
@section('maincontent')
<h1>Add Product</h1>
<hr/>
<h3>{{ Session::get('msg') }}</h3>
{!! Form::open(['url' => '/save-product', 'method' => 'POST',
'enctype' => 'multipart/form-data']) !!}
<div class="form-group">
    <label class="control-label col-sm-2">Product Name:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="productName" name="productName" placeholder="Enter Product Name" >
    </div>
  </div>
<br/> <br/> <br/>
  <div class="form-group">
    <label class="control-label col-sm-2">Product Category:</label>
    <div class="col-sm-10"> 
        <select class="form-control" id="productCategory" name="productCategory">
            <option>----Select Product Category----</option>
            @foreach($categories as $category)
            <option value="{{$category->id}}">{{ $category->categoryName }}</option>
            @endforeach
        </select>
    </div>
  </div>
<br/> <br/>
<div class="form-group">
    <label class="control-label col-sm-2">Product Price:</label>
    <div class="col-sm-10">
        <input type="number" class="form-control" id="productPrice" name="productPrice" placeholder="Enter Product Price" >
    </div>
</div>
<br/> <br/>
<div class="form-group">
    <label class="control-label col-sm-2">Product Quantity:</label>
    <div class="col-sm-10">
        <input type="number" class="form-control" id="productQuantity" name="productQuantity" placeholder="Enter Product Quantity" >
    </div>
</div>
<br/> <br/>
<div class="form-group">
    <label class="control-label col-sm-2">Product Description:</label>
    <div class="col-sm-10">
        <textarea class="form-control" id="productDescription" name="productDescription" placeholder="Enter Product Description" ></textarea>
    </div>
</div>
<br/> <br/> <br/> <br/>
<div class="form-group">
    <label class="control-label col-sm-2">Product Picture:</label>
    <div class="col-sm-10">
        <input type="file" name="productPicture" id="productPicture">
    </div>
</div>
<br/> <br/>
  <div class="form-group">
    <label class="control-label col-sm-2">Publication Status:</label>
    <div class="col-sm-10"> 
        <select class="form-control" id="publicationStatus" name="publicationStatus">
            <option>----Select Publication Status----</option>
            <option value="1">Published</option>
            <option value="0">Unpublished</option>
        </select>  
    </div>
  </div>
 <br/> <br/> 

  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success btn-block">Submit</button>
    </div>
  </div>
 {!! Form::close() !!}
@endsection