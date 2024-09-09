(define (problem labyrinth-size-7-rotations-4-seed-8)
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
	(card-at card1 pos1 pos0)
	(card-at card9 pos2 pos0)
	(card-at card3 pos3 pos0)
	(card-at card4 pos4 pos0)
	(card-at card5 pos5 pos0)
	(card-at card6 pos6 pos0)
	(card-at card7 pos0 pos1)
	(card-at card8 pos1 pos1)
	(card-at card17 pos2 pos1)
	(card-at card10 pos3 pos1)
	(card-at card11 pos4 pos1)
	(card-at card12 pos5 pos1)
	(card-at card13 pos6 pos1)
	(card-at card15 pos0 pos2)
	(card-at card16 pos1 pos2)
	(card-at card23 pos2 pos2)
	(card-at card18 pos3 pos2)
	(card-at card19 pos4 pos2)
	(card-at card20 pos5 pos2)
	(card-at card14 pos6 pos2)
	(card-at card21 pos0 pos3)
	(card-at card22 pos1 pos3)
	(card-at card31 pos2 pos3)
	(card-at card24 pos3 pos3)
	(card-at card25 pos4 pos3)
	(card-at card26 pos5 pos3)
	(card-at card27 pos6 pos3)
	(card-at card28 pos0 pos4)
	(card-at card29 pos1 pos4)
	(card-at card30 pos2 pos4)
	(card-at card37 pos3 pos4)
	(card-at card32 pos4 pos4)
	(card-at card33 pos5 pos4)
	(card-at card34 pos6 pos4)
	(card-at card35 pos0 pos5)
	(card-at card36 pos1 pos5)
	(card-at card44 pos2 pos5)
	(card-at card38 pos3 pos5)
	(card-at card39 pos4 pos5)
	(card-at card40 pos5 pos5)
	(card-at card41 pos6 pos5)
	(card-at card42 pos0 pos6)
	(card-at card43 pos1 pos6)
	(card-at card2 pos2 pos6)
	(card-at card45 pos3 pos6)
	(card-at card46 pos4 pos6)
	(card-at card47 pos5 pos6)
	(card-at card48 pos6 pos6)

	(BLOCKED card0 E)

	(BLOCKED card1 W)

	(BLOCKED card9 E)
	(BLOCKED card9 W)

	(BLOCKED card3 N)
	(BLOCKED card3 S)

	(BLOCKED card4 S)
	(BLOCKED card4 W)

	(BLOCKED card5 E)
	(BLOCKED card5 W)

	(BLOCKED card6 N)
	(BLOCKED card6 S)

	(BLOCKED card7 E)
	(BLOCKED card7 W)

	(BLOCKED card8 E)
	(BLOCKED card8 S)

	(BLOCKED card17 E)
	(BLOCKED card17 S)

	(BLOCKED card10 S)

	(BLOCKED card11 S)
	(BLOCKED card11 W)

	(BLOCKED card12 E)
	(BLOCKED card12 W)

	(BLOCKED card13 W)

	(BLOCKED card15 N)
	(BLOCKED card15 E)

	(BLOCKED card16 E)
	(BLOCKED card16 W)

	(BLOCKED card23 N)
	(BLOCKED card23 E)

	(BLOCKED card18 E)
	(BLOCKED card18 W)

	(BLOCKED card19 S)
	(BLOCKED card19 W)

	(BLOCKED card20 S)

	(BLOCKED card14 S)
	(BLOCKED card14 W)

	(BLOCKED card21 E)
	(BLOCKED card21 W)

	(BLOCKED card22 S)
	(BLOCKED card22 W)

	(BLOCKED card31 S)

	(BLOCKED card24 E)
	(BLOCKED card24 W)

	(BLOCKED card25 S)
	(BLOCKED card25 W)

	(BLOCKED card26 E)

	(BLOCKED card27 N)
	(BLOCKED card27 E)

	(BLOCKED card28 N)
	(BLOCKED card28 S)

	(BLOCKED card29 E)
	(BLOCKED card29 W)

	(BLOCKED card30 W)

	(BLOCKED card37 E)

	(BLOCKED card32 N)
	(BLOCKED card32 E)

	(BLOCKED card33 N)
	(BLOCKED card33 E)

	(BLOCKED card34 N)
	(BLOCKED card34 S)

	(BLOCKED card35 S)
	(BLOCKED card35 W)

	(BLOCKED card36 E)

	(BLOCKED card44 S)
	(BLOCKED card44 W)

	(BLOCKED card38 S)
	(BLOCKED card38 W)

	(BLOCKED card39 E)
	(BLOCKED card39 W)

	(BLOCKED card40 N)
	(BLOCKED card40 S)

	(BLOCKED card41 E)

	(BLOCKED card42 E)
	(BLOCKED card42 W)

	(BLOCKED card43 E)
	(BLOCKED card43 W)

	(BLOCKED card2 E)
	(BLOCKED card2 W)

	(BLOCKED card45 W)

	(BLOCKED card46 W)


	(BLOCKED card48 N)
	(BLOCKED card48 E)


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
