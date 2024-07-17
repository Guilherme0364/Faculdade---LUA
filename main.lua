-- Move Sprite

-- Apelidos
local LG = love.graphics
local LQ = love.graphics.newQuad

-- Variáveis globais
local personagem = {}
local quadros = {}

-- Dimensão dos quadros
local qLarg, qAlt = 32, 32 -- Dimensão de ladrilhos
local sLarg, sALt = 256, 32 -- Dimensão do Sprite (Arquivo)

-- Controle de direção e animação
local direcao = 'right'
local passo, max = 1, 8
local status = true
local tempo = 0.1
local padrao = true

function love.load()
  LG.setBackgroundColor(1,1,1) -- Fundo branco
  -- personagem = LG.newImage('sprite-dir.png')
  personagem.imgdir = LG.newImage('sprite-dir.png')
  personagem.imgesq = LG.newImage('sprite-esq.png')
  personagem.x = 100
  personagem.y = 200
  
  -- Parametrização dos quadros para animação 
  quadros['right'] = {}
  quadros['left'] = {}
  for c = 1,8 do
    quadros['right'][c] = LQ((c-1)*32, 0, qLarg, qAlt, sLarg, sALt)
    quadros['left'][c] = LQ((c-1)*32, 0, qLarg, qAlt, sLarg, sALt)
  end
end


function love.draw()
  -- for c = 1,8 do 
    -- LG.draw(personagem, quadros['right'][c], 50, c*50)
    -- LG.draw(personagem.imgdir, quadros['right'][c], 50, c*50)
    -- LG.draw(personagem.imgesq, quadros['right'][c], 100, c*50)
  -- end
  -- LG.draw(personagem.imgdir, quadros['right'][passo], personagem.x, personagem.y, 0, 3, 3)
  LG.draw(padrao and personagem.imgdir or personagem.imgesq, quadros[direcao][passo], personagem.x, personagem.y, 0, 3, 3)
end

function love.update(dt)
  if not status then
      tempo  = tempo + dt
      if tempo > 0.2 then
      tempo = 0.1
      
      -- Incrementar o passo do Quad que volta o zero se chegar no maximo (8)
      passo = passo + 1
      if love.keyboard.isDown('right') then
        personagem.x = personagem.x + 10
      end
      if love.keyboard.isDown('left') then
        personagem.x = personagem.x - 10
      end
      if passo > max then
        passo = 1
      end
    end
  end
end

function love.keypressed(tecla)
  if quadros[tecla] then
    direcao = tecla
    status = false
  end
  padrao = (tecla == 'right')
end

function love.keyreleased(tecla)
  if quadros[tecla] and direcao == tecla then
    direcao = 'right'
    status = true
    passo = 1
    -- padrao = true -- Se essa linha estiver ativa, o personagem após andar para esquerda volta a imagem para direita
  end
end

  
  
  
  
  