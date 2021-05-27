; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl = type { i32, i32 }

@SQRT_PRECISION = constant i32 1000, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A4/q2b-rationals/rtnl_math.c\00", align 1
@__PRETTY_FUNCTION__.rtnl_simplify = private unnamed_addr constant [34 x i8] c"void rtnl_simplify(struct rtnl *)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"den != 0\00", align 1
@__PRETTY_FUNCTION__.rtnl_make = private unnamed_addr constant [32 x i8] c"struct rtnl rtnl_make(int, int)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@__PRETTY_FUNCTION__.rtnl_plus = private unnamed_addr constant [64 x i8] c"struct rtnl rtnl_plus(const struct rtnl *, const struct rtnl *)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@__PRETTY_FUNCTION__.rtnl_sqrt = private unnamed_addr constant [43 x i8] c"struct rtnl rtnl_sqrt(const struct rtnl *)\00", align 1

; Function Attrs: noinline nounwind optnone readnone
define i32 @abs(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define i32 @gcd(i32 %a, i32 %b) #1 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %call = call i32 @abs(i32 %0) #4
  store i32 %call, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %call1 = call i32 @abs(i32 %1) #4
  store i32 %call1, i32* %b.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %b.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %b.addr, align 4
  store i32 %3, i32* %tmp, align 4
  %4 = load i32, i32* %a.addr, align 4
  %5 = load i32, i32* %b.addr, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %b.addr, align 4
  %6 = load i32, i32* %tmp, align 4
  store i32 %6, i32* %a.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %a.addr, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone
define void @rtnl_simplify(%struct.rtnl* %r) #1 {
entry:
  %r.addr = alloca %struct.rtnl*, align 8
  %g = alloca i32, align 4
  store %struct.rtnl* %r, %struct.rtnl** %r.addr, align 8
  %0 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %tobool = icmp ne %struct.rtnl* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.rtnl_simplify, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %g, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %1 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %num = getelementptr inbounds %struct.rtnl, %struct.rtnl* %1, i32 0, i32 0
  %2 = load i32, i32* %num, align 4
  %3 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %den = getelementptr inbounds %struct.rtnl, %struct.rtnl* %3, i32 0, i32 1
  %4 = load i32, i32* %den, align 4
  %call = call i32 @gcd(i32 %2, i32 %4)
  store i32 %call, i32* %g, align 4
  %5 = load i32, i32* %g, align 4
  %6 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %num1 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %6, i32 0, i32 0
  %7 = load i32, i32* %num1, align 4
  %div = sdiv i32 %7, %5
  store i32 %div, i32* %num1, align 4
  %8 = load i32, i32* %g, align 4
  %9 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %den2 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %9, i32 0, i32 1
  %10 = load i32, i32* %den2, align 4
  %div3 = sdiv i32 %10, %8
  store i32 %div3, i32* %den2, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %11 = load i32, i32* %g, align 4
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %den4 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %12, i32 0, i32 1
  %13 = load i32, i32* %den4, align 4
  %cmp5 = icmp slt i32 %13, 0
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.end
  %14 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %den7 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %14, i32 0, i32 1
  %15 = load i32, i32* %den7, align 4
  %mul = mul nsw i32 %15, -1
  store i32 %mul, i32* %den7, align 4
  %16 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %num8 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %16, i32 0, i32 0
  %17 = load i32, i32* %num8, align 4
  %mul9 = mul nsw i32 %17, -1
  store i32 %mul9, i32* %num8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.end
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone
define i64 @rtnl_make(i32 %num, i32 %den) #1 {
entry:
  %retval = alloca %struct.rtnl, align 4
  %num.addr = alloca i32, align 4
  %den.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %den, i32* %den.addr, align 4
  %0 = load i32, i32* %den.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.rtnl_make, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %num1 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %retval, i32 0, i32 0
  %1 = load i32, i32* %num.addr, align 4
  store i32 %1, i32* %num1, align 4
  %den2 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %retval, i32 0, i32 1
  %2 = load i32, i32* %den.addr, align 4
  store i32 %2, i32* %den2, align 4
  call void @rtnl_simplify(%struct.rtnl* %retval)
  %3 = bitcast %struct.rtnl* %retval to i64*
  %4 = load i64, i64* %3, align 4
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define i64 @rtnl_plus(%struct.rtnl* %a, %struct.rtnl* %b) #1 {
entry:
  %retval = alloca %struct.rtnl, align 4
  %a.addr = alloca %struct.rtnl*, align 8
  %b.addr = alloca %struct.rtnl*, align 8
  store %struct.rtnl* %a, %struct.rtnl** %a.addr, align 8
  store %struct.rtnl* %b, %struct.rtnl** %b.addr, align 8
  %0 = load %struct.rtnl*, %struct.rtnl** %a.addr, align 8
  %tobool = icmp ne %struct.rtnl* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.rtnl_plus, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.rtnl*, %struct.rtnl** %b.addr, align 8
  %tobool1 = icmp ne %struct.rtnl* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.rtnl_plus, i32 0, i32 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %num = getelementptr inbounds %struct.rtnl, %struct.rtnl* %retval, i32 0, i32 0
  %2 = load %struct.rtnl*, %struct.rtnl** %a.addr, align 8
  %num5 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %2, i32 0, i32 0
  %3 = load i32, i32* %num5, align 4
  %4 = load %struct.rtnl*, %struct.rtnl** %b.addr, align 8
  %den = getelementptr inbounds %struct.rtnl, %struct.rtnl* %4, i32 0, i32 1
  %5 = load i32, i32* %den, align 4
  %mul = mul nsw i32 %3, %5
  %6 = load %struct.rtnl*, %struct.rtnl** %b.addr, align 8
  %num6 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %6, i32 0, i32 0
  %7 = load i32, i32* %num6, align 4
  %8 = load %struct.rtnl*, %struct.rtnl** %a.addr, align 8
  %den7 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %8, i32 0, i32 1
  %9 = load i32, i32* %den7, align 4
  %mul8 = mul nsw i32 %7, %9
  %add = add nsw i32 %mul, %mul8
  store i32 %add, i32* %num, align 4
  %den9 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %retval, i32 0, i32 1
  %10 = load %struct.rtnl*, %struct.rtnl** %a.addr, align 8
  %den10 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %10, i32 0, i32 1
  %11 = load i32, i32* %den10, align 4
  %12 = load %struct.rtnl*, %struct.rtnl** %b.addr, align 8
  %den11 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %12, i32 0, i32 1
  %13 = load i32, i32* %den11, align 4
  %mul12 = mul nsw i32 %11, %13
  store i32 %mul12, i32* %den9, align 4
  call void @rtnl_simplify(%struct.rtnl* %retval)
  %14 = bitcast %struct.rtnl* %retval to i64*
  %15 = load i64, i64* %14, align 4
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone
define i64 @rtnl_sqrt(%struct.rtnl* %r) #1 {
entry:
  %retval = alloca %struct.rtnl, align 4
  %r.addr = alloca %struct.rtnl*, align 8
  %root = alloca double, align 8
  %den2 = alloca double, align 8
  store %struct.rtnl* %r, %struct.rtnl** %r.addr, align 8
  %0 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %tobool = icmp ne %struct.rtnl* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i32 0, i32 0), i32 58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.rtnl_sqrt, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %num = getelementptr inbounds %struct.rtnl, %struct.rtnl* %1, i32 0, i32 0
  %2 = load i32, i32* %num, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double 1.000000e+00, %conv
  %3 = load %struct.rtnl*, %struct.rtnl** %r.addr, align 8
  %den = getelementptr inbounds %struct.rtnl, %struct.rtnl* %3, i32 0, i32 1
  %4 = load i32, i32* %den, align 4
  %conv1 = sitofp i32 %4 to double
  %div = fdiv double %mul, %conv1
  %5 = call double @llvm.sqrt.f64(double %div)
  store double %5, double* %root, align 8
  store double 1.000000e+00, double* %den2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load double, double* %root, align 8
  %cmp = fcmp olt double %6, 1.000000e+03
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load double, double* %root, align 8
  %mul4 = fmul double %7, 1.000000e+01
  store double %mul4, double* %root, align 8
  %8 = load double, double* %den2, align 8
  %mul5 = fmul double %8, 1.000000e+01
  store double %mul5, double* %den2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %num6 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %retval, i32 0, i32 0
  %9 = load double, double* %root, align 8
  %conv7 = fptosi double %9 to i32
  store i32 %conv7, i32* %num6, align 4
  %den8 = getelementptr inbounds %struct.rtnl, %struct.rtnl* %retval, i32 0, i32 1
  %10 = load double, double* %den2, align 8
  %conv9 = fptosi double %10 to i32
  store i32 %conv9, i32* %den8, align 4
  call void @rtnl_simplify(%struct.rtnl* %retval)
  %11 = bitcast %struct.rtnl* %retval to i64*
  %12 = load i64, i64* %11, align 4
  ret i64 %12
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #3

attributes #0 = { noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
