-- Mundo virtual com Física Básica 
local escala = 32 -- 32px = 1m (interessante ela sempre for um múltiplo de 2)
local LG = love.graphics

function love.load()
  LG.setFont(LG.newFont(16))
  
  -- Projetar o mundo virtual
  love.physics.setMeter(escala)
  mundo = love.physics.newWorld(0, 9.81 * escala, true)
  
  -- Criar o solo 
  solo = love.physics.newBody(mundo, 0, 0, 'static') -- 'Static' porque ele não sofre com a gravidade  
  formaSolo = love.physics.newRectangleShape(400, 500, 600, 10) -- X, Y, Largura, Altura
  vincSolo = love.physics.newFixture(solo, formaSolo)
  
  -- Criar uma bola 
  bola = love.physics.newBody(mundo, 400, 200, 'dynamic')
  formaBola = love.physics.newCircleShape(0, 0, escala)
  vincBola = love.physics.newFixture(bola, formaBola)
  
  -- Calcular as características para a animação 
  bola:setMassData(formaBola:computeMass(1)) -- 1 kilograma 
  
end

function love.draw()
  -- Desenhar o solo
  LG.setColor(1, 1, 1, 1)
  LG.polygon('line', solo:getWorldPoints(formaSolo:getPoints()))
    
  -- Desenhar a bola
  LG.setColor(0, 1, 1, 1)
  LG.circle('fill', bola:getX(), bola:getY(), escala)  
  
end

function love.update(dt)
    mundo:update(dt)
  
end

