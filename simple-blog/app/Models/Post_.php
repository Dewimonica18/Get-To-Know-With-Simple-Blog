<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => 'Alan',
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus corrupti ipsa perspiciatis voluptatem maiores molestias! Voluptatibus reiciendis dolore, ipsum laboriosam similique commodi ad, molestiae earum vero, deleniti exercitationem rem esse dolor quas maxime temporibus. Quaerat voluptas quos dolores excepturi iusto, soluta earum. Necessitatibus asperiores error quia aliquam velit illum incidunt qui consectetur minima facere magni dignissimos cumque distinctio dolore, exercitationem doloribus nostrum cum eum cupiditate nam dicta laborum perspiciatis consequatur neque! Recusandae nemo provident corrupti in accusamus incidunt a aperiam. Nisi, incidunt fuga? Quaerat, consequatur vero! Provident sapiente explicabo eos incidunt? Architecto fugit tenetur omnis blanditiis ullam. Nisi, fugiat ea."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => 'Alex',
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi ab atque ipsum nemo magnam consequuntur commodi, quam nobis velit odit omnis maiores iusto molestias at, dolore laudantium iure. Corporis, voluptatum minima vel quis sed, commodi ratione incidunt nemo laudantium a quos, iusto tempore molestias deserunt? Tenetur excepturi officiis optio, ut aut ea dicta quaerat provident quae odio quos repellat quasi corporis amet beatae velit cupiditate placeat harum quia laboriosam molestiae? Molestias sapiente, a dolor in veritatis eaque enim cum fugiat, voluptas delectus fuga perspiciatis molestiae cupiditate maiores praesentium illo. Unde sequi quibusdam numquam aliquid, dolore autem eaque! Tempore praesentium eius facilis? Itaque pariatur, voluptatibus totam rem repellat voluptas cupiditate. Incidunt libero eos blanditiis, dignissimos eius corporis, expedita dolores necessitatibus deleniti natus magnam dolore harum deserunt explicabo aut molestias assumenda! Ea, deleniti in qui minima impedit eos. Impedit eius rem enim molestiae reprehenderit quam debitis dolores, sapiente odit provident, dolor accusantium."
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
