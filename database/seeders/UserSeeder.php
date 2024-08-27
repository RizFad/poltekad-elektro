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
            'password' => bcrypt('admin'),
            'department' => 'Umum'
        ]);

        $user1 = User::create([
            'name' => 'Aguk',
            'email' => 'aguk@gmail.com',
            'password' => bcrypt('aguk1974'),
            'department' => 'Umum'
        ]);

        $userCustomer = User::create([
            'name' => 'Rudy',
            'email' => 'rudy@gmail.com',
            'password' => bcrypt('rudy'),
            'department' => 'Customer'
        ]);

        $user->assignRole($role);
        $user1->assignRole($role);
        $userCustomer->assignRole($roleCustomer);
    }
}
