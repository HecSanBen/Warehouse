<!--------------------------------------------------------------------------
    This is Products's View.

    Here I will put everthing related with Products Page ('/products')
-------------------------------------------------------------------------->

@extends('includes.master')


@section('content')

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    <h1 class="tittle">Products List</h1>

    <div class="bc_buttons">
        <!-- Back to HOME -->
        <form action="/">
            <button class="back_button">Back</button>
        </form>

        <!-- Go to CREATE -->
        <form action="/products/create">
            <button class="button">Create product</button>
        </form>
    </div>


    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Category</th>
                <th>Warehouse/s</th>
                <th>Notes</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($products as $product)
                <tr>
                    <td>{{ $product->id }}</td>
                    <td>{{ $product->product_name }}</td>
                    <td>{{ $product->product_price }} €</td>
                    <td>{{ $product->product_category }}</td>
                    <td>
                        {{ $product->product_warehouses_1 }}<br>
                        {{ $product->product_warehouses_2 }}<br>
                        {{ $product->product_warehouses_3 }}
                    </td>
                    <td>{{ $product->product_notes }}</td>
                    <td>
                        <!-- View & Edit product -->
                        <form action="{{ route('viewproduct', $product->id) }}">
                            <button class="edit_button">Edit</button>
                        </form>
                    </td>
                    <td>
                        <!-- Delete product -->
                        <form method="post" action="{{ route('deleteproduct', $product->id) }}">

                            {!! csrf_field() !!}

                            <input type="text" name="productid" placeholder="Enter product ID" class="delete_input"
                                required>
                            <button type="submit" class="delete_button">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {{ $products->links() }}

@endsection
