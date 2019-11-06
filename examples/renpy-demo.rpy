# The script of the game goes in this file.

# Declare characters used by this game. The color argument colorizes the
# name of the character.

define e = Character("Eileen")

init python:
    hasPurred = False


# The game starts here.

label start:

    # Show a background. This uses a placeholder by default, but you can
    # add a file (named either "bg room.png" or "bg room.jpg") to the
    # images directory to show it.

    scene bg room

    # This shows a character sprite. A placeholder is used, but you can
    # replace it by adding a file named "eileen happy.png" to the images
    # directory.

    show eileen happy

    # These display lines of dialogue.

    e "I play the guitar in the mountains! MMEEEEOOOOOOWWWWW!!!"

    menu:
        "Ask to play a song":
            jump bandPractice
        "Pet":
            show eileen purr at right with dissolve
            e "Puuurrrrrrrrrrrr"
            $ hasPurred = True
            jump start
        "Give treat" if hasPurred:
            e "cronch"
            show eileen happy at left with dissolve

    return

label bandPractice:
