@extends('admin.master')

@section('maincontent')
<h1>View Product Details</h1>
<hr>
<img src="{{asset($product->productPicture)}}" width="200">
<br/><br/>
<table>
    <tr>
        <td>Product Name:</td><td></td><td>{{ $product->productName }}</td>
    </tr>
     <tr>
        <td>Category Name:</td><td></td><td>{{ $product->categoryName }}</td>
    </tr>
     <tr>
        <td>product Price:</td><td></td><td>{{ $product->productPrice }}</td>
    </tr>
     <tr>
        <td>Product Quantity:</td><td></td><td>{{ $product->productQuantity }}</td>
    </tr>
     <tr>
        <td>Product Description:</td><td></td><td>{{ $product->productDescription }}</td>
    </tr>
     <tr>
        <td>Publication Status:</td><td></td><td>{{ $product->publicationStatus == 1 ?'Published':'Unpublished' }}</td>
    </tr>
</table>
<br/><br/>
<a href="{{url('/manage-product')}}">Back to Manage Product</a>
@endsection