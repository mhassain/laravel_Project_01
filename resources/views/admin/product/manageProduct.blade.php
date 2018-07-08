@extends('admin.master')
@section('maincontent')
<h1>Manage Product</h1>
<h3>{{Session::get('msg')}}</h3>
<table class="table table-striped table-bordered">
    <thead>
      <tr>
          <th>SI</th>
        <th>Product Name</th>
        <th>Category Name</th>
        <th>Product Price</th>
        <th>Product Quantity</th>
        <th>Product Description</th>
        <th>Product Picture</th>
        <th>Publication Status</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <?php
            $i = 0;
        ?>
        @foreach ($products as $product)
      <tr>
        <td>{{++$i}}</td>
        <td>{{ $product->productName }}</td>
        <td>{{ $product->categoryName}}</td>
        <td>{{ $product->productPrice}}</td>
        <td>{{ $product->productQuantity}}</td>
        <td>{{ $product->productDescription}}</td>
        <td><img src="{{ asset($product->productPicture)}}" width="100"></td>  
        <td>{{ $product->publicationStatus == 1 ?'Published':'Unpublished' }}</td>
        <td><a href="{{url('/view-product/'.$product->id)}}">View</a> |
            <a href="{{url('/edit-product/'.$product->id)}}"> Edit</a> | 
            <a href="{{url('/delete-product/'.$product->id)}}" 
               onclick="return confirm('Do you want to delete it?')">Delete</a></td>
      </tr>
      @endforeach
    </tbody>
  </table>
@endsection