<!--------------------------------------------------------------------------
    This is Products Create´s View.

    Here I will put everthing related with Products Create ('/products/create')
-------------------------------------------------------------------------->

@extends ('includes.master')


@section('content')

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

    <!-- Check if it has succeeded -->
    @include('includes.validation')


    <h1 class="tittle">Create product</h1>


    <!-- Back to PRODUCTS -->
    <form action="/products">
        <button class="button">Show all products</button>
    </form>


    <!-- PRODUCTS creation form -->
    <form id="createForm" method="post" action="{{ route('saveproduct') }}">

        {!! csrf_field() !!}

        <input id="pname" type="text" name="pname" placeholder="Product name (3 char. min.)" value="{{ old('pname') }}"
            required><br>

        <input type="text" name="pprice" placeholder="Product price (€)" value="{{ old('pprice') }}" required><br>

        <label>Category</label>
        <select id="pcategory" name="pcategory">
            <option value="Clothes">Clothes</option>
            <option value="Garden">Garden</option>
            <option value="Furnitures">Furnitures</option>
            <option value="Kitchen">Kitchen</option>
        </select><br>

        <label>Warehouse/s</label>
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

        <textarea name="pnotes" placeholder="Notes about the product ..." rows="10" cols="100"
            required>{{ old('pnotes') }}</textarea><br>

        <button type="submit" value="submit" class="create_button">Create product</button><br>

    </form>

    <!-- Go to PRODUCTS -->
    <form action="/products">
        <button class="back_button">Cancel</button>
    </form>

    <script>
        if ($("#createForm").length > 0) {
            $("#createForm").validate({
                rules: {
                    pname: {
                        required: true,
                        minlength: 3,
                    },
                    pprice: {
                        required: true,
                        minlength: 1,
                    },
                    pcategory: {
                        required: true,
                    },
                    pwarehouses_1: {
                        required: true,
                    },
                    pwarehouses_2: {
                        required: false,
                    },
                    pwarehouses_3: {
                        required: false,
                    },
                    pnotes: {
                        required: true,
                        minlength: 1,
                    },
                },

                messages: {
                    pname: {
                        required: "Please enter name",
                        minlength: "Minimun 3 characters.",
                    },
                    pprice: {
                        required: "Please enter price",
                        minlength: "Minimun 1 character."
                    },
                    pnotes: {
                        required: "Please enter some notes.",
                        minlength: "Minimun 1 character."
                    },
                },
            })
        }
    </script>

@endsection
