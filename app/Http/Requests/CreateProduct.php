<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateProduct extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'pname' => 'required|min:3',
            'pprice' => 'required',
            'pcategory' => 'required',
            'pwarehouses_1' => 'required',
            'pwarehouses_2' => 'nullable',
            'pwarehouses_3' => 'nullable',
            'pnotes' => 'required'
        ];
    }
}
