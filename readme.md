## Commands
    ruby nombreArchivo.rb => ejecuta un archivo de ruby
    ruby --version => muestra la version actualial de ruby
    brew install rbenv ruby-build => instala el manejador de versiones de ruby: rbenv
    rbenv versions => lista las versiones instaladas por medio de rbenv
    rbenv local [version] => establece la version de ruby q queremos utilizar
    gem install rails -v 7.0.7 => instala rails en esa version
    rails new nombre_proyecto => crea un proyecto nuevo
    gem list rails => las gemas o paquetes instalados de rails

    rails server => run an application
    rails server -p 3001 => corro la aplicacion en el puerto 3001
    rails generate controller pages => crea el controlador pages

    el comando rails generate scaffold Article title:string description:text
        genera: vistas,ut, controlador, form, una migracion y otros elementos para un CRUD referente aun "articulo" con 2 columnas
        

    Migrations: 
        rails db:migrate => corre el archivo migraciones //esto solo ejecuta las migraciones pendientes
        rails generate migration create_articlesF =>crea el archivo de migracion: "create_articlesF"
        rails db:rollback =>devuelve el schema una migracion atras

        importante correr el comando de ejecucion de migraciones despues de crearlas

    Routes:
        rails routes --expanded => nos permite ver las rutas disponibles
        rails routes --expanded -c=articles => permite ver las rutas de un solo controlador
    

    Consola Rails: 
        rails c => permite acceder a la consola de rails
        Modelo.All "Article.all" => permite ver todos los registros

        Inserta un registro:
            * ArticleF.create(title:"first article",description:"hola mundo",author:"me") 
            * otra forma de hacerlo:
                article = ArticleF.new(title:"second test",description:"hola mundo")
                article.save
        art = ArticleF.find(id=2) => busca el articulo con id = 2 y lo asigna a la variablle        
        
        art = new ArticleF => de esta forma estoy creando un nuevo objeto
        art.description =" hola mundo" => posterior a esto puedo ir asignando cada una de las propiedades
        art.save => y luego guardar los cambios
        art.errors.full_messages => muestra los errores q ocurrieron al momento de guardar

        reload! permite recargar las consola y q tome los cambios aplicados en el modelo

## Steps for working with new elements
    * Crear la tabla en la base de datos, para ello usamos las migraciones
        debe ser en plural y todo en minusculas (article_fs)
    * Crear el archivo del modelo el nombre del archivo en camelCase (primera en minuscula), 
        dentro el nombre de la clase en CamelCase (normal) (file:article_fs.rb, ArticleF =>nombre de la clase)
    * Crear la ruta en el archivo routes (routes.rb, resources :article_fs)
    * Crear el archivo Controlador (articleFs_controller.rb )
    * Crear la vista (article_fs/show.html.erb)

## Inside the Code
    * debugger =>utilizar debugger para detener la compilacion y acceder a todos los elementos de entorno
        por ejemplo saber el valor de alguna variable en concreto, para ello simplemente escribimos el nombre de la variable: ArticleF
        con n sigue a la siguiente line, con c continua con la ejecucion normal

    * con <% %> se evalua el codigo de ruby mas no se muestra en pantalla:
        <%# <% @articleF.title = @articleF.title + " mocked value" %> 

        para mostrarlo: <%= %>
