# config.ru
require 'rack'

class MiPrimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH']

    if @url == '/index'

      [200, { 'Content-Type' => 'text/html; charset = "utf-8"' }, ['<h1> Estás en el Index! </h1>']]

    elsif @url == '/otro'

      [200, { 'Content-Type' => 'text/html; charset = "utf-8"' }, ['<h1> Estás en otro landing! </h1>']]

    else # cualquier otro caso has esto

      [404, { 'Content-Type' => 'text/html; charset = "utf-8"' }, [File.read("404.html")]]

    end
  end

end

run MiPrimeraWebApp.new
