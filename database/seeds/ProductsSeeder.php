<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Product;
use App\Category;
use App\Warehouse;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        // Seed the DB with 32 products
        for ($seedIterations = 32; $seedIterations > 0; $seedIterations--) {
            
            $product = new Product();
            $warehouse = new Warehouse();
            $category = new Category();
    
            // Seed Products
            $product->product_name = "Seeder name";
            $product->product_price = 69;
            $product->product_category = "Clothes";
            $product->product_warehouses_1 = "N-0";
            $product->product_warehouses_2 = "";
            $product->product_warehouses_3 = "";
            $product->product_notes = "Seeder notes";
    
            $product->save();
    
            // Seed Warehouses from $product
            $warehouse->product_id = $product->id;
            $warehouse->product_warehouses_1 = $product->product_warehouses_1;
            $warehouse->product_warehouses_2 = $product->product_warehouses_2;
            $warehouse->product_warehouses_3 = $product->product_warehouses_3;
    
            $warehouse->save();
        
            // Seed Category from $product
            $category->product_id = $product->id;
            $category->product_category = $product->product_category;
    
            $category->save();
        }
    }
}
