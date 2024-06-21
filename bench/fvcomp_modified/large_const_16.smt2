(set-logic HORN)
(declare-fun verifier.error (Bool Bool Bool) Bool)
(declare-fun main@_loop.bound () Bool)
(declare-fun main@_.06 (Int Int Int Int Int Int) Bool)
(declare-fun main@_12 (Int Int Int Int Int Int) Bool)
(declare-fun main@_.2 (Int Int Int Int) Bool)
(declare-fun main@NodeBlock (Int Int Int Int Int Int Int) Bool)
(declare-fun main@_18 (Int Int Int Int Int Int) Bool)
(declare-fun main@LeafBlock (Int Int Int Int Int Int Int) Bool)
(declare-fun main@_20 (Int Int Int Int Int Int) Bool)
(declare-fun main@NewDefault (Int Int Int Int Int Int) Bool)
(declare-fun main@_.1 (Int Int Int Int Int Int) Bool)
(declare-fun main@_26 (Int Int Int Int) Bool)
(declare-fun main@_call13 () Bool)
(declare-fun main@__VERIFIER_assert.exit (Int Int Int Int) Bool)

; main@_.06 -> main@_.2
(assert (forall ((main@%.06_0 Int) (main@%.05_0 Int) (main@%loop.bound1_0 Int) (main@%_8_0 Int) (main@%loop.bound2_0 Int) (main@%loop.bound_0 Int) (_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (_FH_5 Int) (main@%_br5_0 Bool) (main@%.04_0 Int) (main@%.2_0 Int))
  (=>
    (and (not main@%_br5_0) (= main@%.2_0 main@%.05_0) (= main@%.04_0 0) (= main@%.06_0 _FH_0) (= main@%.05_0 _FH_1) (= main@%loop.bound1_0 _FH_2) (= main@%_8_0 _FH_3) (= main@%loop.bound2_0 _FH_4) (= main@%loop.bound_0 _FH_5) (= main@%_8_0 |_FH_0'|) (= main@%.04_0 |_FH_1'|) (= main@%.2_0 |_FH_2'|) (= main@%loop.bound_0 |_FH_3'|) (>= main@%.06_0 main@%_8_0) (main@_.06 _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5))
    (main@_.2 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; true -> main@_.06
(assert (forall ((main@%_call_0 Bool) (main@%_call3_0 Bool) (main@%_call4_0 Bool) (main@%_br_0 Bool) (|_FH_0'| Int) (|_FH_1'| Int) (|_FH_2'| Int) (|_FH_3'| Int) (|_FH_4'| Int) (|_FH_5'| Int))
  (=>
    (and main@%_call_0 main@%_call3_0 main@%_call4_0 main@%_br_0 (= |_FH_0'| 0) (= |_FH_1'| 0) (= |_FH_2'| (- 1)) (>= |_FH_3'| 0) (< |_FH_3'| 10) (= |_FH_4'| 2) (= |_FH_5'| 0))
    (main@_.06 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'|))))

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

; main@_.06 -> main@_.06
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (__loc_var_150 Bool) (__loc_var_151 Bool) (__loc_var_152 Bool) (__loc_var_153 Int) (__loc_var_154 Bool) (__loc_var_200 Bool))
  (=>
    (and (= _FH_3 |_FH_3'|) (= _FH_2 |_FH_2'|) (= _FH_4 |_FH_4'|) (= _FH_5 |_FH_5'|) __loc_var_150 __loc_var_151 __loc_var_152 __loc_var_154 (< __loc_var_153 1) (< _FH_0 _FH_3) (< |_FH_3'| |_FH_4'|) (= _FH_0 (+ |_FH_0'| (- 1))) __loc_var_200 (> __loc_var_153 |_FH_2'|) (= _FH_1 (+ |_FH_1'| (- 4000))) (main@_.06 _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5))
    (main@_.06 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'|))))

; main@_.06 -> main@_.06
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (__loc_var_139 Bool) (__loc_var_140 Bool) (__loc_var_141 Bool) (__loc_var_142 Bool) (__loc_var_143 Bool) (__loc_var_187 Bool))
  (=>
    (and (= _FH_3 |_FH_3'|) (= _FH_2 |_FH_2'|) (= _FH_4 |_FH_4'|) (= _FH_5 |_FH_5'|) (>= 1 1) __loc_var_139 __loc_var_140 __loc_var_141 __loc_var_143 (not __loc_var_142) (< _FH_0 _FH_3) (< |_FH_3'| |_FH_4'|) (= _FH_0 (+ |_FH_0'| (- 1))) __loc_var_187 (> 1 |_FH_2'|) (= _FH_1 (+ |_FH_1'| (- 2000))) (main@_.06 _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5))
    (main@_.06 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'|))))

; main@_.06 -> main@_.06
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (_FH_4 Int) (|_FH_4'| Int) (_FH_5 Int) (|_FH_5'| Int) (__loc_var_127 Bool) (__loc_var_128 Bool) (__loc_var_129 Bool) (__loc_var_130 Int) (__loc_var_131 Bool) (__loc_var_132 Bool) (__loc_var_174 Bool))
  (=>
    (and (= _FH_3 |_FH_3'|) (= _FH_2 |_FH_2'|) (= _FH_4 |_FH_4'|) (= _FH_5 |_FH_5'|) __loc_var_127 __loc_var_128 __loc_var_129 (not __loc_var_132) (not __loc_var_131) (distinct __loc_var_130 1) (>= __loc_var_130 1) (< _FH_0 _FH_3) __loc_var_174 (> __loc_var_130 |_FH_2'|) (< |_FH_3'| |_FH_4'|) (= _FH_0 (+ |_FH_0'| (- 1))) (= _FH_1 (+ |_FH_1'| (- 10000))) (main@_.06 _FH_0 _FH_1 _FH_2 _FH_3 _FH_4 _FH_5))
    (main@_.06 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'| |_FH_4'| |_FH_5'|))))

; main@_.2 -> main@_call13
(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (main@%_27_0 Bool) (main@%_br12_0 Bool) (__loc_var_222 Bool))
  (=>
    (and main@%_27_0 main@%_br12_0 (> _FH_2 0) __loc_var_222 (< _FH_1 _FH_0) (= _FH_3 1) (main@_.2 _FH_0 _FH_1 _FH_2 _FH_3))
    main@_call13)))

; main@_.2 -> main@_call13
(assert (forall ((_FH_0 Int) (_FH_1 Int) (_FH_2 Int) (_FH_3 Int) (main@%_27_0 Bool) (main@%_br12_0 Bool) (__loc_var_222 Bool))
  (=>
    (and main@%_br12_0 (not main@%_27_0) (<= _FH_2 0) __loc_var_222 (< _FH_1 _FH_0) (= _FH_3 0) (main@_.2 _FH_0 _FH_1 _FH_2 _FH_3))
    main@_call13)))

; main@_.2 -> main@_.2
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (__loc_var_211 Bool) (__loc_var_213 Bool) (__loc_var_231 Bool))
  (=>
    (and (= _FH_3 |_FH_3'|) (= _FH_0 |_FH_0'|) __loc_var_211 (not __loc_var_213) (< _FH_1 _FH_0) __loc_var_231 (> (+ |_FH_2'| 1) 0) (distinct 1 |_FH_3'|) (= _FH_1 (+ |_FH_1'| (- 1))) (= _FH_2 (+ |_FH_2'| 1)) (main@_.2 _FH_0 _FH_1 _FH_2 _FH_3))
    (main@_.2 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; main@_.2 -> main@_.2
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (__loc_var_211 Bool) (__loc_var_213 Bool) (__loc_var_231 Bool))
  (=>
    (and (= _FH_3 |_FH_3'|) (= _FH_0 |_FH_0'|) (not __loc_var_213) (not __loc_var_211) (< _FH_1 _FH_0) __loc_var_231 (= _FH_1 (+ |_FH_1'| (- 1))) (= _FH_2 (+ |_FH_2'| 1)) (<= (+ |_FH_2'| 1) 0) (distinct 0 |_FH_3'|) (main@_.2 _FH_0 _FH_1 _FH_2 _FH_3))
    (main@_.2 |_FH_0'| |_FH_1'| |_FH_2'| |_FH_3'|))))

; query
(assert (forall ((_FH_0 Int) (|_FH_0'| Int) (_FH_1 Int) (|_FH_1'| Int) (_FH_2 Int) (|_FH_2'| Int) (_FH_3 Int) (|_FH_3'| Int) (__loc_var_211 Bool) (__loc_var_213 Bool) (__loc_var_231 Bool))
  (=>
    (and (= _FH_3 |_FH_3'|) (= _FH_0 |_FH_0'|) (not __loc_var_213) (not __loc_var_211) (< _FH_1 _FH_0) __loc_var_231 (= _FH_1 (+ |_FH_1'| (- 1))) (= _FH_2 (+ |_FH_2'| 1)) (<= (+ |_FH_2'| 1) 0) (distinct 0 |_FH_3'|) (main@_.2 _FH_0 _FH_1 _FH_2 _FH_3))
    false)))

(check-sat)
