--variavel global
local valor
local marcador

-- Função responsavel pela carga de elementos do jogo
function love.load()
  love.graphics.setColor(0,0,0)
  fonte = love.graphics.setNewFont(28)
  love.graphics.setFont(fonte)
  love.graphics.setBackgroundColor(1,1,0,1)
  valor = 10
  marcador = 0
end

--Função responsavel por atualizações da dinamica
function love.update(dt)
  if marcador + 0.0001 < dt then
    marcador = dt
    valor = valor + 1
  end
  
end

-- Função responsavel pela renderização
function love.draw()
  love.graphics.print("valor: ".. valor, 380,300)
  love.graphics.print("marcador: " ..marcador, 380,320) 
end