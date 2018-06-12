SIZE = [1350, 720]
screen = pygame.display.set_mode(SIZE)


def Fexintro():
    basicfont = pygame.font.SysFont(None, 48)
    text = basicfont.render('Copy the word on screen exactly to get points. Good Luck!', True, black, (255, 255, 255))
    textrect = text.get_rect()
    textrect.centerx = screen.get_rect().centerx
    textrect.centery = screen.get_rect().centery
    screen.blit(text, textrect)
    pygame.display.update()

# The intro function for the exercise game, played before game starts

def exlvl1():
    squat = 'squat'
    jump = 'jump'
    left = 'left'
    right = 'right'
    words1 = [squat, jump, left, right ]
    a = random.choice(words1)
    rightan = ()
    if event.type == pygame.KEYDOWN:
        if a == 'left':
            rightan = event.key == pygame.K_LEFT
            if rightan == event.key == pygame.K_LEFT:
                print('h')
                basicfont = pygame.font.SysFont(None, 48)
                text = basicfont.render(a, True, black, whites)
                textrect = text.get_rect()
                textrect.centerx = screen.get_rect().centerx
                screen.blit(text, textrect)
            else:
                print('no')
        if a == 'right':
            rightan = event.key == pygame.K_RIGHT
            if rightan == event.key == pygame.K_RIGHT :
                print('i')
                basicfont = pygame.font.SysFont(None, 48)
                text = basicfont.render(a, True, black, whites)
                textrect = text.get_rect()
                textrect.centerx = screen.get_rect().centerx
                screen.blit(text, textrect)
            else:
                print('no')
        if  a == 'jump':
            rightan = event.key == pygame.K_UP
            if rightan == event.key == pygame.K_UP:
                print('k')
                basicfont = pygame.font.SysFont(None, 48)
                text = basicfont.render(a, True, black, whites)
                textrect = text.get_rect()
                textrect.centerx = screen.get_rect().centerx
                screen.blit(text, textrect)
            else:
                print('no')
        if  a == 'squat':
            rightan = event.key == pygame.K_DOWN
            if rightan == event.key == pygame.K_DOWN:
                print('f')
                basicfont = pygame.font.SysFont(None, 48)
                text = basicfont.render(a, True, black, whites)
                textrect = text.get_rect()
                textrect.centerx = screen.get_rect().centerx
                screen.blit(text, textrect)
            else:
                print('no')


# The function is for the first level of the exercise game
# exscore1 is the score from the first level of game
def timer():
    font = pygame.font.SysFont('Comic Sans MS', 25)
    frame_count = pygame.time.get_ticks()
    frame_rate = 17
    start_time = 2200

    total_seconds = start_time - (frame_count // frame_rate)

    if total_seconds < 0:
        total_seconds = 0
    minutes = total_seconds // 60
    seconds = total_seconds % 60
    output_string = "Time left: {}".format(minutes)
    text = font.render(output_string, True, (0, 0, 0))
    screen.blit(text, [50, 50])
    frame_count += 1

    while minutes == 0:
        pygame.quit()


done = False
while not done:  #main program loop
    for event in pygame.event.get(): #user did something
        if event.type==pygame.QUIT:  #if user clicked close
             done = True             # flag to exit loop
    screen.fill(whites)
    exlvl1()
    timer()
    pygame.display.flip()

