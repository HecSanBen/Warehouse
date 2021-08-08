<!--------------------------------------------------------------------------
    This is Home's View.

    Here I will put everthing related with Home Page ('/')
-------------------------------------------------------------------------->

@extends('includes.master')


@section('content')

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    <h1 class="home_tittle">HOME PAGE</h1>

    <!-- Go to PRODUCTS -->
    <form action="/products">
        <button class="form_button">Open product list</button>
    </form>

    <p>
        Author: Héctor Antonio Santana Beneyto
    </p>

@endsection
