(define (problem labyrinth-size-7-rotations-4-seed-67)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2 pos3 pos4 pos5 pos6  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15 card16 card17 card18 card19 card20 card21 card22 card23 card24 card25 card26 card27 card28 card29 card30 card31 card32 card33 card34 card35 card36 card37 card38 card39 card40 card41 card42 card43 card44 card45 card46 card47 card48  - card
)
(:init
	(MAX-POS pos6)
	(MIN-POS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)
	(NEXT pos3 pos2)
	(NEXT pos4 pos3)
	(NEXT pos5 pos4)
	(NEXT pos6 pos5)

	(card-at card0 pos0 pos0)
	(card-at card8 pos1 pos0)
	(card-at card2 pos2 pos0)
	(card-at card3 pos3 pos0)
	(card-at card4 pos4 pos0)
	(card-at card5 pos5 pos0)
	(card-at card6 pos6 pos0)
	(card-at card7 pos0 pos1)
	(card-at card15 pos1 pos1)
	(card-at card9 pos2 pos1)
	(card-at card10 pos3 pos1)
	(card-at card11 pos4 pos1)
	(card-at card12 pos5 pos1)
	(card-at card13 pos6 pos1)
	(card-at card14 pos0 pos2)
	(card-at card22 pos1 pos2)
	(card-at card16 pos2 pos2)
	(card-at card17 pos3 pos2)
	(card-at card18 pos4 pos2)
	(card-at card19 pos5 pos2)
	(card-at card20 pos6 pos2)
	(card-at card21 pos0 pos3)
	(card-at card31 pos1 pos3)
	(card-at card23 pos2 pos3)
	(card-at card24 pos3 pos3)
	(card-at card25 pos4 pos3)
	(card-at card26 pos5 pos3)
	(card-at card27 pos6 pos3)
	(card-at card30 pos0 pos4)
	(card-at card35 pos1 pos4)
	(card-at card32 pos2 pos4)
	(card-at card33 pos3 pos4)
	(card-at card34 pos4 pos4)
	(card-at card28 pos5 pos4)
	(card-at card29 pos6 pos4)
	(card-at card41 pos0 pos5)
	(card-at card43 pos1 pos5)
	(card-at card36 pos2 pos5)
	(card-at card37 pos3 pos5)
	(card-at card38 pos4 pos5)
	(card-at card39 pos5 pos5)
	(card-at card40 pos6 pos5)
	(card-at card42 pos0 pos6)
	(card-at card1 pos1 pos6)
	(card-at card44 pos2 pos6)
	(card-at card45 pos3 pos6)
	(card-at card46 pos4 pos6)
	(card-at card47 pos5 pos6)
	(card-at card48 pos6 pos6)

	(BLOCKED card0 S)
	(BLOCKED card0 W)

	(BLOCKED card8 N)
	(BLOCKED card8 W)

	(BLOCKED card2 N)
	(BLOCKED card2 S)

	(BLOCKED card3 N)
	(BLOCKED card3 S)

	(BLOCKED card4 N)
	(BLOCKED card4 S)

	(BLOCKED card5 N)
	(BLOCKED card5 E)

	(BLOCKED card6 N)
	(BLOCKED card6 W)

	(BLOCKED card7 N)
	(BLOCKED card7 E)

	(BLOCKED card15 N)
	(BLOCKED card15 S)

	(BLOCKED card9 N)
	(BLOCKED card9 W)

	(BLOCKED card10 N)
	(BLOCKED card10 S)

	(BLOCKED card11 E)

	(BLOCKED card12 E)
	(BLOCKED card12 W)

	(BLOCKED card13 S)
	(BLOCKED card13 W)

	(BLOCKED card14 N)

	(BLOCKED card22 E)
	(BLOCKED card22 W)

	(BLOCKED card16 S)

	(BLOCKED card17 N)
	(BLOCKED card17 W)

	(BLOCKED card18 E)

	(BLOCKED card19 E)
	(BLOCKED card19 W)

	(BLOCKED card20 E)
	(BLOCKED card20 W)

	(BLOCKED card21 N)
	(BLOCKED card21 E)

	(BLOCKED card31 W)

	(BLOCKED card23 N)
	(BLOCKED card23 E)

	(BLOCKED card24 E)
	(BLOCKED card24 W)

	(BLOCKED card25 N)
	(BLOCKED card25 W)

	(BLOCKED card26 E)
	(BLOCKED card26 S)

	(BLOCKED card27 S)
	(BLOCKED card27 W)

	(BLOCKED card30 W)

	(BLOCKED card35 E)
	(BLOCKED card35 S)

	(BLOCKED card32 S)
	(BLOCKED card32 W)

	(BLOCKED card33 N)
	(BLOCKED card33 E)

	(BLOCKED card34 E)
	(BLOCKED card34 S)

	(BLOCKED card28 N)
	(BLOCKED card28 S)

	(BLOCKED card29 S)
	(BLOCKED card29 W)

	(BLOCKED card41 N)
	(BLOCKED card41 E)

	(BLOCKED card43 S)

	(BLOCKED card36 S)
	(BLOCKED card36 W)

	(BLOCKED card37 N)
	(BLOCKED card37 E)

	(BLOCKED card38 W)

	(BLOCKED card39 N)
	(BLOCKED card39 W)

	(BLOCKED card40 S)
	(BLOCKED card40 W)

	(BLOCKED card42 N)
	(BLOCKED card42 W)

	(BLOCKED card1 N)

	(BLOCKED card44 N)
	(BLOCKED card44 E)

	(BLOCKED card45 N)
	(BLOCKED card45 W)

	(BLOCKED card46 N)
	(BLOCKED card46 E)

	(BLOCKED card47 S)
	(BLOCKED card47 W)

	(BLOCKED card48 W)


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
