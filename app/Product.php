<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Product Model.
 */
class Product extends Model
{
    protected $table = 'products';
    protected $primaryKey = 'id';
    protected $fillable = ['product_name',
                            'product_price',
                            'product_category',
                            'product_warehouses_1',
                            'product_warehouses_2',
                            'product_warehouses_2',
                            'product_notes'];


    public function productRelationWarehouses() {
        return $this->hasMany(Warehouse::class);
    }

    
    public function productRelationCategory() {
        return $this->hasOne(Category::class);
    }
}
