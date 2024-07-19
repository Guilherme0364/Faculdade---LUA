-- Manipulação básica de sprite 

-- Variável global
local personagem 
local LG = love.graphics

-- Automação
local quadros = {}

-- Animação
local atual = nil 
local passo = 1
local tempo = 0.1


function love.load()
  LG.setBackgroundColor(1,1,1) -- Branco
  personagem = LG.newImage('sprite-dir.png') -- Sprite
  
  -- newQuad (posX, posY, larg, alt, largSprite, altSprite)
  -- Modo devGorila
    --  q01 = LG.newQuad(0, 0, 32, 32, 256, 32)
    --  q02 = LG.newQuad(32, 0, 32, 32, 256, 32)
    --  q03 = LG.newQuad(64, 0, 32, 32, 256, 32)
    --  q04 = LG.newQuad(98, 0, 32, 32, 256, 32)
    --  q05 = LG.newQuad(128, 0, 32, 32, 256, 32)
    --  q06 = LG.newQuad(192, 0, 32, 32, 256, 32)
    --  q07 = LG.newQuad(224, 0, 32, 32, 256, 32)
    --  q08 = LG.newQuad(256, 0, 32, 32, 256, 32)
    
    for c = 1,8 do -- Vai de 1 a 8 (8 quadros)
      quadros[c] = LG.newQuad((c-1)*32, 0, 32, 32, 256, 32) -- -1 porque o primeiro quadro fica na posição 0 
    end
    atual = quadros[1] -- Quadro inicial
end


function love.draw()
  -- Modo devGorila
    --  LG.draw(personagem, 50, 50)
    --  LG.draw(personagem, q01, 50, 100)
    --  LG.draw(personagem, q02, 50, 150)
    --  LG.draw(personagem, q03, 50, 200)
    --  LG.draw(personagem, q04, 50, 250)
    --  LG.draw(personagem, q05, 50, 300)
    --  LG.draw(personagem, q06, 50, 350)
    --  LG.draw(personagem, q07, 50, 400)
    --  LG.draw(personagem, q08, 50, 450)
    
  -- Usado para automação
    --for c = 1,8 do
    --  LG.draw(personagem, quadros[c], 50, c*50)
    -- end
    
  LG.draw(personagem, atual, 150, 150, 0, 3, 3)
end


function love.update(dt)
  tempo = tempo + dt
  if tempo > 0.2 then
    tempo = 0.1
    if passo < 8 then -- Se ele for menor que 8 ele aumenta, diferenciando os quads
      passo = passo + 1
    else
      passo = 1
    end
    atual = quadros[passo]
  end
  
end

