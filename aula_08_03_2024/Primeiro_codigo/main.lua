-- Controle de elementos gráficos - Animação 01
-- Variáveis globais

local passo = 300 -- Quantidade de pixels a cada passo

function love.load()
  -- Criar uma tabela com os parâmetros do personagem 
  -- Personagem: quadrado (300,400) com lado 100px
  personagem = {} -- Criando uma tabela vazia
  personagem.x = 300
  personagem.y = 400
  personagem.lado = 100
  -- Defininfo as cores da janela e elementos
  love.graphics.setBackgroundColor(1, 0.8, 0.8, 1)
  love.graphics.setColor(0, 0, 1, 1)
end

function love.draw()
    -- Renderizar o personagem 
    love.graphics.rectangle('fill', personagem.x, personagem.y, personagem.lado, personagem.lado)      
end

function love.update(dt)
  -- Tecla D para mover  para direita
  if love.keyboard.isDown('d') then
    -- Incrementar a posição X 
    personagem.x = personagem.x + passo * dt  
  
  -- Tecla A para mover  para direita
  elseif love.keyboard.isDown('a') then
    -- Decrescer a posição X 
    personagem.x = personagem.x - passo * dt
  end 
  
    -- Tecla S para mover  para baixo
  if love.keyboard.isDown('s') then
    -- Incrementar a posição Y
    personagem.y = personagem.y + passo * dt
  end 
  
    -- Tecla W para mover  para cima
  if love.keyboard.isDown('w') then
    -- Decrescer a posição Y 
    personagem.y = personagem.y - passo * dt
  end 
  
end