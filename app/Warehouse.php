<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Warehouses Model.
 * The relationships between PRODUCTS and WAREHOUSES go here.
 */
class Warehouse extends Model
{
    protected $table = 'warehouses';
    protected $primaryKey = 'id';

    
    // A product belongs to a warehouse
    public function product() {
        return $this->belongsTo(Product::class);
    }
}
