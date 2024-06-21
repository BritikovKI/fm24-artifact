(set-logic HORN)
(declare-fun inv_0 (Int Int Int Int) Bool)
(declare-fun inv_1 (Int Int Int Int) Bool)
(declare-fun inv_2 (Int Int Int Int) Bool)
(declare-fun inv_3 (Int Int Int Int) Bool)
(declare-fun inv_4 (Int Int Int Int) Bool)

(assert (forall ((|_FH_0'| Int) (|_FH_1'| Int) (|_FH_2'| Int) (|count'| Int))
  (=>
    (and (= 0 |_FH_0'|) (= |count'| 0))
    (inv_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((x1 Int) (y1 Int) (z1 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (ite (<= y1 5) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- 1) (- z1)) 0)) (ite (> x1 y1) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- 1) (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)) (and (= |_FH_0'| 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)))) (ite (>= _FH_0 5) (and (= (+ x1 (- _FH_0)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1) (- 1)) 0)) (and (= (+ x1 (- _FH_0) (- 1)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1)) 0))) (inv_0 count _FH_0 _FH_1 _FH_2) (< count 100) (= |count'| (+ count 1)))
    (inv_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (inv_0 count _FH_0 _FH_1 _FH_2) (>= count 100))
    (inv_1 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((x1 Int) (y1 Int) (z1 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (ite (<= y1 5) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- 1) (- z1)) 0)) (ite (> x1 y1) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- 1) (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)) (and (= |_FH_0'| 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)))) (ite (>= _FH_0 5) (and (= (+ x1 (- _FH_0)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1) (- 1)) 0)) (and (= (+ x1 (- _FH_0) (- 1)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1)) 0))) (inv_1 count _FH_0 _FH_1 _FH_2) (< count 200) (= |count'| (+ count 1)))
    (inv_1 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (inv_1 count _FH_0 _FH_1 _FH_2) (>= count 200))
    (inv_2 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((x1 Int) (y1 Int) (z1 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (ite (<= y1 5) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- 1) (- z1)) 0)) (ite (> x1 y1) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- 1) (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)) (and (= |_FH_0'| 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)))) (ite (>= _FH_0 5) (and (= (+ x1 (- _FH_0)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1) (- 1)) 0)) (and (= (+ x1 (- _FH_0) (- 1)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1)) 0))) (inv_2 count _FH_0 _FH_1 _FH_2) (< count 300) (= |count'| (+ count 1)))
    (inv_2 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (inv_2 count _FH_0 _FH_1 _FH_2) (>= count 300))
    (inv_3 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((x1 Int) (y1 Int) (z1 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (ite (<= y1 5) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- 1) (- z1)) 0)) (ite (> x1 y1) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- 1) (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)) (and (= |_FH_0'| 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)))) (ite (>= _FH_0 5) (and (= (+ x1 (- _FH_0)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1) (- 1)) 0)) (and (= (+ x1 (- _FH_0) (- 1)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1)) 0))) (inv_3 count _FH_0 _FH_1 _FH_2) (< count 400) (= |count'| (+ count 1)))
    (inv_3 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (inv_3 count _FH_0 _FH_1 _FH_2) (>= count 400))
    (inv_4 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((x1 Int) (y1 Int) (z1 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (ite (<= y1 5) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- 1) (- z1)) 0)) (ite (> x1 y1) (and (= (+ |_FH_0'| (- x1)) 0) (= (+ |_FH_1'| (- 1) (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)) (and (= |_FH_0'| 0) (= (+ |_FH_1'| (- y1)) 0) (= (+ |_FH_2'| (- z1)) 0)))) (ite (>= _FH_0 5) (and (= (+ x1 (- _FH_0)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1) (- 1)) 0)) (and (= (+ x1 (- _FH_0) (- 1)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- _FH_1)) 0))) (inv_4 count _FH_0 _FH_1 _FH_2) (< count 500) (= |count'| (+ count 1)))
    (inv_4 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((x1 Int) (y1 Int) (z1 Int) (_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int) (|count'| Int))
  (=>
    (and (> y1 5) (= (+ x1 (- _FH_0)) 0) (= (+ z1 (- _FH_2)) 0) (= (+ y1 (- 1) (- _FH_1)) 0) (> (+ x1 (- y1)) 0) (inv_4 |count'| _FH_0 _FH_1 _FH_2) (>= count 500))
    false)))

(check-sat)
