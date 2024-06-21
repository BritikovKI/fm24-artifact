(set-logic HORN)
(declare-fun FUN_0 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun FUN_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun FUN_2 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun FUN_3 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun FUN_4 (Int Int Int Int Int Int Int Int Int) Bool)

(assert (forall ((|_FH_0'| Int) (|_FH_1'| Int) (|_FH_2'| Int) (|_FH_3'| Int) (|_FH_4'| Int) (|_FH_5'| Int) (|_FH_6'| Int) (|_FH_7'| Int) (|count'| Int))
  (=>
    (and (= 1 |_FH_3'|) (= 1 |_FH_4'|) (= 1 |_FH_5'|) (>= |_FH_2'| 0) (>= |_FH_1'| 0) (>= |_FH_0'| 0) (= |count'| 0))
    (FUN_0 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (> _FH_0 0) (= _FH_5 |_FH_5'|) (> _FH_1 0) (= _FH_3 |_FH_3'|) (> _FH_2 0) (= _FH_4 |_FH_4'|) (= |_FH_0'| (+ _FH_0 (ite (= _FH_6 1) (- _FH_3) 0))) (= |_FH_1'| (let ((a!1 (ite (and (= (+ _FH_7 (- 1)) 0) (not (= _FH_6 1))) (- _FH_4) 0)))
  (+ _FH_1 a!1))) (= |_FH_2'| (let ((a!1 (ite (and (not (= _FH_7 1)) (not (= _FH_6 1))) (- _FH_5) 0)))
  (+ _FH_2 a!1))) (FUN_0 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 100) (= |count'| (+ count 1)))
    (FUN_0 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int))
  (=>
    (and (FUN_0 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 100))
    (FUN_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (> _FH_0 0) (= _FH_5 |_FH_5'|) (> _FH_1 0) (= _FH_3 |_FH_3'|) (> _FH_2 0) (= _FH_4 |_FH_4'|) (= |_FH_0'| (+ _FH_0 (ite (= _FH_6 1) (- _FH_3) 0))) (= |_FH_1'| (let ((a!1 (ite (and (= (+ _FH_7 (- 1)) 0) (not (= _FH_6 1))) (- _FH_4) 0)))
  (+ _FH_1 a!1))) (= |_FH_2'| (let ((a!1 (ite (and (not (= _FH_7 1)) (not (= _FH_6 1))) (- _FH_5) 0)))
  (+ _FH_2 a!1))) (FUN_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 200) (= |count'| (+ count 1)))
    (FUN_1 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int))
  (=>
    (and (FUN_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 200))
    (FUN_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (> _FH_0 0) (= _FH_5 |_FH_5'|) (> _FH_1 0) (= _FH_3 |_FH_3'|) (> _FH_2 0) (= _FH_4 |_FH_4'|) (= |_FH_0'| (+ _FH_0 (ite (= _FH_6 1) (- _FH_3) 0))) (= |_FH_1'| (let ((a!1 (ite (and (= (+ _FH_7 (- 1)) 0) (not (= _FH_6 1))) (- _FH_4) 0)))
  (+ _FH_1 a!1))) (= |_FH_2'| (let ((a!1 (ite (and (not (= _FH_7 1)) (not (= _FH_6 1))) (- _FH_5) 0)))
  (+ _FH_2 a!1))) (FUN_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 300) (= |count'| (+ count 1)))
    (FUN_2 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int))
  (=>
    (and (FUN_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 300))
    (FUN_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (> _FH_0 0) (= _FH_5 |_FH_5'|) (> _FH_1 0) (= _FH_3 |_FH_3'|) (> _FH_2 0) (= _FH_4 |_FH_4'|) (= |_FH_0'| (+ _FH_0 (ite (= _FH_6 1) (- _FH_3) 0))) (= |_FH_1'| (let ((a!1 (ite (and (= (+ _FH_7 (- 1)) 0) (not (= _FH_6 1))) (- _FH_4) 0)))
  (+ _FH_1 a!1))) (= |_FH_2'| (let ((a!1 (ite (and (not (= _FH_7 1)) (not (= _FH_6 1))) (- _FH_5) 0)))
  (+ _FH_2 a!1))) (FUN_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 400) (= |count'| (+ count 1)))
    (FUN_3 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int))
  (=>
    (and (FUN_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 400))
    (FUN_4 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (_FH_7 Int) (|_FH_7'| Int) (count Int) (|count'| Int))
  (=>
    (and (> _FH_0 0) (= _FH_5 |_FH_5'|) (> _FH_1 0) (= _FH_3 |_FH_3'|) (> _FH_2 0) (= _FH_4 |_FH_4'|) (= |_FH_0'| (+ _FH_0 (ite (= _FH_6 1) (- _FH_3) 0))) (= |_FH_1'| (let ((a!1 (ite (and (= (+ _FH_7 (- 1)) 0) (not (= _FH_6 1))) (- _FH_4) 0)))
  (+ _FH_1 a!1))) (= |_FH_2'| (let ((a!1 (ite (and (not (= _FH_7 1)) (not (= _FH_6 1))) (- _FH_5) 0)))
  (+ _FH_2 a!1))) (FUN_4 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (< count 500) (= |count'| (+ count 1)))
    (FUN_4 |count'|
       |_FH_0'|
       |_FH_1'|
       |_FH_2'|
       |_FH_3'|
       |_FH_4'|
       |_FH_5'|
       |_FH_6'|
       |_FH_7'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (_FH_7 Int) (count Int) (|count'| Int))
  (=>
    (and (distinct _FH_0 0) (distinct _FH_1 0) (or (<= _FH_0 0) (<= _FH_1 0) (<= _FH_2 0)) (distinct _FH_2 0) (FUN_4 |count'| _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6 _FH_7) (>= count 500))
    false)))

(check-sat)
