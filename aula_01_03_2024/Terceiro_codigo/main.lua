-- Primitivas mais complexas 
function love.load()
    love.graphics.setColor(0,0,0,1) -- Preto
    love.graphics.setBackgroundColor(1,1,1,1) -- Branco 
end


function love.draw()
    -- Triangulo com linhas 
    love.graphics.line(150,100, 100,200, 200,200)
  
    -- Linhas com conjunto de pontos variáveis 
    pontos = {250,50, 350,50, 350,150, 450,150}
    love.graphics.line(pontos)
    
    -- Polígono com linhas em pontos variáveis 
    cantos = {500,100, 600,100, 550,200}
    love.graphics.polygon('fill', cantos)
    end