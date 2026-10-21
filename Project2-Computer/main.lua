require("L5")

function setup()
  size(800, 500)
  windowTitle("Project 2")
  background(random(200), random(200), random(200))
  textAlign(CENTER)
  textSize(30)

  -- various story starts
  storyBeauty = ('You glow like a sunset')
  storyDream = ('One day I wanna own a home')
  storyTwin = ('In her dying breath, she speaks')
  storyCare = ('He is soaked in blood')

  -- randomly selects the start to one story
  text(random({storyBeauty, storyDream, storyTwin, storyCare}), width * 0.5, height * 0.5)
  
end

function mousePressed()
  background(random(200), random(200), random(200))
  if storyBeauty then
    text('inside and out', width * 0.5, height * 0.5)
  end
end