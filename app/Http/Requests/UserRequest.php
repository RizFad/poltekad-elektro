<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        if ($this->isMethod('POST')) {
            return [
                'name' => 'required|unique:users,name', 
                'email' => 'required|email|unique:users,email', 
                'password' => 'required|min:4', 
                'department' => 'required', 
            ];
        }

        return $data;
    }
}
