(set-logic HORN)
(declare-fun verifier.error (Bool Bool Bool) Bool)
(declare-fun main@_loop.bound () Bool)
(declare-fun main@empty.loop (Int Int) Bool)
(declare-fun main@_.01 (Int Int Int Int) Bool)
(declare-fun main@_call3 (Int Int Int Int) Bool)
(declare-fun main@.critedge (Int Int) Bool)
(declare-fun main@_10 (Int Int Int Int) Bool)
(declare-fun main@_call8 () Bool)
(declare-fun main@empty.loop.body (Int Int) Bool)

; main@empty.loop -> main@_.01
(assert (forall ((main@%loop.bound1_0 Int) (main@%loop.bound_0 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (main@%.01_0 Int) (main@%.0_0 Int) (|_FH_2'| Int) (|_FH_3'| Int) (main@%nd.loop.cond_0 Bool))
  (=>
    (and (not main@%nd.loop.cond_0) (= main@%.01_0 1) (= main@%.0_0 0) (= main@%.01_0 |_FH_0'|) (= main@%.0_0 |_FH_1'|) (= main@%loop.bound1_0 |_FH_2'|) (= main@%loop.bound_0 |_FH_3'|) (= main@%loop.bound1_0 _FH_0) (= main@%loop.bound_0 _FH_1) (main@empty.loop _FH_0 _FH_1))
    (main@_.01 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; main@_.01 -> main@_.01
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (__loc_var_5 Int) (__loc_var_6 Bool) (__loc_var_24 Bool))
  (=>
    (and (not __loc_var_6) (= _FH_2 |_FH_2'|) (= _FH_3 |_FH_3'|) (< _FH_1 _FH_3) __loc_var_24 (distinct __loc_var_5 |_FH_2'|) (= _FH_0 (+ |_FH_0'| (- |_FH_1'|) 1)) (= _FH_1 (+ |_FH_1'| (- 1))) (main@_.01 _FH_0 _FH_1 _FH_2 _FH_3))
    (main@_.01 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; main@empty.loop -> main@empty.loop
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (__loc_var_31 Bool))
  (=>
    (and (= _FH_0 |_FH_0'|) (= _FH_1 |_FH_1'|) __loc_var_31 (main@empty.loop _FH_0 _FH_1))
    (main@empty.loop |_FH_0'| |_FH_1'|))))

; true -> main@empty.loop
(assert (forall ((main@%_call_0 Bool) (main@%_call2_0 Bool) (|_FH_0'| Int) (|_FH_1'| Int))
  (=>
    (and main@%_call_0 main@%_call2_0 (= |_FH_0'| 0) (= |_FH_1'| 1000))
    (main@empty.loop |_FH_0'| |_FH_1'|))))

; true -> verifier.error
(assert (forall ((|_FH_0'| Bool) (|_FH_1'| Bool) (|_FH_2'| Bool))
  (=>
    (and |_FH_0'| |_FH_1'| |_FH_2'|)
    (verifier.error |_FH_0'| |_FH_1'| |_FH_2'|))))

; true -> verifier.error
(assert (forall ((|_FH_0'| Bool) (|_FH_1'| Bool) (|_FH_2'| Bool))
  (=>
    (and |_FH_0'| |_FH_2'| (not |_FH_1'|))
    (verifier.error |_FH_0'| |_FH_1'| |_FH_2'|))))

; true -> verifier.error
(assert (forall ((|_FH_0'| Bool) (|_FH_1'| Bool) (|_FH_2'| Bool))
  (=>
    (and |_FH_1'| |_FH_2'| (not |_FH_0'|))
    (verifier.error |_FH_0'| |_FH_1'| |_FH_2'|))))

; true -> verifier.error
(assert (forall ((|_FH_0'| Bool) (|_FH_1'| Bool) (|_FH_2'| Bool))
  (=>
    (and (not |_FH_0'|) (not |_FH_1'|) (not |_FH_2'|))
    (verifier.error |_FH_0'| |_FH_1'| |_FH_2'|))))

; main@_.01 -> main@_call8
(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (main@%_13_0 Bool) (main@%_br7_0 Bool) (__loc_var_41 Bool) (__loc_var_42 Bool))
  (=>
    (and main@%_br7_0 (not main@%_13_0) (< _FH_1 _FH_3) __loc_var_41 __loc_var_42 (< _FH_0 _FH_1) (main@_.01 _FH_0 _FH_1 _FH_2 _FH_3))
    main@_call8)))

; main@_.01 -> main@_call8
(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (main@%_13_0 Bool) (main@%_br7_0 Bool) (__loc_var_38 Bool))
  (=>
    (and main@%_br7_0 (not main@%_13_0) (< _FH_0 _FH_1) (not __loc_var_38) (>= _FH_1 _FH_3) (main@_.01 _FH_0 _FH_1 _FH_2 _FH_3))
    main@_call8)))

; query
(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (main@%_13_0 Bool) (main@%_br7_0 Bool) (__loc_var_38 Bool))
  (=>
    (and main@%_br7_0 (not main@%_13_0) (< _FH_0 _FH_1) (not __loc_var_38) (>= _FH_1 _FH_3) (main@_.01 _FH_0 _FH_1 _FH_2 _FH_3))
    false)))

(check-sat)
