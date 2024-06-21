(set-logic HORN)
(set-info :source |
  Benchmark: ../../sv-benchmarks/c/loops-crafted-1/multiloops/multiloop11.c
  Generated by Korn 0.4 https://github.com/gernst/korn
|)



(declare-fun $main_sum3 (Int Int Int) Bool)
(declare-fun $main_inv4 (Int Int Int) Bool)
(declare-fun $main_inv1 (Int Int Int) Bool)
(declare-fun $main_sum2 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if1 (Int Int) Bool)
(declare-fun $main_if3 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum1 (Int Int Int) Bool)
(declare-fun $main_inv3 (Int Int Int) Bool)
(declare-fun $main_if2 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv2 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum4 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond!1 Int))
    (=> (and (not (not (= cond!1 0)))
             ($__VERIFIER_assert_pre cond!1))
        ($__VERIFIER_assert_ERROR cond!1 cond!1))))

; error
(assert
  (forall ((cond!1 Int) (cond!2 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond!1 cond!2))
        false)))

; if else
(assert
  (forall ((cond!1 Int))
    (=> (and (not (not (not (= cond!1 0))))
             ($__VERIFIER_assert_pre cond!1))
        ($__VERIFIER_assert_if1 cond!1 cond!1))))

; post __VERIFIER_assert
(assert
  (forall ((cond!1 Int) (cond!3 Int))
    (=> (and ($__VERIFIER_assert_if1 cond!1 cond!3))
        (__VERIFIER_assert cond!1))))

; loop entry $main_inv1 (line 10)
(assert
  (forall ((y!5 Int) (z!6 Int) (x!4 Int))
    (=> (and (= z!6 0)
             (= y!5 100)
             (= x!4 0))
        ($main_inv1 0 y!5 z!6))))

; loop term $main_sum1 (line 10)
(assert
  (forall ((x!7 Int) (y!8 Int) (z!9 Int))
    (=> (and (not (< y!8 1000))
             ($main_inv1 x!7 y!8 z!9))
        ($main_sum1 x!7 y!8 z!9))))

; if then
(assert
  (forall ((x!7 Int) (y!8 Int) (z!9 Int))
    (=> (and (< x!7 500)
             (< y!8 1000)
             ($main_inv1 x!7 y!8 z!9))
        ($main_if2 x!7 y!8 z!9 (+ x!7 20) y!8 z!9))))

; if else
(assert
  (forall ((x!7 Int) (y!8 Int) (z!9 Int))
    (=> (and (not (< x!7 500))
             (< y!8 1000)
             ($main_inv1 x!7 y!8 z!9))
        ($main_if2 x!7 y!8 z!9 (- x!7 13) (+ y!8 40) z!9))))

; forwards $main_inv1 (line 10)
(assert
  (forall ((x!10 Int) (y!11 Int) (x!7 Int) (z!9 Int) (z!12 Int) (y!8 Int))
    (=> (and ($main_if2 x!7 y!8 z!9 x!10 y!11 z!12))
        ($main_inv1 x!10 y!11 z!12))))

; loop entry $main_inv2 (line 20)
(assert
  (forall ((x!13 Int) (y!14 Int) (z!15 Int))
    (=> (and (<= y!14 1000000)
             ($main_sum1 x!13 y!14 z!15))
        ($main_inv2 x!13 y!14 z!15))))

; loop term $main_sum2 (line 20)
(assert
  (forall ((x!16 Int) (y!17 Int) (z!18 Int))
    (=> (and (not (> y!17 z!18))
             ($main_inv2 x!16 y!17 z!18))
        ($main_sum2 x!16 y!17 z!18))))

; forwards $main_inv2 (line 20)
(assert
  (forall ((x!16 Int) (y!17 Int) (z!18 Int))
    (=> (and (> y!17 z!18)
             ($main_inv2 x!16 y!17 z!18))
        ($main_inv2 (+ x!16 1) (+ y!17 1) (+ z!18 100)))))

; loop entry $main_inv3 (line 26)
(assert
  (forall ((x!13 Int) (y!14 Int) (z!15 Int))
    (=> (and (not (<= y!14 1000000))
             ($main_sum1 x!13 y!14 z!15))
        ($main_inv3 x!13 y!14 z!15))))

; loop term $main_sum3 (line 26)
(assert
  (forall ((x!22 Int) (y!23 Int) (z!24 Int))
    (=> (and (not (> y!23 z!24))
             ($main_inv3 x!22 y!23 z!24))
        ($main_sum3 x!22 y!23 z!24))))

; forwards $main_inv3 (line 26)
(assert
  (forall ((x!22 Int) (y!23 Int) (z!24 Int))
    (=> (and (> y!23 z!24)
             ($main_inv3 x!22 y!23 z!24))
        ($main_inv3 x!22 (- y!23 10) (+ z!24 15)))))

; if then
(assert
  (forall ((x!4 Int) (y!20 Int) (y!5 Int) (z!21 Int) (x!19 Int) (z!6 Int))
    (=> (and ($main_sum2 x!19 y!20 z!21))
        ($main_if3 x!4 y!5 z!6 x!19 y!20 z!21))))

; if else
(assert
  (forall ((y!26 Int) (x!4 Int) (z!27 Int) (y!5 Int) (x!25 Int) (z!6 Int))
    (=> (and ($main_sum3 x!25 y!26 z!27))
        ($main_if3 x!4 y!5 z!6 x!25 y!26 z!27))))

; loop entry $main_inv4 (line 32)
(assert
  (forall ((x!28 Int) (y!5 Int) (z!30 Int) (z!6 Int) (x!4 Int) (y!29 Int))
    (=> (and ($main_if3 x!4 y!5 z!6 x!28 y!29 z!30))
        ($main_inv4 x!28 y!29 z!30))))

; loop term $main_sum4 (line 32)
(assert
  (forall ((x!31 Int) (y!32 Int) (z!33 Int))
    (=> (and (not (< x!31 z!33))
             ($main_inv4 x!31 y!32 z!33))
        ($main_sum4 x!31 y!32 z!33))))

; forwards $main_inv4 (line 32)
(assert
  (forall ((z!33 Int) (y!32 Int) (x!31 Int))
    (=> (and (< x!31 z!33)
             ($main_inv4 x!31 y!32 z!33))
        ($main_inv4 z!33 y!32 z!33))))

; pre __VERIFIER_assert
(assert
  (forall ((x!34 Int) (z!36 Int) (y!35 Int))
    (=> (and ($main_sum4 x!34 y!35 z!36))
        ($__VERIFIER_assert_pre (ite (= x!34 z!36) 1 0)))))

(check-sat)
