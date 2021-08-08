<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CreateProduct;
use App\Http\Requests\UpdateProduct;
use App\Category;
use App\Warehouse;
use App\Product;


/**
 * Interacts with the data base.
 * The controller is just a middleman between a ROUTE and a VIEW.
 * It also can connect with a MODEL and grab the data from the DB and display it in the VIEW.
 */
class ProductController extends Controller
{
    

    /**
     * SHOW ALL PRODUCTS
     * @return view
     */
    public function showProducts() {
        $products = Product::paginate(10);
        
        return view('products', compact('products'));
    }


    /**
     * CREATE PRODUCT
     * @return view
     */
    public function createProduct() {
        return view('createProduct');
    }


    /**
     * SAVE PRODUCT
     * @return menssage
     */
    public function saveProduct(CreateProduct $request) {
        $product = new Product;
        $warehouse = new Warehouse;
        $category = new Category;

        
        // Takes all the fields of the from at createProduct.blade.php
        $product->product_name = $request->pname;
        $product->product_price = $request->pprice;
        $product->product_category = $request->pcategory;
        $product->product_warehouses_1 = $request->pwarehouses_1;
        $product->product_warehouses_2 = $request->pwarehouses_2;
        $product->product_warehouses_3 = $request->pwarehouses_3;
        $product->product_notes = $request->pnotes;

        $product->save();

        // Takes all the fields from $product
        $warehouse->product_id = $product->id;
        $warehouse->product_warehouses_1 = $product->product_warehouses_1;
        $warehouse->product_warehouses_2 = $product->product_warehouses_2;
        $warehouse->product_warehouses_3 = $product->product_warehouses_3;

        $warehouse->save();

        // Takes all the fields from $product
        $category->product_id = $product->id;
        $category->product_category = $product->product_category;

        $category->save();

        return redirect()->back()->with('success', 'Product has been added successfully.');
    }


    /**
     * VIEW ONE PRODUCT
     * @return view
     */
    public function viewProduct($id) {
        $product = Product::find($id);
        
        return view('viewproduct', compact('product'));
    }
    

    /**
     * EDIT ONE PRODUCT
     * @return message
     */
    public function updateProduct(UpdateProduct $request, $id) {
        $product = Product::find($id);
        $warehouse = new Warehouse;
        $category = new Category;

        //  DATABASE                    FORM
        $product->product_name = $request->pname;
        $product->product_price = $request->pprice;
        $product->product_category = $request->pcategory;
        $product->product_warehouses_1 = $request->pwarehouses_1;
        $product->product_warehouses_2 = $request->pwarehouses_2;
        $product->product_warehouses_3 = $request->pwarehouses_3;
        $product->product_notes = $request->pnotes;
        
        $product->save();

        // Takes all the fields from $product
        $warehouse->product_id = $product->id;
        $warehouse->product_warehouses_1 = $product->product_warehouses_1;
        $warehouse->product_warehouses_2 = $product->product_warehouses_2;
        $warehouse->product_warehouses_3 = $product->product_warehouses_3;
        
        $warehouse->save();

        // Takes all the fields from $product
        $category->product_id = $product->id;
        $category->product_category = $product->product_category;
        
        $category->save();
    
        return redirect()->back()->with('success', 'Product has been updated successfully.');
    }

    /**
     * DELETE ONE PRODUCT
     * @return message
     */
    public function deleteProduct(Request $request, $id) {

        $this->validate($request, [
            'productid' => 'required',
        ]);

        if($id == $request->productid) {
            $product = Product::find($id);
            $product->delete();
    
            return redirect()->back()->with('success', 'Product has been updated successfully.');
        }

        return redirect()->back()->withErrors('danger', 'Wrong product ID!');
    }

}
