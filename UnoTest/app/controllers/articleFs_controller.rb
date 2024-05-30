class ArticleFsController < ApplicationController

    before_action :get_articleF_by_Id, only: [:show, :edit, :destroy, :update]

    #route: /article_fs/:id
    def show
        #con @ la variable esta disponible para toda la aplicacion
        #sin el @ solo esta disponible en esta funcion
        #@articleF = ArticleF.find(params[:id]) #comento esta linea, ya q se hace por medio de :get_articleF_by_Id

        #debugger #utilizar debugger para detener la compilacion y acceder a todos los elementos de entorno
        #con n sigue a la siguiente line, con c continua con la ejecucion normal
    end

    #route: /article_fs
    def index
        @articleFs = ArticleF.all
    end

    def new
        @articleF = ArticleF.new
    end
    
    def edit
        #@articleF = ArticleF.find(params[:id]) #comento esta linea, ya q se hace por medio de :get_articleF_by_Id
    end 

    def destroy
        #@articleF = ArticleF.find(params[:id]) #comento esta linea, ya q se hace por medio de :get_articleF_by_Id
        @articleF.destroy
        redirect_to article_fs_path
    end

    #este es para ser consumido en un request /no tiene vista
    def create
        @articleF = ArticleF.new(articleF_params)
        if @articleF.save
            flash[:notice] = "Article saved Correctly" 
            redirect_to @articleF
        else
            render 'new'
        end
        #para moder utilizar render plain y mostrar los datos en una pagina fue necesario agregar esto en la vista: data: { turbo: false }, en la creacion del formulario
        ##  render plain: @articleFs.inspect
        ##  puts "Hola mundo #{params}"
    end

    def update
        #@articleF = ArticleF.find(params[:id]) #comento esta linea, ya q se hace por medio de :get_articleF_by_Id
        if @articleF.update(articleF_params)
            flash[:notice] = "Article updated Correctly" 
            redirect_to @articleF
        else
            render 'edit'
        end
        
    end

    private #no es necesario cerrarlo (no lleva end)
        def get_articleF_by_Id
            @articleF = ArticleF.find(params[:id])
        end

        def articleF_params
            params.require(:article_f).permit(:title,:description, :author)
        end
end