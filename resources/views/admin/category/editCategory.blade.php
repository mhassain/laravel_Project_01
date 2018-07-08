@extends('admin.master')

@section('maincontent')
<h1>Edit Category</h1>
<hr/>

{!! Form::open(['url' => '/update-category', 'method' => 'POST', 'name' => 'editForm']) !!}
  <div class="form-group">
    <label for="categoryName">Category Name:</label>
    <input type="text" class="form-control" id="categoryName" name="categoryName" value="{{ $categoryById->categoryName }}">
  </div>
  <div class="form-group">
    <label for="categoryDescription">Category Description:</label>
    <textarea class="form-control" name="categoryDescription" id="categoryDescription">
        {{ $categoryById->categoryDescription }}
    </textarea>
  </div>
    <div class="form-group">
    <label for="publicationStatus">Publication Status:</label>
    <select class="form-control" name="publicationStatus" id="publicationStatus">
         <option>----Select Publication Status----</option>
            <option value="1">Published</option>
            <option value="0">Unpublished</option>
    </select>
  </div>
    <input type="hidden" name="categoryId" value="{{ $categoryById->id }}">  
    
  <button type="submit" class="btn btn-primary btn-block">Submit</button>
{!! Form::close() !!}
<script>
    document.forms['editForm'].elements['publicationStatus'].value= {{$categoryById->publicationStatus}}
</script>
@endsection