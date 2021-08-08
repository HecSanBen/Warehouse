<!--------------------------------------------------------------------------
    This is Products's View.

    Here I will put everthing related with Products Page ('/products')
-------------------------------------------------------------------------->

@extends('includes.master')


@section('content')


    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    <!-- Check if it has succeeded -->
    @include('includes.validation')


    <h1 class="tittle">View & Edit page</h1>


    <form method="post" action="{{ route('updateproduct', $product->id) }}">

        {!! csrf_field() !!}

        <label>Name</label>
        <input type="text" name="pname" placeholder="Product name (3 char. min.)"
            value="{{ $product->product_name }}"><br>

        <label>Price</label>
        <input type="text" name="pprice" placeholder="Product price (€)" value="{{ $product->product_price }}"><br>

        <label>Category</label>
        <select id="pcategory" name="pcategory">
            <option value="Clothes">Clothes</option>
            <option value="Garden">Garden</option>
            <option value="Furnitures">Furnitures</option>
            <option value="Kitchen">Kitchen</option>
        </select><br>

        <label>Warehouses</label>
        <select id="pwarehouses_1" name="pwarehouses_1">
            <option value="N-0">N-0</option>
            <option value="N-1">N-1</option>
            <option value="NE-0">NE-0</option>
            <option value="NW-0">NW-0</option>
        </select>
        <select id="pwarehouses_2" name="pwarehouses_2">
            <option value=""> </option>
            <option value="N-0">N-0</option>
            <option value="N-1">N-1</option>
            <option value="NE-0">NE-0</option>
            <option value="NW-0">NW-0</option>
        </select>
        <select id="pwarehouses_3" name="pwarehouses_3">
            <option value=""> </option>
            <option value="N-0">N-0</option>
            <option value="N-1">N-1</option>
            <option value="NE-0">NE-0</option>
            <option value="NW-0">NW-0</option>
        </select><br>

        <textarea name="pnotes" placeholder="Notes about the product ..." rows="10"
            cols="100">{{ $product->product_notes }}</textarea><br>
        <button type="submit" class="create_button">Save</button><br>

    </form>


    <!-- Back to PRODUCTS -->
    <form action="/products">
        <button class="cancel_button">Cancel</button>
    </form>

@endsection
