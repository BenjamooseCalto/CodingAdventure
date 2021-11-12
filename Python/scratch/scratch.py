import pygame

pygame.init()
screen = pygame.display.set_mode((1280, 720))
done = False

red = (255, 0, 0)
blue = (0, 100, 255)
gravity = 9.8**2

while not done:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            done = True

    pygame.draw.rect(screen, (0, 128, 255), pygame.Rect(30, 30, 60, 60))
    

    pygame.display.flip()
    