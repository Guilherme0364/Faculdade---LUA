-- Introdução às Primitivas 2D
function love.load()  
    --Cor para as formas RGBA
    love.graphics.setColor(0,0,1,1)
  
    -- Cor de fundo padrão RGBA
    love.graphics.setBackgroundColor(1, 0.86, 0.78)  
end


function love.draw()
    -- Círculo: preenchido, centro (200, 300), raio 50
    love.graphics.circle('fill', 200, 300, 50)
    
    -- Quadrado : preenchido, canto inf. (300, 300), 100x100
    love.graphics.rectangle('fill', 300, 300, 100, 100)
    
    -- Arco: preenchido, Centro (450, 300), raio 100, 36º a 90º
    love.graphics.arc('fill' , 450, 300, 100, 36 *math.pi / 180, 90 *math.pi / 180)
    
    -- Elipse: preenchido, canto inf. (100, 100), Raio (75, 50), 30 segmentos
    love.graphics.ellipse('fill', 100, 100, 75, 50, 30)
  end