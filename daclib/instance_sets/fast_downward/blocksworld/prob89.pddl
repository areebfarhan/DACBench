

(define (problem BW-rand-18)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 )
(:init
(arm-empty)
(on b1 b11)
(on-table b2)
(on-table b3)
(on b4 b1)
(on b5 b16)
(on b6 b9)
(on b7 b4)
(on-table b8)
(on b9 b3)
(on-table b10)
(on b11 b17)
(on b12 b5)
(on b13 b12)
(on-table b14)
(on-table b15)
(on b16 b2)
(on b17 b13)
(on-table b18)
(clear b6)
(clear b7)
(clear b8)
(clear b10)
(clear b14)
(clear b15)
(clear b18)
)
(:goal
(and
(on b1 b13)
(on b2 b7)
(on b3 b17)
(on b4 b9)
(on b5 b4)
(on b7 b6)
(on b8 b18)
(on b9 b2)
(on b10 b12)
(on b11 b15)
(on b12 b5)
(on b13 b11)
(on b15 b14)
(on b16 b3)
(on b18 b10))
)
)


