(set-logic HORN)
(declare-fun inv_0 (Int Bool Bool) Bool)
(declare-fun inv_1 (Int Bool Bool) Bool)
(declare-fun inv_2 (Int Bool Bool) Bool)
(declare-fun inv_3 (Int Bool Bool) Bool)
(declare-fun inv_4 (Int Bool Bool) Bool)

(assert (forall ((|_FH_0'| Bool) (|_FH_1'| Bool) (|count'| Int))
  (=>
    (and (= |_FH_1'| (not |_FH_0'|)) (= |count'| 0))
    (inv_0 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (not _FH_0)) (= |_FH_0'| (not _FH_1)) (inv_0 count _FH_0 _FH_1) (< count 100) (= |count'| (+ count 1)))
    (inv_0 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (count Int))
  (=>
    (and (inv_0 count _FH_0 _FH_1) (>= count 100))
    (inv_1 count _FH_0 _FH_1))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (not _FH_0)) (= |_FH_0'| (not _FH_1)) (inv_1 count _FH_0 _FH_1) (< count 200) (= |count'| (+ count 1)))
    (inv_1 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (count Int))
  (=>
    (and (inv_1 count _FH_0 _FH_1) (>= count 200))
    (inv_2 count _FH_0 _FH_1))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (not _FH_0)) (= |_FH_0'| (not _FH_1)) (inv_2 count _FH_0 _FH_1) (< count 300) (= |count'| (+ count 1)))
    (inv_2 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (count Int))
  (=>
    (and (inv_2 count _FH_0 _FH_1) (>= count 300))
    (inv_3 count _FH_0 _FH_1))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (not _FH_0)) (= |_FH_0'| (not _FH_1)) (inv_3 count _FH_0 _FH_1) (< count 400) (= |count'| (+ count 1)))
    (inv_3 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (count Int))
  (=>
    (and (inv_3 count _FH_0 _FH_1) (>= count 400))
    (inv_4 count _FH_0 _FH_1))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (count Int) (|count'| Int))
  (=>
    (and (= |_FH_1'| (not _FH_0)) (= |_FH_0'| (not _FH_1)) (inv_4 count _FH_0 _FH_1) (< count 500) (= |count'| (+ count 1)))
    (inv_4 |count'| |_FH_0'| |_FH_1'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (count Int) (|count'| Int))
  (=>
    (and _FH_0 _FH_1 (inv_4 |count'| _FH_0 _FH_1) (>= count 500))
    false)))

(check-sat)
