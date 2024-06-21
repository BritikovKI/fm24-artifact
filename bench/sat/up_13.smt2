(set-logic HORN)
(declare-fun verifier.error (Bool Bool Bool) Bool)
(declare-fun main@_loop.bound () Bool)
(declare-fun main@empty.loop (Int Int) Bool)
(declare-fun main@_.02 (Int Int Int Int) Bool)
(declare-fun main@_7 (Int Int Int Int) Bool)
(declare-fun main@_.1 (Int Int Int Int) Bool)
(declare-fun main@_12 (Int Int Int Int) Bool)
(declare-fun main@_call6 () Bool)
(declare-fun main@__VERIFIER_assert.exit (Int Int Int Int) Bool)
(declare-fun main@empty.loop.body (Int Int) Bool)

; main@_.02 -> main@_.1
(assert (forall ((main@%loop.bound_0 Int) (main@%_br_0 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (main@%_br1_0 Bool) (main@%.02_0 Int) (main@%.01_0 Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (main@%.0_0 Int) (main@%.1_0 Int))
  (=>
    (and (not main@%_br1_0) (= main@%.1_0 main@%.01_0) (= main@%.0_0 0) (= main@%.02_0 _FH_0) (= main@%.01_0 _FH_1) (= main@%loop.bound_0 _FH_2) (= main@%_br_0 _FH_3) (= main@%loop.bound_0 |_FH_2'|) (= main@%_br_0 |_FH_3'|) (= main@%.0_0 |_FH_0'|) (= main@%.1_0 |_FH_1'|) (>= main@%.02_0 main@%_br_0) (main@_.02 _FH_0 _FH_1 _FH_2 _FH_3))
    (main@_.1 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; main@empty.loop -> main@_.02
(assert (forall ((main@%loop.bound_0 Int) (main@%_br_0 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (main@%.02_0 Int) (main@%.01_0 Int) (|_FH_2'| Int) (|_FH_3'| Int) (main@%nd.loop.cond_0 Bool))
  (=>
    (and (not main@%nd.loop.cond_0) (= main@%.02_0 0) (= main@%.01_0 0) (= main@%.02_0 |_FH_0'|) (= main@%.01_0 |_FH_1'|) (= main@%loop.bound_0 |_FH_2'|) (= main@%_br_0 |_FH_3'|) (= main@%loop.bound_0 _FH_0) (= main@%_br_0 _FH_1) (main@empty.loop _FH_0 _FH_1))
    (main@_.02 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; main@_.02 -> main@_.02
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (__loc_var_15 Bool))
  (=>
    (and (= _FH_2 |_FH_2'|) (= _FH_3 |_FH_3'|) (= |_FH_0'| (+ _FH_0 1)) __loc_var_15 (< _FH_0 _FH_3) (= |_FH_1'| (+ _FH_1 1)) (main@_.02 _FH_0 _FH_1 _FH_2 _FH_3))
    (main@_.02 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; main@empty.loop -> main@empty.loop
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (__loc_var_40 Bool))
  (=>
    (and (= _FH_1 |_FH_1'|) (= _FH_0 |_FH_0'|) __loc_var_40 (main@empty.loop _FH_0 _FH_1))
    (main@empty.loop |_FH_0'| |_FH_1'|))))

; true -> main@empty.loop
(assert (forall ((main@%_call_0 Bool) (|_FH_0'| Int) (|_FH_1'| Int))
  (=>
    (and main@%_call_0 (= |_FH_0'| 0))
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

; main@_.1 -> main@_call6
(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (main@%_13_0 Bool) (main@%_br5_0 Bool) (__loc_var_24 Bool))
  (=>
    (and main@%_13_0 main@%_br5_0 (> _FH_1 0) (< _FH_0 _FH_3) __loc_var_24 (= _FH_2 1) (main@_.1 _FH_0 _FH_1 _FH_2 _FH_3))
    main@_call6)))

; main@_.1 -> main@_call6
(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (main@%_13_0 Bool) (main@%_br5_0 Bool) (__loc_var_24 Bool))
  (=>
    (and main@%_br5_0 (not main@%_13_0) (<= _FH_1 0) (< _FH_0 _FH_3) __loc_var_24 (= _FH_2 0) (main@_.1 _FH_0 _FH_1 _FH_2 _FH_3))
    main@_call6)))

; main@_.1 -> main@_.1
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (__loc_var_4 Bool) (__loc_var_6 Bool) (__loc_var_33 Bool))
  (=>
    (and (= _FH_2 |_FH_2'|) (= _FH_3 |_FH_3'|) __loc_var_4 (not __loc_var_6) (< _FH_0 _FH_3) __loc_var_33 (> (+ |_FH_1'| 1) 0) (distinct 1 |_FH_2'|) (= _FH_0 (+ |_FH_0'| (- 1))) (= _FH_1 (+ |_FH_1'| 1)) (main@_.1 _FH_0 _FH_1 _FH_2 _FH_3))
    (main@_.1 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; main@_.1 -> main@_.1
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (__loc_var_4 Bool) (__loc_var_6 Bool) (__loc_var_33 Bool))
  (=>
    (and (= _FH_2 |_FH_2'|) (= _FH_3 |_FH_3'|) (not __loc_var_6) (not __loc_var_4) (< _FH_0 _FH_3) __loc_var_33 (= _FH_0 (+ |_FH_0'| (- 1))) (= _FH_1 (+ |_FH_1'| 1)) (<= (+ |_FH_1'| 1) 0) (distinct 0 |_FH_2'|) (main@_.1 _FH_0 _FH_1 _FH_2 _FH_3))
    (main@_.1 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; query
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (__loc_var_4 Bool) (__loc_var_6 Bool) (__loc_var_33 Bool))
  (=>
    (and (= _FH_2 |_FH_2'|) (= _FH_3 |_FH_3'|) (not __loc_var_6) (not __loc_var_4) (< _FH_0 _FH_3) __loc_var_33 (= _FH_0 (+ |_FH_0'| (- 1))) (= _FH_1 (+ |_FH_1'| 1)) (<= (+ |_FH_1'| 1) 0) (distinct 0 |_FH_2'|) (main@_.1 _FH_0 _FH_1 _FH_2 _FH_3))
    false)))

(check-sat)
