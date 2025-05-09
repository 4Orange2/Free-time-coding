-- Your layers go here!
-- You can use the withDepth function after all other transformations to give your shapes depth
-- You can use model.time to animate things :)
radius_small = 15
radius_big = 30
 
ears_y = 20
ear_left_x = -20
ear_right_x = 20
eye_right = 10
eyes_y = 4
eye_left = -10
eye_size = 7
ear_size = 10
pupil_size = 5
pupil_right_x = 10
pupil_y = 4
pupil_left_x = -10
mouth_y = -15
mouth_x = 0
 
 
-- filled (rgb (sin model.time) 100 200)
-- right-angled triangle polygon [(0,0), (0,-10), (20,0)]
-- |> mirrorX
 
myShapes model =
  [
  rect 20 20
  |> filled red
  |> move(0,0)
  |> scale (abs (sin model.time*50))
  ,square 2000 
  |> filled (rgb (sin model.time*100) 50 100)
  , rect 600 100
  |> filled (rgb (sin model.time*100) 200 100) 
  |> move(0, -120)
  , moon
  |> subtract (circle (abs (sin model.time *80)) |> ghost |> move(20,0))
  |> move(-140, 80)
  |> scale 0.65
  , textanimation model 0 "Once upon a time" 45
  , textanimation model 0.5 "There was a lion" 30
  , animal_animation model 1 lion
  , textanimation model 1.5 "A frog" 15
  , animal_animation model 2 frog
  , textanimation model 2.5 "A sheep" 0
  , animal_animation model 3 sheep
  , textanimation model 3.5 "A bird" -15
  , animal_animation model 4 bird
  , textanimation model 4.5 "And they all lived happily ever after" -30
  , textanimation model 5 "THE END" -45
  ]
 
panther = group [ 
           curve (67.236,-13.64) [Pull (66.007,-14.62) (64.778,-15.61),Pull (63.672,-16.10) (62.565,-16.59),Pull (61.582,-16.59) (60.599,-16.59),Pull (59.370,-16.96) (58.140,-17.33),Pull (56.911,-17.33) (55.682,-17.33),Pull (54.822,-16.96) (53.961,-16.59),Pull (52.732,-16.22) (51.503,-15.85),Pull (49.536,-14.87) (47.569,-13.88),Pull (46.340,-13.15) (45.111,-12.41),Pull (43.267,-10.69) (41.423,-8.973),Pull (39.457,-6.760) (37.490,-4.548),Pull (35.646,-1.720) (33.802,1.1062),Pull (32.942,2.7042) (32.081,4.3021),Pull (30.606,6.3918) (29.131,8.4814),Pull (26.058,11.062) (22.985,13.644),Pull (20.281,14.627) (17.577,15.610),Pull (15.119,16.225) (12.660,16.839),Pull (9.7106,16.839) (6.7605,16.839),Pull (5.5313,16.717) (4.3021,16.594),Pull (1.3521,16.348) (-1.597,16.102),Pull (-3.072,15.979) (-4.548,15.856),Pull (-7.129,15.856) (-9.710,15.856),Pull (-12.41,15.610) (-15.11,15.364),Pull (-17.70,15.733) (-20.28,16.102),Pull (-22.24,16.839) (-24.21,17.577),Pull (-25.19,17.577) (-26.18,17.577),Pull (-27.90,17.331) (-29.62,17.085),Pull (-30.60,17.085) (-31.59,17.085),Pull (-33.92,17.085) (-36.26,17.085),Pull (-38.59,17.331) (-40.93,17.577),Pull (-43.02,17.700) (-45.11,17.823),Pull (-45.35,18.069) (-45.60,18.314),Pull (-45.97,18.683) (-46.34,19.052),Pull (-46.83,19.052) (-47.32,19.052),Pull (-47.69,18.560) (-48.06,18.069),Pull (-48.18,18.069) (-48.30,18.069),Pull (-48.30,17.946) (-48.30,17.823),Pull (-48.43,17.700) (-48.55,17.577),Pull (-48.79,17.208) (-49.04,16.839),Pull (-49.53,16.717) (-50.02,16.594),Pull (-51.13,16.102) (-52.24,15.610),Pull (-52.85,15.119) (-53.46,14.627),Pull (-54.08,14.012) (-54.69,13.398),Pull (-55.19,13.029) (-55.68,12.660),Pull (-56.17,12.046) (-56.66,11.431),Pull (-56.91,10.571) (-57.15,9.7106),Pull (-57.28,9.2189) (-57.40,8.7272),Pull (-57.77,7.9897) (-58.14,7.2522),Pull (-58.26,6.8834) (-58.38,6.5147),Pull (-58.38,6.2688) (-58.38,6.0230),Pull (-58.50,5.4084) (-58.63,4.7938),Pull (-58.26,4.1792) (-57.89,3.5646),Pull (-56.91,2.7042) (-55.92,1.8437),Pull (-55.55,1.5979) (-55.19,1.3521),Pull (-54.82,1.1062) (-54.45,0.8604),Pull (-53.59,0.9833) (-52.73,1.1062),Pull (-52.36,1.4750) (-51.99,1.8437),Pull (-51.50,2.0896) (-51.01,2.3354),Pull (-49.78,2.7042) (-48.55,3.0729),Pull (-47.69,3.3188) (-46.83,3.5646),Pull (-45.97,3.5646) (-45.11,3.5646),Pull (-43.88,3.5646) (-42.65,3.5646),Pull (-42.16,3.3188) (-41.66,3.0729),Pull (-41.54,2.4583) (-41.42,1.8437),Pull (-41.54,1.1062) (-41.66,0.3687),Pull (-41.91,-0.737) (-42.16,-1.843),Pull (-42.16,-2.827) (-42.16,-3.810),Pull (-42.28,-4.425) (-42.40,-5.039),Pull (-42.65,-5.777) (-42.89,-6.514),Pull (-43.26,-7.498) (-43.63,-8.481),Pull (-44.00,-9.096) (-44.37,-9.710),Pull (-44.98,-11.30) (-45.60,-12.90),Pull (-46.58,-14.87) (-47.56,-16.83),Pull (-48.43,-17.94) (-49.29,-19.05),Pull (-49.90,-19.66) (-50.51,-20.28),Pull (-51.25,-20.89) (-51.99,-21.51),Pull (-52.24,-21.38) (-52.48,-21.26),Pull (-52.97,-21.26) (-53.46,-21.26),Pull (-54.33,-21.26) (-55.19,-21.26),Pull (-55.80,-21.87) (-56.41,-22.49),Pull (-56.17,-23.10) (-55.92,-23.72),Pull (-55.55,-23.96) (-55.19,-24.21),Pull (-54.20,-24.70) (-53.22,-25.19),Pull (-52.24,-25.19) (-51.25,-25.19),Pull (-50.64,-25.07) (-50.02,-24.95),Pull (-49.16,-24.33) (-48.30,-23.72),Pull (-47.81,-23.47) (-47.32,-23.23),Pull (-46.70,-22.86) (-46.09,-22.49),Pull (-45.84,-22.74) (-45.60,-22.98),Pull (-45.35,-22.61) (-45.11,-22.24),Pull (-44.74,-21.38) (-44.37,-20.52),Pull (-42.89,-19.29) (-41.42,-18.06),Pull (-40.44,-16.83) (-39.45,-15.61),Pull (-38.59,-14.75) (-37.73,-13.88),Pull (-36.50,-12.04) (-35.27,-10.20),Pull (-34.29,-9.341) (-33.31,-8.481),Pull (-32.81,-7.620) (-32.32,-6.760),Pull (-31.71,-6.145) (-31.09,-5.531),Pull (-30.72,-5.162) (-30.36,-4.793),Pull (-28.51,-5.039) (-26.67,-5.285),Pull (-25.19,-5.900) (-23.72,-6.514),Pull (-22.61,-6.514) (-21.51,-6.514),Pull (-20.15,-6.883) (-18.80,-7.252),Pull (-18.31,-8.112) (-17.82,-8.973),Pull (-16.96,-10.69) (-16.10,-12.41),Pull (-15.48,-13.64) (-14.87,-14.87),Pull (-14.25,-16.34) (-13.64,-17.82),Pull (-13.15,-19.05) (-12.66,-20.28),Pull (-12.66,-21.38) (-12.66,-22.49),Pull (-13.15,-22.74) (-13.64,-22.98),Pull (-14.38,-22.98) (-15.11,-22.98),Pull (-15.61,-23.10) (-16.10,-23.23),Pull (-16.10,-23.47) (-16.10,-23.72),Pull (-16.22,-23.96) (-16.34,-24.21),Pull (-16.22,-24.82) (-16.10,-25.44),Pull (-15.11,-25.81) (-14.13,-26.18),Pull (-13.27,-26.18) (-12.41,-26.18),Pull (-11.18,-26.05) (-9.956,-25.93),Pull (-9.341,-25.56) (-8.727,-25.19),Pull (-8.358,-24.33) (-7.989,-23.47),Pull (-8.112,-22.00) (-8.235,-20.52),Pull (-8.112,-19.79) (-7.989,-19.05),Pull (-8.235,-18.31) (-8.481,-17.57),Pull (-8.604,-17.20) (-8.727,-16.83),Pull (-9.096,-15.61) (-9.464,-14.38),Pull (-9.464,-13.64) (-9.464,-12.90),Pull (-9.341,-11.92) (-9.218,-10.93),Pull (-9.218,-10.20) (-9.218,-9.464),Pull (-9.710,-8.727) (-10.20,-7.989),Pull (-10.32,-7.375) (-10.44,-6.760),Pull (-9.096,-7.129) (-7.743,-7.498),Pull (-6.637,-7.252) (-5.531,-7.006),Pull (-4.179,-6.637) (-2.827,-6.268),Pull (-1.475,-5.654) (-0.122,-5.039),Pull (0.9833,-4.670) (2.0896,-4.302),Pull (2.7042,-4.179) (3.3188,-4.056),Pull (3.6875,-4.916) (4.0563,-5.777),Pull (4.5480,-7.252) (5.0396,-8.727),Pull (5.2855,-9.587) (5.5313,-10.44),Pull (6.0230,-11.92) (6.5147,-13.39),Pull (6.8834,-13.88) (7.2522,-14.38),Pull (7.7439,-14.99) (8.2355,-15.61),Pull (8.4814,-16.10) (8.7272,-16.59),Pull (9.2189,-17.33) (9.7106,-18.06),Pull (9.7106,-19.29) (9.7106,-20.52),Pull (9.3418,-20.89) (8.9731,-21.26),Pull (8.4814,-21.75) (7.9897,-22.24),Pull (7.4980,-22.61) (7.0064,-22.98),Pull (6.2688,-23.35) (5.5313,-23.72),Pull (4.5480,-23.60) (3.5646,-23.47),Pull (2.9500,-23.60) (2.3354,-23.72),Pull (1.9667,-23.84) (1.5979,-23.96),Pull (1.2291,-24.46) (0.8604,-24.95),Pull (0.8604,-25.32) (0.8604,-25.69),Pull (1.5979,-26.18) (2.3354,-26.67),Pull (3.0729,-26.55) (3.8104,-26.42),Pull (4.6709,-26.55) (5.5313,-26.67),Pull (6.8834,-26.42) (8.2355,-26.18),Pull (9.2189,-26.05) (10.202,-25.93),Pull (10.816,-25.81) (11.431,-25.69),Pull (12.660,-24.95) (13.889,-24.21),Pull (14.012,-23.84) (14.135,-23.47),Pull (15.364,-22.24) (16.594,-21.01),Pull (16.717,-20.40) (16.839,-19.79),Pull (16.962,-18.80) (17.085,-17.82),Pull (16.839,-17.33) (16.594,-16.83),Pull (16.225,-16.22) (15.856,-15.61),Pull (15.610,-15.11) (15.364,-14.62),Pull (15.487,-13.39) (15.610,-12.16),Pull (15.487,-10.93) (15.364,-9.710),Pull (15.364,-8.727) (15.364,-7.743),Pull (15.733,-7.129) (16.102,-6.514),Pull (16.594,-5.654) (17.085,-4.793),Pull (19.175,-6.145) (21.265,-7.498),Pull (21.387,-7.498) (21.510,-7.498),Pull (23.354,-8.727) (25.198,-9.956),Pull (27.288,-10.57) (29.377,-11.18),Pull (30.361,-11.92) (31.344,-12.66),Pull (33.065,-13.39) (34.786,-14.13),Pull (36.261,-14.87) (37.736,-15.61),Pull (38.350,-16.22) (38.965,-16.83),Pull (39.825,-17.57) (40.686,-18.31),Pull (41.177,-19.79) (41.669,-21.26),Pull (42.038,-22.37) (42.407,-23.47),Pull (42.530,-24.21) (42.653,-24.95),Pull (43.636,-25.44) (44.619,-25.93),Pull (45.480,-25.93) (46.340,-25.93),Pull (46.709,-25.69) (47.078,-25.44),Pull (47.078,-24.70) (47.078,-23.96),Pull (47.323,-23.47) (47.569,-22.98),Pull (47.692,-22.37) (47.815,-21.75),Pull (47.078,-20.52) (46.340,-19.29),Pull (45.603,-18.56) (44.865,-17.82),Pull (44.496,-16.96) (44.128,-16.10),Pull (43.759,-15.24) (43.390,-14.38),Pull (44.250,-15.36) (45.111,-16.34),Pull (46.094,-16.83) (47.078,-17.33),Pull (47.938,-17.57) (48.798,-17.82),Pull (50.028,-18.19) (51.257,-18.56),Pull (53.592,-19.17) (55.928,-19.79),Pull (58.386,-19.66) (60.845,-19.54),Pull (61.951,-19.29) (63.057,-19.05),Pull (64.901,-18.80) (66.745,-18.56),Pull (67.605,-17.82) (68.466,-17.08),Pull (68.588,-16.59) (68.711,-16.10),Pull (68.834,-15.61) (68.957,-15.11),Pull (68.834,-14.50) (68.711,-13.88),Pull (68.466,-13.76) (68.220,-13.64),Pull (67.974,-13.64) (67.236,-13.64)]
           |> filled black
           ,
           curve (-53.22,10.202) [Pull (-53.34,9.8335) (-53.46,9.4647),Pull (-53.71,9.3418) (-53.96,9.2189),Pull (-54.08,9.0960) (-54.20,8.9731),Pull (-54.33,9.0960) (-54.45,9.2189),Pull (-54.45,9.3418) (-54.45,9.4647),Pull (-54.45,9.5877) (-54.45,9.7106),Pull (-54.45,9.9564) (-54.45,10.202),Pull (-54.33,10.202) (-54.20,10.202),Pull (-53.96,10.202) (-53.22,10.202)]
           |> filled (rgb 100 150 100)
           ,
           circle 0.07
           |> filled black
           |> scale 2
           |> move (-54.27,9.75)
           ]
 
sheep = group
  [ 
     rect 100 70
  |> filled lightBlue
  |> move(15, -5)
    ,sheepLegsnTail
    ,sheepBody
    ,sheepHead 
   
  ]
 
sheepHead = group [
 
  oval 20 25
                    |> filled darkCharcoal
                   ,oval 5 10
                    |> filled darkCharcoal
                    |> rotate (degrees 30)
                    |> move (11.5,3)
                   ,oval 5 10
                    |> filled darkCharcoal
                    |> rotate (degrees 150)
                    |> move (-11.5,3)
                    ,circle 2
                    |> filled black
                    |> move (6,2)
                   ,circle 2
                    |> filled black
                    |> move (-6,2)
                    , circle 5
                    |> filled white
                    |> move (0,13)
                    , circle 5
                    |> filled white
                    |> move (-5,11)
                    , circle 5
                    |> filled white
                    |> move (5,11)
                    , oval 1 2
                    |> filled black
                    |> rotate (degrees 30)
                    |> move (-2,-8)
                    , oval 1 2
                    |> filled black
                    |> rotate (degrees 150)
                    |> move (2,-8)
                    ]
                    
sheepBody = group [ oval 40 35 
                    |>filled white
                    |> move (20,-10)
                   ,circle 10
                    |> filled white
                    |> move (19,6)
                   ,circle 10
                    |> filled white
                    |> move (2,-15)
                   ,circle 10
                    |> filled white
                    |> move (35,-1)
                   ,circle 10
                    |> filled white
                    |> move (20,-23)
                   ,circle 10
                    |> filled white
                    |> move (35,-18)
                   ,circle 10
                    |> filled white
                    |> move (28,4)
                   ,circle 10
                    |> filled white
                    |> move (41,-10)
                   ,circle 10
                    |> filled white
                    |> move (30,-23)
                   ,circle 10
                    |> filled white
                    |> move (7,-22)
                  ]
                  
sheepLegsnTail = group [ rect 5 20
                    |> filled darkCharcoal
                    |> move (8,-30)
                   ,rect 5 20
                    |> filled darkCharcoal
                    |> move (0,-30)
                   ,rect 5 20
                    |> filled darkCharcoal
                    |> move (30,-30)
                   ,rect 5 20
                    |> filled darkCharcoal
                    |> move (38,-30)
                   ,oval 5 15
                    |> filled darkCharcoal
                    |> rotate (degrees 30)
                    |> move (51,-15)
                  ]
 
bird = group
  [
  circle 20
   |> filled blue
   ,
  triangle 15
   |> filled blue
   |> move (-12,-17)
   ,
  triangle 15
   |> filled blue
   |> rotate (degrees 180)
   |> move (-27,-17)
   ,
  rect 1 17.5
   |> filled black
   |> move (0,-27.5)
   ,
  rect 1 15.5
   |> filled black
   |> move (-4,-28.5)
   ,
  rect 1 4
   |> filled black
   |> rotate (degrees 45)
   |> move (1,-34)
   ,
  rect 1 4
   |> filled black
   |> rotate (degrees 145)
   |> move (-1,-34)
   ,
  rect 1 4
   |> filled black
   |> rotate (degrees 45)
   |> move (-3,-34)
   ,
  rect 1 4
   |> filled black
   |> rotate (degrees 145)
   |> move (-5,-34)
   ,
  triangle 10
   |> filled (rgb 150 150 200)
   |> rotate (degrees 180)
   |> move (-5,-5)
   ,
  circle 13
   |> filled blue
   |> move (10,20)
   ,
  triangle 3
   |> filled yellow
   |> rotate (degrees 220)
   |> move (23,15)
   ,
  circle 2
   |> filled black
   |> move (18,23)
  ]
 
frog = group
  [ oval 10 25
  |> filled darkGreen
  |> move (-20, -3)
  |> rotate (degrees 25)
  ,
  oval 10 25
  |> filled darkGreen
  |> move (20, -3)
  |> rotate (degrees -25)
  ,
  oval 5 15
  |> filled darkGreen
  |> move (-21, 18)
  |> rotate (degrees 90)
  ,
  oval 5 15
  |> filled darkGreen
  |> move (-21, -18)
  |> rotate (degrees 90)
  ,
  oval 40 45
  |> filled green
  ,
  oval 25 30
  |> filled (rgb 212 255 160)
  |> move (0, -10)
  ,
  oval 8 12
  |> filled darkGreen
  |> move (-22,-5)
  |> rotate (degrees 90)
  ,
  oval 8 12
  |> filled darkGreen
  |> move (-22,5)
  |> rotate (degrees 90)
  ,
  oval 25 45
  |> filled darkGreen
  |> rotate (degrees -90)
  |> move (0,20)
  ,
  circle 6.5
  |> filled white
  |> move (-10, 20)
  ,
  circle 6.5
  |> filled white
  |> move (10, 20)
  ,
  circle 5
  |> filled black
  |> move (-10, 20)
  ,
  circle 5
  |> filled black
  |> move (10, 20)
  ,
  curve (0,0) [Pull (10,0) (20,-10)]
  |> filled black
  |> rotate (degrees 207)
  |> move (11, 12)
  ]
 
 
lion = group [ 
  rect 30 45
  |> filled yellow
  |> move(0, -32)
  , rect 10 35 
  |> filled yellow
  |> rotate 10
  |> move(20, -60)
  , rect 10 35 
  |> filled yellow
  |> rotate -10
  |> move(-20, -60)
  , rect 10 25
  |> filled yellow
  |> rotate -90
  |> move(20, -30)
  , rect 10 25
  |> filled yellow
  |> rotate 90
  |> move(-20, -30)
  , circle 30
  |> filled yellow 
  |> move (0,0) 
  , circle eye_size
  |> filled brown 
  |> move (eye_right, eyes_y)
  , circle eye_size 
  |> filled brown 
  |> move (eye_left, eyes_y)     
  , circle ear_size 
  |> filled brown 
  |> move (ear_left_x, ears_y)
  , circle ear_size 
  |> filled brown 
  |> move (ear_right_x, ears_y)   
  , circle pupil_size 
  |> filled black 
  |> move (pupil_left_x, pupil_y) 
  , circle pupil_size 
  |> filled black 
  |> move (pupil_right_x, pupil_y)
  , circle ear_size 
  |> filled brown 
  |> move (ear_right_x, ears_y) 
  ,  rect 20 15
  |> filled white 
  |> move (mouth_x, mouth_y) 
  ,  triangle 5
  |> filled black
  |> rotate (degrees -90)
  |> move (5, -10)
  ,  triangle 5
  |> filled black
  |> rotate (degrees -90)
  |> move (0, -10)
  ,  triangle 5
  |> filled black
  |> rotate (degrees -90)
  |> move (-5, -10)
  ,  triangle 5
  |> filled black
  |> rotate (degrees -30)
  |> move (-5, -20) 
  ,  triangle 5
  |> filled black
  |> rotate (degrees -30)
  |> move (0, -20)
  ,  triangle 5
  |> filled black
  |> rotate (degrees -30)
  |> move (5, -20) 
 ]
 
moon = group 
  [
  circle radius_big
  |> filled white
  ,
  graycircles
  |> clip (circle 30 |> filled darkGray)
  ]
 
graycircles = group
   [
   circle radius_small
   |> filled gray
   |> move (-20,20)
   ,
   circle radius_small
   |> filled gray
   |> move (-20,-15)
   ,
   circle radius_small
   |> filled gray
   |> move (22,5)
   ]
 
textanimation model counter this_is_text y_axis = group [
  if 
  model.time > counter * 4
  then
  text this_is_text
    |> centered
    |> filled red
    |> move(0, y_axis)
  else
  group []
  ]
  
animal_animation model counter this_is_animal = group [ 
  if
  (model.time > counter * 4) && (model.time < (counter+1)*4)
  then
  this_is_animal
  else if 
  model.time > ((counter+1)*4)
  then
  group []
  else
  group []
 ]
