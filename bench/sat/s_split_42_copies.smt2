(set-logic HORN)
(declare-fun inv_0 (Int Int Int Int) Bool)
(declare-fun inv_1 (Int Int Int Int) Bool)
(declare-fun inv_2 (Int Int Int Int) Bool)
(declare-fun inv_3 (Int Int Int Int) Bool)
(declare-fun inv_4 (Int Int Int Int) Bool)

(assert (forall ((|_FH_0'| Int) (|_FH_1'| Int) (|_FH_2'| Int) (|count'| Int))
  (=>
    (and (= 0 |_FH_0'|) (= 0 |_FH_2'|) (= 0 |_FH_1'|) (= |count'| 0))
    (inv_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_0'| (+ _FH_0 1)) (= |_FH_1'| (+ _FH_1 (ite (>= _FH_0 1765) 2 1))) (= |_FH_2'| (+ _FH_2 (ite (>= _FH_1 5765) 3 2))) (inv_0 count _FH_0 _FH_1 _FH_2) (< count 100) (= |count'| (+ count 1)))
    (inv_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (inv_0 count _FH_0 _FH_1 _FH_2) (>= count 100))
    (inv_1 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_0'| (+ _FH_0 1)) (= |_FH_1'| (+ _FH_1 (ite (>= _FH_0 1765) 2 1))) (= |_FH_2'| (+ _FH_2 (ite (>= _FH_1 5765) 3 2))) (inv_1 count _FH_0 _FH_1 _FH_2) (< count 200) (= |count'| (+ count 1)))
    (inv_1 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (inv_1 count _FH_0 _FH_1 _FH_2) (>= count 200))
    (inv_2 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_0'| (+ _FH_0 1)) (= |_FH_1'| (+ _FH_1 (ite (>= _FH_0 1765) 2 1))) (= |_FH_2'| (+ _FH_2 (ite (>= _FH_1 5765) 3 2))) (inv_2 count _FH_0 _FH_1 _FH_2) (< count 300) (= |count'| (+ count 1)))
    (inv_2 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (inv_2 count _FH_0 _FH_1 _FH_2) (>= count 300))
    (inv_3 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_0'| (+ _FH_0 1)) (= |_FH_1'| (+ _FH_1 (ite (>= _FH_0 1765) 2 1))) (= |_FH_2'| (+ _FH_2 (ite (>= _FH_1 5765) 3 2))) (inv_3 count _FH_0 _FH_1 _FH_2) (< count 400) (= |count'| (+ count 1)))
    (inv_3 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (inv_3 count _FH_0 _FH_1 _FH_2) (>= count 400))
    (inv_4 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_0'| (+ _FH_0 1)) (= |_FH_1'| (+ _FH_1 (ite (>= _FH_0 1765) 2 1))) (= |_FH_2'| (+ _FH_2 (ite (>= _FH_1 5765) 3 2))) (inv_4 count _FH_0 _FH_1 _FH_2) (< count 500) (= |count'| (+ count 1)))
    (inv_4 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int) (|count'| Int))
  (=>
    (and (> _FH_0 17650) (<= _FH_2 27650) (inv_4 |count'| _FH_0 _FH_1 _FH_2) (>= count 500))
    false)))

(check-sat)
