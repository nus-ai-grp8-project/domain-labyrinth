import re
import numpy as np

DIRECTION = {
    'N' : (0, 1),
    'S' : (2, 1),
    'E' : (1, 2),
    'W' : (1, 0)
}

class Parser:

    def __read_filename(self, filename, verbose=False):
        content = None
        with open(file=filename) as f:
            content = f.read()
        print(content) if verbose else None
        return content
    
    def __extract_blocked_statements(self, pddl_content, verbose=False):
        # Regex pattern to match BLOCKED statements
        pattern = re.compile(r'\(BLOCKED (\w+) (\w+)\)')
        
        # Find all matches in the PDDL content
        blocked_statements = pattern.findall(pddl_content)
        
        tile_config = dict()
        # Collect each blocked statement
        for card, direction in blocked_statements:
            if card[4:] not in tile_config.keys():
                tile_config[card[4:]] = [direction]
            else:
                tile_config[card[4:]].append(direction)
        print(tile_config) if verbose else None
        return tile_config
    
    def __generate_board(self, N, tile_config:dict):
        block_collections = []

        for _ , blocks in tile_config.items():
            initial_tile = np.ones((N, N))
            # All 4 corners are assumed block
            initial_tile[0, 0] = 0
            initial_tile[0, 2] = 0
            initial_tile[2, 0] = 0
            initial_tile[2, 2] = 0

            # Block those specified
            for direction in blocks:
                initial_tile[DIRECTION[direction]] = 0
            block_collections.append(initial_tile)
        result = np.block([[block_collections[i * N + j] for j in range(N)] for i in range(N)])
        print(f"******** GENERATING BOARD ********")
        print(result)
        return result

    def get_board(self, filename: str | None, verbose=False):
        pddl_content = self.__read_filename(filename, verbose=verbose)
        tile_configs = self.__extract_blocked_statements(pddl_content=pddl_content, verbose=False)
        N = np.sqrt(len(tile_configs)).astype(int)
        return self.__generate_board(N, tile_config=tile_configs)
    
if __name__ == "__main__":
    parser = Parser()
    parser.get_board(filename="5x5_instances_pddl/instance_2_5_by_5.pddl")

        




