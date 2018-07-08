@extends('admin.master')

@section('maincontent')
<h1>Add Category</h1>
<hr/>
<h3>{{ Session::get('msg') }}</h3>
{!! Form::open(['url' => '/save-category', 'method' => 'POST']) !!}
  <div class="form-group">
    <label class="control-label col-sm-2">Category Name:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="Enter Category Name" >
 
    </div>
  </div>
<br/> <br/> <br/>

  <div class="form-group">
    <label class="control-label col-sm-2">Category Description:</label>
    <div class="col-sm-10"> 
        <textarea type="text" class="form-control" col='10' rows="5" id="categoryDescription" name="categoryDescription" placeholder="Enter Category Description"></textarea>
    </div>
  </div>
<br/> <br/> <br/>
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
 <br/> <br/> <br/> <br/>
 
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success btn-block">Submit</button>
    </div>
  </div>
{!! Form::close() !!}
    <br/> <br/>
    @include('admin.error.errors')
@endsection