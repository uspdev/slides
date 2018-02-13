# Symfony Básico - Parte 1 - hasMany relationship e psych

Tenha instalado:

php7.1+, composer, mysql e git*

composer create-project symfony/skeleton symfony_basico

criar repo, commitar e enviar mudanças

symfony require maker
git status # commit
symfony require doctrine 
git status # commit

composer require --dev theofidry/psysh-bundle

create database symfony;
grant all privileges on symfony.* to symfony@localhost identified by 'symfony';
inserir informações no .env

php bin/console make:entity Post
php bin/console doctrine:migrations:diff
php bin/console doctrine:migrations:migrate
show tables

php bin/console make:entity Comment
php bin/console doctrine:migrations:diff
php bin/console doctrine:migrations:migrate

Adicionar os campos title e content na entity Post (as public)
Adicionar os campos title, content, author_email e post_id (unsigned e referenciando um post) na entity Comment (as public)
@ORM\ManyToOne(targetEntity="Rede", inversedBy="equipamentos")

# Frizar que no relacionamento do symfony, a configuração vale tanto para o modelo quando para o db

use Doctrine\Common\Collections\ArrayCollection;
public function __construct()
    {
        $this->comments = new ArrayCollection();
    }
    /**
     * @ORM\OneToMany(targetEntity="Equipamento",mappedBy="rede")
     */
    private $equipamentos;


Array collection em POst apontando para Comments

php bin/console doctrine:migrations:diff
php bin/console doctrine:migrations:migrate
show tables
desc Comment;
desc Post;

php bin/console psysh

$post = new App\Entity\Post
$post->title = "primeiro post"
$post->content = "texto maravilhoso sobre um super post."

ls
$em = $container->get('doctrine')->getManager()
$em->persist($post)
$em->flush()

$p = $em->getRepository('App\Entity\Post')
$posts = $p->findAll()

# listar todos títulos
foreach ($posts as $post) echo $post->title

$comment = new App\Entity\Comment
$comment->author_email = 'fulano@eu.com'
$comment->title = 'meu comentário'
$comment->content = 'Gostei muito do seu post'
$comment->post_id = $posts['id'==1]
$em->persist($comment)
em->flush()

select * from comment;

$comment2 = new App\Entity\Comment
$comment2->author_email = 'ciclano@eu.com'
$comment2->title = 'meu comentário 2'
$comment2->content = 'Eu não gostei'
$comment2->post = $posts['id'==1]
$em->persist($comment2)
$em->flush()

select * from comment;

$c = $em->getRepository('App\Entity\Comment')
$comments = $c->findAll()

select * from Comment;

$p->find(1)->comments->toArray()

$c->find(2)
$c->find(2)->post
$c->find(2)->post->title

[extra]
$em->createQuery('SELECT A.title FROM App:Post A WHERE A.id=2')->getResult()

$qb = $em->createQueryBuilder()
$qb->select('u')->from('App\Entity\Post', 'u')->where('u.id = 2')->getQuery()->getResult()

Criar um método em 
src/Repository/CommentRepository.php
e testar no console

####################################################3

# Laravel Básico - Parte 2 (hasManyThrough)
- [Parte 1 - Setup do projeto, hasMany relationship e Laravel Tinker](https://github.com/leandroramos/laravel_basico/tree/part1)
- [Parte 3 - Usando Factories](https://github.com/leandroramos/laravel_basico/tree/part3)

## Criar o model Authors
- php artisan make:model Author -m
- Colocar as colunas na tabela authors em database/migrations/create_authors_table.php
    ```php
    public function up()
    {
        Schema::create('authors', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email');
            $table->string('bio')->nullable();
            $table->timestamps();
        });
    }
    ```

## Adicionar o ID do autor ao Post
- php artisan make:migration add_author_id_to_posts --table=posts
- Colocar a coluna de chave estrangeira em database/migrations/add_author_id_to_posts.php
    ```php
    public function up()
    {
            Schema::table('posts', function (Blueprint $table) {
                $table->integer('author_id')->unsigned();

                $table->foreign('author_id')->references('id')->on('authors');
            });
        }

        /**
         * Reverse the migrations.
         *
         * @return void
         */
        public function down()
        {
            Schema::table('posts', function (Blueprint $table) {
                $table->dropColumn('author_id');
            });
        }
    }
    ```

## Rodar as migrations
- Antes de rodar as migrations, temos que dar refresh no banco de dados, pois podem existir dados que impediriam a adição de novas chaves estrangeiras (PDOException::("SQLSTATE[23000]):
    - php artisan migrate:refresh
    - php artisan migrate

## Adicionar os relacionamentos
- app/Post.php

    ```php
    <?php

    namespace App;

    use Illuminate\Database\Eloquent\Model;

    class Post extends Model
    {
        public function comments()
        {
            return $this->hasMany('App\Comment');
        }

        public function author()
        {
            return $this->belongsTo('App\Author');
        }
    }
    ```

    - app/Author.php
        ```php
        <?php

        namespace App;

        use Illuminate\Database\Eloquent\Model;

        class Author extends Model
        {
            public function posts()
            {
                return $this->hasMany('App\Post');
            }
            public function comments()
            {
                return $this->hasManyThrough('App\Comment', 'App\Post');
            }
        }
        ```

## Sugestões para testar o banco de dados no Tinker
    - php artisan tinker
    - $author = new Author
    - $author->name = 'Leandro Ramos'
    - $author->email = 'leandroramos@usp.br'
    - $author->save()
    - $post = new Post
    - $post->title = 'Um Grande Post!'
    - $post->content = 'Um excelente texto explicando sobre uma grande novidade'
    - $post->author_id = 1
    - $post = new Post
    - $post->title = 'Segundo Grande Post!'
    - $post->content = 'Segundo texto espetacular sobre um grande post.'
    - $post->author_id = 1
    - $post = new Post
    - $post->title = 'Um Grande Post!'
    - $post->content = 'Um excelente texto explicando sobre uma grande novidade'
    - $post->author_id = 1 
    - $post->save()
    - $post = new Post
    - $post->title = 'Segundo Grande Post!'
    - $post->content = 'Segundo texto espetacular sobre um grande post.'
    - $post->author_id = 1 
    - $post->save()
    - $comment = new Comment
    - $comment->author_email = 'comentador@site.com'
    - $comment->content = 'Mas que post sensacional!'
    - $comment->post_id = 1
    - $comment->save()
    - $comment = new Comment
    - $comment->author_email = 'oriboncina@site.com'
    - $comment->content = 'Sei não... estás enganado!!'
    - $comment->post_id = 1
    - $comment->save()
    - $comment = new Comment
    - $comment->author_email = 'eu@site.com'
    - $comment->content = 'Estão faltando alguns links no post.'
    - $comment->post_id = 1
    - $comment->save()
    - $comment = new Comment
    - $comment->author_email = 'eu@site.com'
    - $comment->content = 'Obrigado, ajudou muito.'
    - $comment->post_id = 2
    - $comment->save()
    - 
    - Mais testes:
        - $author = Author::first()
        - $author->posts
        - $author->comments
        - $author->comments->where('post_id', '2')
        - $comment = Comment::first()
        - $comment->post
        - $comment->post->author
        - $comment->post->author->name
 
## Links de referência
- [Laravel 5.6 - Eloquent Relationships](https://laravel.com/docs/5.6/eloquent-relationships#has-many-through)
- [Laravel 5.6 - Database Migrations](https://laravel.com/docs/5.6/migrations#generating-migrations)


# Parte 3 - Factories
- [Parte 1 - Setup do projeto, hasMany relationship e Laravel Tinker](https://github.com/leandroramos/laravel_basico/tree/part1)
- [Parte 2 - Adicionando colunas às tabelas e hasManyThrough relationship](https://github.com/leandroramos/laravel_basico/tree/part2)

## Criar as factories
    - php artisan make:factory AuthorFactory --model="App\\Author"
    - php artisan make:factory PostFactory --model="App\\Post"
    - php artisan make:factory CommentFactory --model="App\\Comment"

## Código das factories
- AuthorFactory

    ```php
    <?php

    use Faker\Generator as Faker;

    $factory->define(App\Author::class, function (Faker $faker) {
        return [
            'name'  => $faker->name,
            'email' => $faker->unique()->safeEmail,
            'bio'   => $faker->paragraph(1),
        ];
    });
    ```
        
- PostFactory

    ```php
    <?php

    use App\Author;
    use Faker\Generator as Faker;

    $factory->define(App\Post::class, function (Faker $faker) {
        return [
            'title'     => $faker->sentence(4),
            'content'   => $faker->paragraph(4),

            'author_id' => function () {
                return Author::orderByRaw("RAND()")
                    ->take(1)
                    ->first()
                    ->id;
            }
        ];
    });
    ```
        
- CommentFactory

    ```php
    <?php

    use App\Post;
    use Faker\Generator as Faker;

    $factory->define(App\Comment::class, function (Faker $faker) {
        return [
            'author_email'  => $faker->unique()->safeEmail,
            'content'       => $faker->paragraph(2),

            'post_id' => function () {
                return Post::orderByRaw("RAND()")
                    ->take(1)
                    ->first()
                    ->id;
            }
        ];
    });
    ```

## Código do DatabaseSeeder
- database/seeds/DatabaseSeeder.php

    ```php
    <?php

    use Illuminate\Database\Seeder;

    class DatabaseSeeder extends Seeder
    {
        /**
         * Run the database seeds.
         *
         * @return void
         */
        public function run()
        {
            // $this->call(UsersTableSeeder::class);
            echo "Criando 10 autores...\n";
            factory(App\Author::class, 10)->create();

            echo "Criando 36 posts relacionados a autores aleatórios...\n";
            factory(App\Post::class, 36)->create();

            echo "Criando 67 comentários relacionados a posts aleatórios...\n";
            factory(App\Comment::class, 67)->create();
        }
    }
    ```
  

## Links de referência
- [Laravel 5.6 - Database Testing](https://laravel.com/docs/5.6/database-testing)
- [Faker - Documentação (e repositório)](https://github.com/fzaninotto/Faker)
