require("L5")

function setup()
  size(800, 500)
  windowTitle("Project 2")
  background(random(200), random(200), random(200))
  textAlign(CENTER)
  textSize(30)

  -- various story starts
  storyBeauty = {'You glow like a sunset', 'inside and out', 'I look at you like art', "I hope you don't mind"}
  storyDream = {'One day I wanna own a home', 'In some suburbs like where I grew up', 'Two floors, no basement, just like home', 'It would be a sage green house with a rust orange door', "And all the kids on the street will think I'm the coolest person ever", "While their parents judge me and call me strange"}
  storyTwin = {'In her dying breath, she speaks', 'Her words are gentle yet her voice shakes', "'Please, anyone, anything, just not you' she says", 'Her body and her soul grow still', 'I take the crown from atop her head', 'And place it on mine'}
  storyCare = {'He is soaked in blood.', 'His hands, his legs, his chest, covered in splatters.', "He doesn't seem to care.", 'Others have noticed the scene.', 'No one around seems to care.', 'They watched, just like you.'}

  -- randomly selects the start to one story
  text(random({storyBeauty, storyDream, storyTwin, storyCare}), width * 0.5, height * 0.5)
  
end

function mousePressed()
  background(random(200), random(200), random(200))
  if storyBeauty then
    text('inside and out', width * 0.5, height * 0.5)
  end
end