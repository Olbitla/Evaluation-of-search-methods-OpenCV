#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys, pygame, gc, os
from os import path
from pygame.locals import *

def main():
  ###################################
  route_images = sys.argv[1]
  route_bb = sys.argv[2]
  ###################################
  ##screen_size = (900,700)
  screen = pygame.display.set_mode((950,800),RESIZABLE)
  screenRect = screen.get_rect()
  pygame.display.set_caption("Imagen")
  
  red = (255, 0, 0)
  green = (0, 255, 0)
  blue = (0, 0, 255)
  Buff = (200,180,180)
  index = 0
  file_images = get_filenames(route_images)
  ## print "Image "+str(index)+" "+route_images+file_images[index]
  background_image = load_image(route_images+file_images[index])
  ##ancho = file_images.get
  done=True
  add_polygon=0
  add_object=0
  sum_10=0
  size_draw_pol = 0.5
  size_draw_object = 0.5
  new_rects = []  ##red square
  new_objects = []  ##blue square
  ratio = (1.0 * screenRect.width) / screen.get_width()
  scrollThick = 20
  track = pygame.Rect(screenRect.left, screenRect.bottom - scrollThick, screenRect.width, scrollThick)
  knob = pygame.Rect(track)
  knob.width = track.width*ratio
  scrolling = False
      
  list_pol_h = list_pols_h(route_bb + file_images[index].replace('.JPG','.txt').replace('.png','.txt').replace('.jpg','.txt')) ##update polygons and points of object
  pol_rect = pygame.Rect(( 1,1 ),( 48*(size_draw_pol),48*(size_draw_pol)))
  while done:
    for eventos in pygame.event.get():
      if eventos.type == pygame.QUIT:
        done=False
      
      if eventos.type == MOUSEMOTION and scrolling: ##Si el raton se mueve pulsando un boton
        if eventos.buttons[0] and (add_polygon==1 or add_object==1):
          cur2=pygame.mouse.get_pos()
          if pol_rect.collidepoint(cur2):
            pol_rect.left+=eventos.rel[0]
            pol_rect.top+=eventos.rel[1]
        if eventos.rel[0] != 0:
          move = max(eventos.rel[0], track.left - knob.left)
          move = min(move, track.right - knob.right)
          if move != 0:
            knob.move_ip((move,0))
      if eventos.type == MOUSEBUTTONDOWN and knob.collidepoint(eventos.pos):
        scrolling = True
      
      elif eventos.type == MOUSEBUTTONUP:
        scrolling = False
                            
      if eventos.type is KEYDOWN:
        button_pressed = pygame.key.name(eventos.key)
        print button_pressed
        if button_pressed == 'escape':
          done=False
        
        ##if button_pressed == 'q':
          ##list_pol_h = []
          #list_pol_point = []
          ##add_polygon=0
          ##add_object=0
        
        if button_pressed == 'left ctrl':##add a rect
          if add_polygon==1:
            new_rects.append(pol_rect)
            #size_draw_pol=1
            pol_rect = pygame.Rect((pygame.mouse.get_pos()[0]-24*(size_draw_pol),pygame.mouse.get_pos()[1]-24*(size_draw_pol)),( 48*(size_draw_pol),48*(size_draw_pol) ))
            add_polygon=0
          if add_object==1:
            new_objects.append(pol_rect)
            print len(new_objects)
            #size_draw_object=0.5
            pol_rect = pygame.Rect((pygame.mouse.get_pos()[0]-24*(size_draw_object),pygame.mouse.get_pos()[1]-24*(size_draw_object)),( 48*(size_draw_object),48*(size_draw_object) ))
            add_object=0
        
        if button_pressed == 'left shift':
          if add_polygon==1 and size_draw_pol != 0:
            size_draw_pol -= 0.1
            pol_rect = pygame.Rect((pygame.mouse.get_pos()[0]-24*(size_draw_pol),pygame.mouse.get_pos()[1]-24*(size_draw_pol)),( 48*(size_draw_pol),48*(size_draw_pol) ))
          if add_object==1 and size_draw_object != 0:
            size_draw_object -= 0.1
            pol_rect = pygame.Rect((pygame.mouse.get_pos()[0]-24*(size_draw_object),pygame.mouse.get_pos()[1]-24*(size_draw_object)),( 48*(size_draw_object),48*(size_draw_object) ))
                                
        if button_pressed == 'space':##create rect or increase the size of rect (red)
          if add_object != 1:
            if add_polygon==1:
              size_draw_pol += 0.1
              pol_rect = pygame.Rect((pygame.mouse.get_pos()[0]-24*(size_draw_pol),pygame.mouse.get_pos()[1]-24*(size_draw_pol)),( 48*(size_draw_pol),48*(size_draw_pol) ))
            else:
              add_polygon=1
        
        if button_pressed == 'left alt':
          if add_polygon != 1:
            if add_object==1:
              size_draw_object += 0.1
              pol_rect = pygame.Rect((pygame.mouse.get_pos()[0]-24*(size_draw_object),pygame.mouse.get_pos()[1]-24*(size_draw_object)),( 48*(size_draw_object),48*(size_draw_object) ))
            else:
              add_object=1
        
        if button_pressed == 'x':##delete the last polygon (red)
          if len(new_rects) != 0:
            new_rects.pop()  
        
        if button_pressed == 's':##delete the last polygon (blue)
          if len(new_objects) != 0:
            new_objects.pop()
            
        if button_pressed == 'right' or button_pressed == 'left': 
          print "Image "+str(index)+" "+route_images+file_images[index]             
          add_polygon=0
          add_object_point=0
          add_object=0
          size_draw_pol = 0.5
          size_draw_object = 0.5
          pol_rect = pygame.Rect(( 1,1 ),( 48*(size_draw_pol),48*(size_draw_pol) ))
          new_rects = []
          new_objects = []
          new_object_points = []
          if button_pressed == 'right':##next image
            if index != len(file_images):
              index+=1
            if not(index +10 >= len(file_images)) and sum_10==1:
              index+=9
          if button_pressed == 'left':##previous image
            if index != 0:
              index-=1
            if not(index -10 < 0)and sum_10==1:
              index-=9
          background_image = load_image(route_images+file_images[index])
          screen = pygame.display.set_mode((background_image.get_width(), background_image.get_height()),RESIZABLE)
          list_pol_h = list_pols_h(route_bb+file_images[index].replace('.JPG','.txt').replace('.png','.txt').replace('.jpg','.txt'))
          #pygame.display.set_caption("Imagen "+str(index+1))
          pygame.display.set_caption("Imagen " + str(index+1) + " " + file_images[index])

          
        ################################################### 
              
        if button_pressed == 'return':
          cad_o=''
          new_file_o = open (route_bb + file_images[index].replace('.JPG','.txt').replace('.png','.txt').replace('.jpg','.txt'), "w")
          #new_file = open (file_to_open, "w")
          for i in range(len(new_objects)):
            cad_o+=str(new_objects[i].topleft[0])+'\t'+str(new_objects[i].topleft[1])+'\t'+str(new_objects[i].bottomright[0])+'\t'+str(new_objects[i].bottomright[1])+'\n'
          new_file_o.write(cad_o)
          
          new_file_o.close()
          add_polygon=0
          add_object_point=0
          add_object=0
          list_pol_h = []
          new_object_points = []
          #list_pol_point = [[],list_pol_point[1]]
          size_draw_pol = 0.5
          size_draw_object = 0.5
          pol_rect = pygame.Rect(( 1,1 ),( 48*(size_draw_pol),48*(size_draw_pol) ))
          pygame.image.save(screen,"../data/Lata/ImageRectangle.jpg")
          #image = image.get_rect();

    screen.blit(pygame.transform.scale(background_image,(1500,1200)),(0,0))
    pygame.draw.rect(screen, Buff, track, 0)
    pygame.draw.rect(screen, blue, knob.inflate(0,-5),2)
    
    for object in list_pol_h:
      pygame.draw.polygon(screen, blue, object, 1)
    for polygon in new_rects:
      pygame.draw.rect(screen, red, polygon, 1)
    for object in new_objects:
      pygame.draw.rect(screen, blue, object, 1)
    if add_polygon==1:
      pygame.draw.rect(screen, green, pol_rect,1)
    if add_object==1:
      pygame.draw.rect(screen, green, pol_rect,1)
    pygame.display.update(background_image.get_rect());
    ##pygame.image.save(screen,"../data/Lata/ImageRectangle.jpg")

  pygame.quit()

def load_image(filename, transparent=False):
  print filename
  try: image = pygame.image.load(filename)
  except pygame.error, message:
    raise SystemExit, message
  image = image.convert()
  if transparent:
    color = image.get_at((0,0))
    image.set_colorkey(color, RLEACCEL)
  return image
    
def get_filenames(_route):
  files = os.listdir(_route)
  return files

def list_pols(list_file):
  list_pol1 = []
  list_point1 = []
  list_eve = []
  for linea in list_file:                        
    ls=linea.split()
    if(len(ls) >= 4):
      point1 = (int(ls[0]),int(ls[1]))
      point3 = (int(ls[2]),int(ls[3]))
      point2 = (point1[0],point3[1])
      point4 = (point3[0],point1[1])
      if( int(ls[2]) != 0 and int(ls[2]) != 0 ):
        list_pol1.append([point1,point2,point3,point4,point1])
  list_eve.append(list_pol1)
  list_eve.append(list_point1)
  return list_eve

def list_pols_h(name_file_abs):
  list_pol1 = []
  if path.exists(name_file_abs) and path.isfile(name_file_abs):
    file1 = open(name_file_abs)
    lineas = file1.readlines()
    for linea in lineas:                        
      ls=linea.split()
      if(len(ls) >= 4):
        point1 = (int(ls[0]),int(ls[1]))
        point3 = (int(ls[2]),int(ls[3]))
        point2 = (point1[0],point3[1])
        point4 = (point3[0],point1[1])
        if( int(ls[2]) != 0 and int(ls[2]) != 0 ):
          list_pol1.append([point1,point2,point3,point4,point1]) 
  return list_pol1

if __name__ == '__main__':
  pygame.init()
  main()
  
