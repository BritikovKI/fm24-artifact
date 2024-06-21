(set-logic HORN)
(declare-fun itp1_0 (Int Int Int) Bool)
(declare-fun itp1_1 (Int Int Int) Bool)
(declare-fun itp1_2 (Int Int Int) Bool)
(declare-fun itp1_3 (Int Int Int) Bool)
(declare-fun itp1_4 (Int Int Int) Bool)

(assert (forall ((|_FH_0'| Int) (|_FH_1'| Int) (|count'| Int))
  (=>
    (and (= 0 |_FH_0'|) (= 0 |_FH_1'|) (= |count'| 0))
    (itp1_0 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((m Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (ite (= m 1) (= |_FH_0'| (+ _FH_0 1)) (= |_FH_0'| _FH_0)) (itp1_0 count _FH_0 _FH_1) (< count 100) (= |count'| (+ count 1)))
    (itp1_0 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int))
  (=>
    (and (itp1_0 count _FH_0 _FH_1) (>= count 100))
    (itp1_1 count _FH_0 _FH_1))))

(assert (forall ((m Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (ite (= m 1) (= |_FH_0'| (+ _FH_0 1)) (= |_FH_0'| _FH_0)) (itp1_1 count _FH_0 _FH_1) (< count 200) (= |count'| (+ count 1)))
    (itp1_1 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int))
  (=>
    (and (itp1_1 count _FH_0 _FH_1) (>= count 200))
    (itp1_2 count _FH_0 _FH_1))))

(assert (forall ((m Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (ite (= m 1) (= |_FH_0'| (+ _FH_0 1)) (= |_FH_0'| _FH_0)) (itp1_2 count _FH_0 _FH_1) (< count 300) (= |count'| (+ count 1)))
    (itp1_2 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int))
  (=>
    (and (itp1_2 count _FH_0 _FH_1) (>= count 300))
    (itp1_3 count _FH_0 _FH_1))))

(assert (forall ((m Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (ite (= m 1) (= |_FH_0'| (+ _FH_0 1)) (= |_FH_0'| _FH_0)) (itp1_3 count _FH_0 _FH_1) (< count 400) (= |count'| (+ count 1)))
    (itp1_3 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int))
  (=>
    (and (itp1_3 count _FH_0 _FH_1) (>= count 400))
    (itp1_4 count _FH_0 _FH_1))))

(assert (forall ((m Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (ite (= m 1) (= |_FH_0'| (+ _FH_0 1)) (= |_FH_0'| _FH_0)) (itp1_4 count _FH_0 _FH_1) (< count 500) (= |count'| (+ count 1)))
    (itp1_4 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int) (|count'| Int))
  (=>
    (and  ( not(> _FH_0 _FH_1)) (itp1_4 |count'| _FH_0 _FH_1) (>= count 500))
    false)))

(check-sat)
