Branching:
git checkout -b python-script
A python branch was created; notice that we went from (main) to (python-script)
![[Pasted image 20260924202802.png]]


What does this mean? What did we do? How is this useful when multiple individuals are working on the same project at the same time?

![[Pasted image 20260924195722.png]]


When you see () think function.

chmod +x
- chmod means change mode, permissions of file
- for now, just understand that it prepares the file to be executable in this case.

![[Pasted image 20260924212055.png]]

- Once prepared by chmod command use the python command to activate code/program

Code from fight_game.py file from class:
def attack_enemy(enemy_health, attack_power):
    new_enemy_health = enemy_health - attack_power
    return new_enemy_health


def check_enemy_status(enemy_name, enemy_health):
    if enemy_health <= 0:
        print(f"{enemy_name} has been defeated!")
    else:
        print(f"{enemy_name} is still standing.")


player_name = "Ryu"
enemy_name = "Shadow Bot"
enemy_health = 75
player_attack = 20

print(f"{player_name} attacks {enemy_name}!")

enemy_health = attack_enemy(enemy_health, player_attack)

print(f"{enemy_name} now has {enemy_health} health.")

check_enemy_status(enemy_name, enemy_health)

![[Pasted image 20260924214504.png]]