(set-logic HORN)
(declare-fun POST_0 (Int Int Int) Bool)
(declare-fun POST_1 (Int Int Int) Bool)
(declare-fun POST_2 (Int Int Int) Bool)
(declare-fun POST_3 (Int Int Int) Bool)
(declare-fun POST_4 (Int Int Int) Bool)

(assert (forall ((|_FH_0'| Int) (|_FH_1'| Int) (|count'| Int))
  (=>
    (and (< |_FH_1'| 0) (= |count'| 0))
    (POST_0 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (= |_FH_0'| (* _FH_0 _FH_1)) (POST_0 count _FH_0 _FH_1) (< count 100) (= |count'| (+ count 1)))
    (POST_0 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int))
  (=>
    (and (POST_0 count _FH_0 _FH_1) (>= count 100))
    (POST_1 count _FH_0 _FH_1))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (= |_FH_0'| (* _FH_0 _FH_1)) (POST_1 count _FH_0 _FH_1) (< count 200) (= |count'| (+ count 1)))
    (POST_1 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int))
  (=>
    (and (POST_1 count _FH_0 _FH_1) (>= count 200))
    (POST_2 count _FH_0 _FH_1))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (= |_FH_0'| (* _FH_0 _FH_1)) (POST_2 count _FH_0 _FH_1) (< count 300) (= |count'| (+ count 1)))
    (POST_2 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int))
  (=>
    (and (POST_2 count _FH_0 _FH_1) (>= count 300))
    (POST_3 count _FH_0 _FH_1))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (= |_FH_0'| (* _FH_0 _FH_1)) (POST_3 count _FH_0 _FH_1) (< count 400) (= |count'| (+ count 1)))
    (POST_3 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int))
  (=>
    (and (POST_3 count _FH_0 _FH_1) (>= count 400))
    (POST_4 count _FH_0 _FH_1))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (+ _FH_1 1)) (= |_FH_0'| (* _FH_0 _FH_1)) (POST_4 count _FH_0 _FH_1) (< count 500) (= |count'| (+ count 1)))
    (POST_4 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (count Int) (|count'| Int))
  (=>
    (and (distinct _FH_0 0) (> _FH_1 0) (POST_4 |count'| _FH_0 _FH_1) (>= count 500))
    false)))

(check-sat)
