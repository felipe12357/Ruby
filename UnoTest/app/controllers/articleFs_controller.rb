class ArticleFsController < ApplicationController
    def show
        #con @ la variable esta disponible para toda la aplicacion
        #sin el @ solo esta disponible en esta funcion
        @articleF = ArticleF.find(params[:id])

        #debugger #utilizar debugger para detener la compilacion y acceder a todos los elementos de entorno
        #con n sigue a la siguiente line, con c continua con la ejecucion normal
    end
end