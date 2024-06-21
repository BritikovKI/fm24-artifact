(set-logic HORN)
(declare-fun inv_0 (Int Bool Bool Bool Bool Int Int Int Int) Bool)
(declare-fun inv_1 (Int Bool Bool Bool Bool Int Int Int Int) Bool)
(declare-fun inv_2 (Int Bool Bool Bool Bool Int Int Int Int) Bool)
(declare-fun inv_3 (Int Bool Bool Bool Bool Int Int Int Int) Bool)
(declare-fun inv_4 (Int Bool Bool Bool Bool Int Int Int Int) Bool)

(assert (forall ((|_FH_0'| Bool) (|_FH_1'| Bool) (|_FH_2'| Bool) (|_FH_3'| Bool) (|_FH_4'| Int) (|_FH_5'| Int) (|_FH_6'| Int) (|_FH_7'| Int) (|count'| Int))
  (=>
    (and (= 0 |_FH_4'|) (= 0 |_FH_5'|) (= 0 |_FH_6'|) (= 0 |_FH_7'|) (= |count'| 0))
    (inv_0 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (_FH_2 Bool) (|_FH_2'| Bool) (_FH_3 Bool) (|_FH_3'| Bool) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (or (and |_FH_0'| (= (+ |_FH_4'| (- _FH_4) (- 1)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_1'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5) (- 1)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_2'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6) (- 1)) 0)) (and |_FH_3'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7) (- 1)) 0) (= (+ |_FH_6'| (- _FH_6)) 0))) (inv_0 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 100) (= |count'| (+ count 1)))
    (inv_0 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (_FH_2 Bool) (_FH_3 Bool) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int))
  (=>
    (and (inv_0 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 100))
    (inv_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (_FH_2 Bool) (|_FH_2'| Bool) (_FH_3 Bool) (|_FH_3'| Bool) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (or (and |_FH_0'| (= (+ |_FH_4'| (- _FH_4) (- 1)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_1'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5) (- 1)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_2'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6) (- 1)) 0)) (and |_FH_3'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7) (- 1)) 0) (= (+ |_FH_6'| (- _FH_6)) 0))) (inv_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 200) (= |count'| (+ count 1)))
    (inv_1 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (_FH_2 Bool) (_FH_3 Bool) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int))
  (=>
    (and (inv_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 200))
    (inv_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (_FH_2 Bool) (|_FH_2'| Bool) (_FH_3 Bool) (|_FH_3'| Bool) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (or (and |_FH_0'| (= (+ |_FH_4'| (- _FH_4) (- 1)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_1'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5) (- 1)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_2'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6) (- 1)) 0)) (and |_FH_3'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7) (- 1)) 0) (= (+ |_FH_6'| (- _FH_6)) 0))) (inv_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 300) (= |count'| (+ count 1)))
    (inv_2 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (_FH_2 Bool) (_FH_3 Bool) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int))
  (=>
    (and (inv_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 300))
    (inv_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (_FH_2 Bool) (|_FH_2'| Bool) (_FH_3 Bool) (|_FH_3'| Bool) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (or (and |_FH_0'| (= (+ |_FH_4'| (- _FH_4) (- 1)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_1'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5) (- 1)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_2'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6) (- 1)) 0)) (and |_FH_3'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7) (- 1)) 0) (= (+ |_FH_6'| (- _FH_6)) 0))) (inv_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 400) (= |count'| (+ count 1)))
    (inv_3 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (_FH_2 Bool) (_FH_3 Bool) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int))
  (=>
    (and (inv_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 400))
    (inv_4 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7))))

(assert (forall ((_FH_0 Bool) (|_FH_0'| Bool) (_FH_1 Bool) (|_FH_1'| Bool) (_FH_2 Bool) (|_FH_2'| Bool) (_FH_3 Bool) (|_FH_3'| Bool) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (or (and |_FH_0'| (= (+ |_FH_4'| (- _FH_4) (- 1)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_1'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5) (- 1)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6)) 0)) (and |_FH_2'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7)) 0) (= (+ |_FH_6'| (- _FH_6) (- 1)) 0)) (and |_FH_3'| (= (+ |_FH_4'| (- _FH_4)) 0) (= (+ |_FH_5'| (- _FH_5)) 0) (= (+ |_FH_7'| (- _FH_7) (- 1)) 0) (= (+ |_FH_6'| (- _FH_6)) 0))) (inv_4 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 500) (= |count'| (+ count 1)))
    (inv_4 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Bool) (_FH_1 Bool) (_FH_2 Bool) (_FH_3 Bool) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int) (|count'| Int))
  (=>
    (and (not _FH_1) (not _FH_3) (not _FH_0) (> (+ _FH_4 _FH_5 _FH_6 _FH_7) 0) (not _FH_2) (inv_4 |count'| _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 500))
    false)))

(check-sat)
