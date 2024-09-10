import re
import numpy as np

DIRECTION = {
    'N' : (0, 1),
    'S' : (2, 1),
    'E' : (1, 2),
    'W' : (1, 0)
}

# Sample PDDL content
def read_pddl_file(filename=""):
    content = None
    with open(file=filename) as f:
        content = f.read()
    print(content)
    return content


def extract_blocked_statements(pddl):
    # Regex pattern to match BLOCKED statements
    pattern = re.compile(r'\(BLOCKED (\w+) (\w+)\)')
    
    # Find all matches in the PDDL content
    blocked_statements = pattern.findall(pddl)
    
    tile_config = dict()
    # Collect each blocked statement
    for card, direction in blocked_statements:
        if card[4:] not in tile_config.keys():
            tile_config[card[4:]] = [direction]
        else:
            tile_config[card[4:]].append(direction)
    print(tile_config)
    return tile_config

# Extract and print blocked statements
pddl_content = read_pddl_file("3x3_instances_pddl/instance_0_3_by_3.pddl")
tile_config = extract_blocked_statements(pddl_content)
N = np.sqrt(len(tile_config)).astype(int)

block_collections = []

for card , blocks in tile_config.items():
    initial_tile = np.ones((N, N))
    print(f"Card {card}:\n")
    # All 4 corners are assumed block
    initial_tile[0, 0] = 0
    initial_tile[0, 2] = 0
    initial_tile[2, 0] = 0
    initial_tile[2, 2] = 0

    # Block those specified
    for direction in blocks:
        initial_tile[DIRECTION[direction]] = 0
    block_collections.append(initial_tile)
    print(initial_tile)
    print('\n')

result = np.block([[block_collections[i * N + j] for j in range(N)] for i in range(N)])

print(f"Resulting Board Config : \n")

print(result)




