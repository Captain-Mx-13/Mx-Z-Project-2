require("L5")

  -- variable for current sentence, starts at 1
  currentSentence = 1

  -- stories
  storyBeauty = {'Your soul is vibrant', 'And glows like a star', 'You glow like a sunset', 'inside and out', 'I look at you like art', "I hope you don't mind", '   '}
  storyDream = {'One day I wanna own a home', 'In some suburbs like where I grew up', 'Two floors, no basement, just like home', 'Imagine: a sage green house with rust orange door', "The kids on the street will think the house is magic", "While their parents judge me and call me strange", '    '}
  storyTwin = {'In her dying breath, she speaks', 'Her words are gentle yet her voice shakes', "'Please, anyone, anything, just not you' she says", 'Her body and her soul grow still', 'I take the crown from atop her head', 'And place it on mine', '    '}
  storyCare = {'He is soaked in blood.', 'His hands, his legs, his chest, covered in splatters.', "He doesn't seem to care.", 'Others have noticed the scene.', 'No one around seems to care.', 'They watched, just like you.', '     '}
  -- array of all stories
  storyArray = {storyBeauty, storyDream, storyTwin, storyCare}

  -- background images
  diamondImg = loadImage('assets/DiamondBg.png')
  paperImg = loadImage('assets/LinedBg.png')
  starsImg = loadImage('assets/StarsBg.png')
  fourPointsImg = loadImage('assets/FourPointBg.png')
  flowersImg = loadImage('assets/FlowersBg.png')
  wavesImg = loadImage('assets/WavesBg.png')
  -- array of background images
  imageArray = {diamondImg, paperImg, starsImg, fourPointsImg, flowersImg, wavesImg}

function setup()
  size(700, 400)
  windowTitle("Project 2-Riso Verison")
  font = loadFont('Assets/cMedium.ttf')
  noStroke()
  textAlign(CENTER)
  textSize(35)
  textFont(font)

  -- creates background color
  fill(255, 72, 176, 100)
  rect(0, 0, 700, 400)

  fill(255, 232, 0, 100)
  rect(0, 0, 700, 400)
  
  -- randomly selects from a background image
  currentImage = random(imageArray)
  image(currentImage, 0, 0, width *1)

  -- randomly selects one story and displays it
  currentStory = random(storyArray)
  text(currentStory[currentSentence], width * 0.5, height * 0.5)
end

-- advances story with mouse click
function mousePressed()
  currentSentence = currentSentence+1
  -- resets story when it reaches the end
  if currentSentence > 7 then
    currentSentence = 1
    currentStory = random(storyArray)
  end

  -- new image 
  currentImage = random(imageArray)
  image(currentImage, 0, 0, width *1)
  
  -- new story
  text(currentStory[currentSentence], width * 0.5, height * 0.5)
end

-- border design (top, bottom, left, right)
function draw()
  for i = 1, 19, 1 do
    fill(0, 120, 191)
    ellipse(1+i*40,15,20,20)
  end

  for i = 1, 19, 1 do
    fill(0, 120, 191)
    ellipse(1+i*40, 480, 20, 20)
  end

  for i = 1, 11, 1 do
    fill(255, 72, 176)
    ellipse(15, 0+i*40, 20, 20)
  end

  for i = 1, 11, 1 do
    fill(255, 72, 176)
    ellipse(780, 0+i*40, 20, 20)
  end

  -- keeps text black
  fill(0)
end