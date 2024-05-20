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

    el siguiente comando crea:
    vistas,ut, controlador, form, una migracion y otros elementos para un CRUD referente aun "articulo" con 2 columnas
        rails generate scaffold Article title:string description:text

    rails db:migrate => corre el archivo migraciones

    rails routes --expanded => nos permite ver las rutas disponibles