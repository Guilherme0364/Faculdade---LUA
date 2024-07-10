-- Trabalhar com desenho de linhas  
function love.load()
    love.graphics.setColor(0,0,0,1) -- Preto
    love.graphics.setBackgroundColor(1,1,1,1) -- Branco 
end


function love.draw()
    -- Desenhando uma linha que corta o meio da tela vertical 
    -- Sabe-se que, por padrão, a tela é 800x600
    love.graphics.line(0, 300, 800, 300) 
    
    -- Conjunto de linhas 
    love.graphics.line(200,50, 400,50, 500,280, 100,280, 200,50) -- Junção das linhas pelas suas coordenadas
    
    -- Polígono: preenchido, triângulo por coordenadas
    love.graphics.polygon('fill', 150,100, 250,100, 200,200)    
  end