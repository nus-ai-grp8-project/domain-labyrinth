(define (problem labyrinth-size-3-rotations-0-seed-13)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8  - card
)
(:init
	(MAX-POS pos2)
	(MIN-POS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)

	(card-at card0 pos0 pos0)
	(card-at card1 pos1 pos0)
	(card-at card2 pos2 pos0)
	(card-at card3 pos0 pos1)
	(card-at card4 pos1 pos1)
	(card-at card5 pos2 pos1)
	(card-at card6 pos0 pos2)
	(card-at card7 pos1 pos2)
	(card-at card8 pos2 pos2)

	(BLOCKED card0 N)

	(BLOCKED card1 N)
	(BLOCKED card1 S)

	(BLOCKED card2 E)

	(BLOCKED card3 E)
	(BLOCKED card3 W)

	(BLOCKED card4 N)
	(BLOCKED card4 W)

	(BLOCKED card5 N)
	(BLOCKED card5 E)

	(BLOCKED card6 S)
	(BLOCKED card6 W)

	(BLOCKED card7 E)
	(BLOCKED card7 S)

	(BLOCKED card8 E)


	(robot-at card0)

	(= (total-cost) 0)
	(= (move-robot-cost) 1)
	(= (move-card) 1)
)
(:goal
	(and
		(left)
	)
)
	(:metric minimize (total-cost))
)
