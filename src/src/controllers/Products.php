<?php

class Products
{
    public function index()
    {
        require_once "src/models/Product.php";

        $model = new Product();

        $products = $model->getData();

        require_once "views/products_index.php";
    }
}