

(define (problem BW-rand-21)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 )
(:init
(arm-empty)
(on b1 b17)
(on-table b2)
(on b3 b15)
(on b4 b7)
(on b5 b21)
(on b6 b1)
(on-table b7)
(on b8 b10)
(on-table b9)
(on b10 b4)
(on b11 b16)
(on b12 b13)
(on b13 b18)
(on b14 b19)
(on b15 b14)
(on b16 b5)
(on b17 b20)
(on b18 b6)
(on b19 b2)
(on b20 b11)
(on-table b21)
(clear b3)
(clear b8)
(clear b9)
(clear b12)
)
(:goal
(and
(on b1 b21)
(on b2 b9)
(on b3 b20)
(on b5 b10)
(on b6 b12)
(on b8 b15)
(on b10 b14)
(on b13 b11)
(on b14 b19)
(on b15 b2)
(on b16 b6)
(on b17 b5)
(on b18 b4)
(on b19 b16)
(on b20 b8)
(on b21 b17))
)
)


