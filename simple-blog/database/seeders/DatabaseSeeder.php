<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        

        User::create([
            'name' => 'Dewi Monica',
            'username' => 'dewimonica',
            'email' => 'dewimonica1899@yahoo.com',
            'password' => bcrypt('password')
        ]);

        // User::create([
        //     'name' => 'Devina Yasodhara',
        //     'email' => 'devina@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);
        
        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();
        
        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident adipisci hic quia architecto, veritatis vitae consequuntur velit veniam ab rem.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis quae reprehenderit dolore molestias mollitia veritatis earum velit qui dolores eius? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Soluta error iste voluptas quasi, optio temporibus atque ipsa incidunt illum delectus nisi? Non delectus soluta quae vitae reiciendis neque quasi repellat! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptate pariatur incidunt est laudantium, et ullam, qui nesciunt excepturi rem eos ducimus ipsum esse! Delectus, saepe.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident adipisci hic quia architecto, veritatis vitae consequuntur velit veniam ab rem.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis quae reprehenderit dolore molestias mollitia veritatis earum velit qui dolores eius? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Soluta error iste voluptas quasi, optio temporibus atque ipsa incidunt illum delectus nisi? Non delectus soluta quae vitae reiciendis neque quasi repellat! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptate pariatur incidunt est laudantium, et ullam, qui nesciunt excepturi rem eos ducimus ipsum esse! Delectus, saepe.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident adipisci hic quia architecto, veritatis vitae consequuntur velit veniam ab rem.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis quae reprehenderit dolore molestias mollitia veritatis earum velit qui dolores eius? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Soluta error iste voluptas quasi, optio temporibus atque ipsa incidunt illum delectus nisi? Non delectus soluta quae vitae reiciendis neque quasi repellat! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptate pariatur incidunt est laudantium, et ullam, qui nesciunt excepturi rem eos ducimus ipsum esse! Delectus, saepe.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident adipisci hic quia architecto, veritatis vitae consequuntur velit veniam ab rem.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis quae reprehenderit dolore molestias mollitia veritatis earum velit qui dolores eius? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Soluta error iste voluptas quasi, optio temporibus atque ipsa incidunt illum delectus nisi? Non delectus soluta quae vitae reiciendis neque quasi repellat! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptate pariatur incidunt est laudantium, et ullam, qui nesciunt excepturi rem eos ducimus ipsum esse! Delectus, saepe.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
