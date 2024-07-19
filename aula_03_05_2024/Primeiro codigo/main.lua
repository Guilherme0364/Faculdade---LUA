-- Mapeamento 

-- local mapa_basico = {1,0,0,1,1,0,1,1,1,0}
local LG = love.graphics

local mapa = {--1  2  3  4  5  6  7  8  9  10 11 12 13 14 15
             {1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1}, -- 1
             {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- 2
             {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- 3
             {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- 4
             {1, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 1}, -- 5
             {1, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 3, 3, 3, 1}, -- 6
             {1, 3, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 1}, -- 7
             {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- 8
             {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- 9
             {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- 10
          } 
          
local cores = {
    {0.65, 0.65, 0.65}, -- 1 cinza
    {0.80, 0.40, 0.00}, -- 2 marrom
    {0.20, 0.80, 0.20}, -- 3 verde
    {1.00, 0.31, 0.31}  -- 4 vermelho
  }

function love.load()
  LG.setBackgroundColor(1,1,1)
  -- LG.setColor(0,0,1,1) -- Azul   
  larg = LG.getWidth() / 15
  alt = LG.getHeight() / 10
end


function love.draw()
--  status = true 
--  for p, valor in ipairs(mapa_basico) do
--    status = (valor == 1)
--    LG.rectangle(status and 'fill' or 'line', p*25, 150, 25, 25) -- Operador ternário
--  end

  for i, linha in ipairs(mapa) do 
    for j, quadro in ipairs(linha) do 
      LG.setColor(cores[quadro])
      LG.rectangle('fill', (j-1)*larg, (i-1)*alt, larg, alt)
    end
  end
end


