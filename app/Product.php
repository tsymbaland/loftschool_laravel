<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $primaryKey = 'id';
    protected $fillable = ['name', 'price', 'category_id', 'description', 'photo'];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }
}
