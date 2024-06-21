(set-logic HORN)
(declare-fun P (Int) Bool)
(assert (forall ((x Int))
    (=> (= x 0) (P x))
))

(assert (forall ((x Int))
    (=> (P x) (P (+ x 1)))
))


(assert (forall ((x Int))
    (=> (and (> x 0) (P x)) false)
))

(check-sat)
