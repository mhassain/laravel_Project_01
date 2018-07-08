<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Category;

use DB;

class CategoryController extends Controller
{
   public function addCategory(){
       return view('admin.category.addCategory');
   }
   
   public function saveCategory(Request $request){
       
       $this->validate($request, [
           'categoryName' => 'required|min:3|max:15|unique:categories',
           'categoryDescription' => 'required',
           'publicationStatus' => 'required'
           ]);
       
    $categories = new Category();
    
    $categories->categoryName = $request->categoryName;
    $categories->categoryDescription = $request->categoryDescription;
    $categories->publicationStatus = $request->publicationStatus;
    $categories->save();
    
    return redirect('/add-category')->with('msg','Category save in database successfully');
   }
   
   public function manageCategory(){
       $categories = DB::table('categories')->paginate(10);
       return view ('admin.category.manageCategory',['categories'=> $categories]);
   }
   
   public function editCategory($id){
       $categoryById = Category::where('id',$id)->first();
       
       return view('admin.category.editCategory', ['categoryById'=> $categoryById]);
     
   }
   
   public function updateCategory(Request $request){
        $category = Category::find($request->categoryId);
       
        $category->categoryName = $request->categoryName;
        $category->categoryDescription = $request->categoryDescription;
        $category->publicationStatus = $request->publicationStatus;
        $category->save();
    
        
       return redirect('/manage-category')->with('msg','Category updated successfully'); 
   }
   
    public function deleteCategory($id){
         $category = Category::find($id);
         $category->delete();
         
         return redirect('/manage-category')->with('msg','Category deleted successfully'); 
    }
}
