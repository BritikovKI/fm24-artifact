(set-logic HORN)
(declare-fun itp_0 (Int Int Int Int) Bool)
(declare-fun itp_1 (Int Int Int Int) Bool)
(declare-fun itp_2 (Int Int Int Int) Bool)
(declare-fun itp_3 (Int Int Int Int) Bool)
(declare-fun itp_4 (Int Int Int Int) Bool)

(assert (forall ((|_FH_0'| Int) (|_FH_1'| Int) (|_FH_2'| Int) (|count'| Int))
  (=>
    (and (= 0 |_FH_0'|) (> |_FH_2'| 0) (< |_FH_2'| 5) (= |_FH_1'| (* 3 |_FH_2'|)) (= |count'| 0))
    (itp_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (< _FH_0 200) (= |_FH_1'| (+ _FH_1 1)) (= _FH_2 |_FH_2'|) (= |_FH_0'| (+ _FH_0 1)) (itp_0 count _FH_0 _FH_1 _FH_2) (< count 100) (= |count'| (+ count 1)))
    (itp_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (itp_0 count _FH_0 _FH_1 _FH_2) (>= count 100))
    (itp_1 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (< _FH_0 200) (= |_FH_1'| (+ _FH_1 1)) (= _FH_2 |_FH_2'|) (= |_FH_0'| (+ _FH_0 1)) (itp_1 count _FH_0 _FH_1 _FH_2) (< count 200) (= |count'| (+ count 1)))
    (itp_1 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (itp_1 count _FH_0 _FH_1 _FH_2) (>= count 200))
    (itp_2 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (< _FH_0 200) (= |_FH_1'| (+ _FH_1 1)) (= _FH_2 |_FH_2'|) (= |_FH_0'| (+ _FH_0 1)) (itp_2 count _FH_0 _FH_1 _FH_2) (< count 300) (= |count'| (+ count 1)))
    (itp_2 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (itp_2 count _FH_0 _FH_1 _FH_2) (>= count 300))
    (itp_3 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (< _FH_0 200) (= |_FH_1'| (+ _FH_1 1)) (= _FH_2 |_FH_2'|) (= |_FH_0'| (+ _FH_0 1)) (itp_3 count _FH_0 _FH_1 _FH_2) (< count 400) (= |count'| (+ count 1)))
    (itp_3 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int))
  (=>
    (and (itp_3 count _FH_0 _FH_1 _FH_2) (>= count 400))
    (itp_4 count _FH_0 _FH_1 _FH_2))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (count Int) (|count'| Int))
  (=>
    (and (< _FH_0 200) (= |_FH_1'| (+ _FH_1 1)) (= _FH_2 |_FH_2'|) (= |_FH_0'| (+ _FH_0 1)) (itp_4 count _FH_0 _FH_1 _FH_2) (< count 500) (= |count'| (+ count 1)))
    (itp_4 |count'| |_FH_0'| |_FH_1'| |_FH_2'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (count Int) (|count'| Int))
  (=>
    (and (or (< _FH_1 3) (> _FH_1 212)) (itp_4 |count'| _FH_0 _FH_1 _FH_2) (>= count 500))
    false)))

(check-sat)
