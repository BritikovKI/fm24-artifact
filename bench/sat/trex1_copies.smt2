(set-logic HORN)
(declare-fun FUN_0 (Int Int Int Int Int) Bool)
(declare-fun FUN_1 (Int Int Int Int Int) Bool)
(declare-fun FUN_2 (Int Int Int Int Int) Bool)
(declare-fun FUN_3 (Int Int Int Int Int) Bool)
(declare-fun FUN_4 (Int Int Int Int Int) Bool)

(assert (forall ((|_FH_0'| Int) (|_FH_1'| Int) (|_FH_2'| Int) (|_FH_3'| Int) (|count'| Int))
  (=>
    (and (= 1 |_FH_0'|) (= 1 |_FH_1'|) (= 1 |_FH_2'|) (= 1 |_FH_3'|) (= |count'| 0))
    (FUN_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_3'| (* 2 _FH_3)) (< _FH_3 _FH_2) (= _FH_2 |_FH_2'|) (= _FH_0 |_FH_0'|) (= _FH_1 |_FH_1'|) (FUN_0 count _FH_0 _FH_1 _FH_2 _FH_3) (< count 100) (= |count'| (+ count 1)))
    (FUN_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (count Int))
  (=>
    (and (FUN_0 count _FH_0 _FH_1 _FH_2 _FH_3) (>= count 100))
    (FUN_1 count _FH_0 _FH_1 _FH_2 _FH_3))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_3'| (* 2 _FH_3)) (< _FH_3 _FH_2) (= _FH_2 |_FH_2'|) (= _FH_0 |_FH_0'|) (= _FH_1 |_FH_1'|) (FUN_1 count _FH_0 _FH_1 _FH_2 _FH_3) (< count 200) (= |count'| (+ count 1)))
    (FUN_1 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (count Int))
  (=>
    (and (FUN_1 count _FH_0 _FH_1 _FH_2 _FH_3) (>= count 200))
    (FUN_2 count _FH_0 _FH_1 _FH_2 _FH_3))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_3'| (* 2 _FH_3)) (< _FH_3 _FH_2) (= _FH_2 |_FH_2'|) (= _FH_0 |_FH_0'|) (= _FH_1 |_FH_1'|) (FUN_2 count _FH_0 _FH_1 _FH_2 _FH_3) (< count 300) (= |count'| (+ count 1)))
    (FUN_2 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (count Int))
  (=>
    (and (FUN_2 count _FH_0 _FH_1 _FH_2 _FH_3) (>= count 300))
    (FUN_3 count _FH_0 _FH_1 _FH_2 _FH_3))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_3'| (* 2 _FH_3)) (< _FH_3 _FH_2) (= _FH_2 |_FH_2'|) (= _FH_0 |_FH_0'|) (= _FH_1 |_FH_1'|) (FUN_3 count _FH_0 _FH_1 _FH_2 _FH_3) (< count 400) (= |count'| (+ count 1)))
    (FUN_3 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (count Int))
  (=>
    (and (FUN_3 count _FH_0 _FH_1 _FH_2 _FH_3) (>= count 400))
    (FUN_4 count _FH_0 _FH_1 _FH_2 _FH_3))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_3'| (* 2 _FH_3)) (< _FH_3 _FH_2) (= _FH_2 |_FH_2'|) (= _FH_0 |_FH_0'|) (= _FH_1 |_FH_1'|) (FUN_4 count _FH_0 _FH_1 _FH_2 _FH_3) (< count 500) (= |count'| (+ count 1)))
    (FUN_4 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (count Int) (|count'| Int))
  (=>
    (and (>= _FH_3 _FH_2) (< _FH_3 1) (FUN_4 |count'| _FH_0 _FH_1 _FH_2 _FH_3) (>= count 500))
    false)))

(check-sat)
