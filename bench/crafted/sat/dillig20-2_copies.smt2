(set-logic HORN)
(declare-fun itp_0 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun itp_1 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun itp_2 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun itp_3 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun itp_4 (Int Int Int Int Int Int Int Int) Bool)

(assert (forall ((|_FH_0'| Int) (|_FH_1'| Int) (|_FH_2'| Int) (|_FH_3'| Int) (|_FH_4'| Int) (|_FH_5'| Int) (|_FH_6'| Int) (|count'| Int))
  (=>
    (and (= 0 |_FH_2'|) (= 0 |_FH_3'|) (= (+ |_FH_0'| |_FH_1'|) |_FH_4'|) (= |count'| 0))
    (itp_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'| |_FH_6'|))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (count Int) (|count'| Int))
  (=>
    (and (= _FH_4 |_FH_4'|) (= _FH_5 |_FH_5'|) (= _FH_6 |_FH_6'|) (< _FH_3 _FH_6) (= |_FH_3'| (+ _FH_3 1)) (= |_FH_0'| (+ _FH_0 (ite (= _FH_5 _FH_3) 1 (- 1)))) (= |_FH_1'| (+ _FH_1 (ite (= _FH_5 _FH_3) (- 1) 1))) (or (= (+ |_FH_2'| (- _FH_3)) 0) (= (+ |_FH_2'| (- _FH_2)) 0)) (itp_0 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (< count 100) (= |count'| (+ count 1)))
    (itp_0 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'| |_FH_6'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (count Int))
  (=>
    (and (itp_0 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (>= count 100))
    (itp_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (count Int) (|count'| Int))
  (=>
    (and (= _FH_4 |_FH_4'|) (= _FH_5 |_FH_5'|) (= _FH_6 |_FH_6'|) (< _FH_3 _FH_6) (= |_FH_3'| (+ _FH_3 1)) (= |_FH_0'| (+ _FH_0 (ite (= _FH_5 _FH_3) 1 (- 1)))) (= |_FH_1'| (+ _FH_1 (ite (= _FH_5 _FH_3) (- 1) 1))) (or (= (+ |_FH_2'| (- _FH_3)) 0) (= (+ |_FH_2'| (- _FH_2)) 0)) (itp_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (< count 200) (= |count'| (+ count 1)))
    (itp_1 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'| |_FH_6'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (count Int))
  (=>
    (and (itp_1 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (>= count 200))
    (itp_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (count Int) (|count'| Int))
  (=>
    (and (= _FH_4 |_FH_4'|) (= _FH_5 |_FH_5'|) (= _FH_6 |_FH_6'|) (< _FH_3 _FH_6) (= |_FH_3'| (+ _FH_3 1)) (= |_FH_0'| (+ _FH_0 (ite (= _FH_5 _FH_3) 1 (- 1)))) (= |_FH_1'| (+ _FH_1 (ite (= _FH_5 _FH_3) (- 1) 1))) (or (= (+ |_FH_2'| (- _FH_3)) 0) (= (+ |_FH_2'| (- _FH_2)) 0)) (itp_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (< count 300) (= |count'| (+ count 1)))
    (itp_2 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'| |_FH_6'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (count Int))
  (=>
    (and (itp_2 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (>= count 300))
    (itp_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (count Int) (|count'| Int))
  (=>
    (and (= _FH_4 |_FH_4'|) (= _FH_5 |_FH_5'|) (= _FH_6 |_FH_6'|) (< _FH_3 _FH_6) (= |_FH_3'| (+ _FH_3 1)) (= |_FH_0'| (+ _FH_0 (ite (= _FH_5 _FH_3) 1 (- 1)))) (= |_FH_1'| (+ _FH_1 (ite (= _FH_5 _FH_3) (- 1) 1))) (or (= (+ |_FH_2'| (- _FH_3)) 0) (= (+ |_FH_2'| (- _FH_2)) 0)) (itp_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (< count 400) (= |count'| (+ count 1)))
    (itp_3 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'| |_FH_6'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (count Int))
  (=>
    (and (itp_3 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (>= count 400))
    (itp_4 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6))))

(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (_FH_6 Int) (|_FH_6'| Int) (count Int) (|count'| Int))
  (=>
    (and (= _FH_4 |_FH_4'|) (= _FH_5 |_FH_5'|) (= _FH_6 |_FH_6'|) (< _FH_3 _FH_6) (= |_FH_3'| (+ _FH_3 1)) (= |_FH_0'| (+ _FH_0 (ite (= _FH_5 _FH_3) 1 (- 1)))) (= |_FH_1'| (+ _FH_1 (ite (= _FH_5 _FH_3) (- 1) 1))) (or (= (+ |_FH_2'| (- _FH_3)) 0) (= (+ |_FH_2'| (- _FH_2)) 0)) (itp_4 count _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (< count 500) (= |count'| (+ count 1)))
    (itp_4 |count'| |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'| |_FH_6'|))))

(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (_FH_4 Int) (_FH_5 Int) (_FH_6 Int) (count Int) (|count'| Int))
  (=>
    (and (> _FH_3 0) (= _FH_3 _FH_6) (> 0 _FH_2) (itp_4 |count'| _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5 _FH_6) (>= count 500))
    false)))

(check-sat)
