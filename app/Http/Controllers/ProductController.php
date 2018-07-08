<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use DB;

class ProductController extends Controller {

    public function addProduct() {
        $categories = Category::where('publicationStatus', '1')->get();

        return view('admin.product.addProduct', ['categories' => $categories]);
    }

    public function saveProduct(Request $request) {

//        dd($request->all());

        $product = new Product();

        $product->productName = $request->productName;
        $product->categoryId = $request->productCategory;
        $product->productPrice = $request->productPrice;
        $product->productQuantity = $request->productQuantity;
        $product->productDescription = $request->productDescription;
        $product->productPicture = 'picture';
        $product->publicationStatus = $request->publicationStatus;
        $product->save();


        $lastId = $product->id;
        $productPic = $request->file('productPicture');
        $name = $lastId . $productPic->getClientOriginalName();
        $uploadPath = 'public/uploadPic/';
        $productPic->move($uploadPath, $name);
        $imageUrl = $uploadPath . $name;


        $updateImage = Product::find($lastId);
        $updateImage->productPicture = $imageUrl;
        $updateImage->save();

        return redirect('/add-product')->with('msg', 'Product Saved into Database Successfully');
    }

    public function manageProduct() {
        $products = DB::table('products')
                ->join('categories', 'products.categoryId', '=', 'categories.id')
                ->select('products.*', 'categories.categoryName')
                ->get();

        return view('admin.product.manageProduct', ['products' => $products]);
    }

    public function viewProduct($id) {
        $productById = DB::table('products')
                ->join('categories', 'products.categoryId', '=', 'categories.id')
                ->select('products.*', 'categories.categoryName')
                ->where('products.id', $id)
                ->first();

        return view('admin.product.viewProduct', ['product' => $productById]);
    }

    public function editProduct($id) {
        $productById = DB::table('products')
                ->join('categories', 'products.categoryId', '=', 'categories.id')
                ->select('products.*', 'categories.categoryName')
                ->where('products.id', $id)
                ->first();
        $categories = Category::all();

        return view('admin.product.editProduct', ['product' => $productById,
            'categories' => $categories]);
    }

    public function updateProduct(Request $request) { 

        $product = Product::find($request->productId);
        $productImage = $request->file('productPicture');

        if ($productImage) {
           $imageName = $request->productId.$productImage->getClientOriginalName();
           $uploadPath = 'public/uploadPic/';
           
           $productImage->move($uploadPath,$imageName);
           $imageUrl = $uploadPath.$imageName;
           
           
        } else {
           $imageUrl = $product->productPicture;
        }
        
        $product->productName = $request->productName;
        $product->categoryId = $request->productCategory;
        $product->productPrice = $request->productPrice;
        $product->productQuantity = $request->productQuantity;
        $product->productDescription = $request->productDescription;
        $product->productPicture = $imageUrl;
        $product->publicationStatus = $request->publicationStatus;
        $product->save();
        
        return redirect('/manage-product')->with('msg', 'Product Updated Successfully');
    }
    
    public function deleteProduct($id){
        $product = Product::find($id);
        unlink($product->productPicture);
        $product->delete();
        
        return redirect('/manage-product')->with('msg', 'Product Deleted Successfully');
    }

}
