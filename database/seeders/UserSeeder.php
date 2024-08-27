<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role = Role::where('name', 'Super Admin')->first();
        $roleCustomer = Role::where('name', 'Customer')->first();

        $user = User::create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('password'),
            'department' => 'Umum'
        ]);

        $userCustomer = User::create([
            'name' => 'user',
            'email' => 'user@gmail.com',
            'password' => bcrypt('user'),
            'department' => 'Customer'
        ]);

        $user->assignRole($role);
        $userCustomer->assignRole($roleCustomer);
    }
}
