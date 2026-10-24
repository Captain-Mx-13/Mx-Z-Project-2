require("L5")

  --variable for current sentence, starts at 1
  currentSentence = 1

 -- stories
  storyBeauty = {'Your soul is vibrant', 'And glows like a star', 'You glow like a sunset', 'inside and out', 'I look at you like art', "I hope you don't mind", '   '}
  storyDream = {'One day I wanna own a home', 'In some suburbs like where I grew up', 'Two floors, no basement, just like home', 'Imagine: a sage green house with rust orange door', "The kids on the street will think the house is magic", "While their parents judge me and call me strange", '    '}
  storyTwin = {'In her dying breath, she speaks', 'Her words are gentle yet her voice shakes', "'Please, anyone, anything, just not you' she says", 'Her body and her soul grow still', 'I take the crown from atop her head', 'And place it on mine', '    '}
  storyCare = {'He is soaked in blood.', 'His hands, his legs, his chest, covered in splatters.', "He doesn't seem to care.", 'Others have noticed the scene.', 'No one around seems to care.', 'They watched, just like you.', '     '}
  -- array of all stories
  storyArray = {storyBeauty, storyDream, storyTwin, storyCare}

function setup()
  size(800, 500)
  windowTitle("Project 2")
  font = loadFont('Assets/cMedium.ttf')
  background(random(180), random(180), random(180))
  textAlign(CENTER)
  textSize(38)
  textFont(font)

  

  -- randomly selects one story and displays it
  currentStory = random(storyArray)

  text(currentStory[currentSentence], width * 0.5, height * 0.5)
end

-- advances story with mouse click
function mousePressed()
  currentSentence = currentSentence+1
  -- rests story when it reaches the end
  if currentSentence > 7 then
    currentSentence = 1
    currentStory = random(storyArray)
  end

-- new background and new story
  background(random(200), random(200), random(200))
  text(currentStory[currentSentence], width * 0.5, height * 0.5)
end