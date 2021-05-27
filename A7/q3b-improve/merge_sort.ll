; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A7/q3b-improve/merge_sort.c\00", align 1
@__PRETTY_FUNCTION__.merge = private unnamed_addr constant [42 x i8] c"void merge(int *, int *, int, int *, int)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"a2\00", align 1

; Function Attrs: noinline nounwind optnone
define void @merge_sort(i32* %arr, i32 %len) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %stride = alloca i32, align 4
  %i = alloca i32, align 4
  %i26 = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  store i32* %0, i32** %a, align 8
  %1 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %b, align 8
  store i32 1, i32* %stride, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %3 = load i32, i32* %stride, align 4
  %4 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %7 = load i32*, i32** %b, align 8
  %8 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  %9 = load i32*, i32** %a, align 8
  %10 = load i32, i32* %i, align 4
  %idx.ext6 = sext i32 %10 to i64
  %add.ptr7 = getelementptr inbounds i32, i32* %9, i64 %idx.ext6
  %11 = load i32, i32* %stride, align 4
  %12 = load i32, i32* %len.addr, align 4
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, %13
  %call8 = call i32 @min(i32 %11, i32 %sub)
  %14 = load i32*, i32** %a, align 8
  %15 = load i32, i32* %i, align 4
  %idx.ext9 = sext i32 %15 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %14, i64 %idx.ext9
  %16 = load i32, i32* %stride, align 4
  %idx.ext11 = sext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i32, i32* %add.ptr10, i64 %idx.ext11
  %17 = load i32, i32* %stride, align 4
  %18 = load i32, i32* %len.addr, align 4
  %19 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %18, %19
  %20 = load i32, i32* %stride, align 4
  %sub14 = sub nsw i32 %sub13, %20
  %call15 = call i32 @min(i32 %17, i32 %sub14)
  %call16 = call i32 @max(i32 0, i32 %call15)
  call void @merge(i32* %add.ptr, i32* %add.ptr7, i32 %call8, i32* %add.ptr12, i32 %call16)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %21 = load i32, i32* %stride, align 4
  %mul17 = mul nsw i32 %21, 2
  %22 = load i32, i32* %i, align 4
  %add = add nsw i32 %22, %mul17
  store i32 %add, i32* %i, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %23 = load i32*, i32** %a, align 8
  %24 = load i32*, i32** %arr.addr, align 8
  %cmp18 = icmp eq i32* %23, %24
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %25 = load i32*, i32** %b, align 8
  store i32* %25, i32** %a, align 8
  %26 = load i32*, i32** %arr.addr, align 8
  store i32* %26, i32** %b, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %27 = load i32*, i32** %a, align 8
  store i32* %27, i32** %b, align 8
  %28 = load i32*, i32** %arr.addr, align 8
  store i32* %28, i32** %a, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %29 = load i32, i32* %stride, align 4
  %mul21 = mul nsw i32 %29, 2
  store i32 %mul21, i32* %stride, align 4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  %30 = load i32*, i32** %a, align 8
  %31 = load i32*, i32** %arr.addr, align 8
  %cmp23 = icmp ne i32* %30, %31
  br i1 %cmp23, label %if.then25, label %if.else35

if.then25:                                        ; preds = %for.end22
  store i32 0, i32* %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc33, %if.then25
  %32 = load i32, i32* %i26, align 4
  %33 = load i32, i32* %len.addr, align 4
  %cmp28 = icmp slt i32 %32, %33
  br i1 %cmp28, label %for.body30, label %for.end34

for.body30:                                       ; preds = %for.cond27
  %34 = load i32*, i32** %a, align 8
  %35 = load i32, i32* %i26, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds i32, i32* %34, i64 %idxprom
  %36 = load i32, i32* %arrayidx, align 4
  %37 = load i32*, i32** %arr.addr, align 8
  %38 = load i32, i32* %i26, align 4
  %idxprom31 = sext i32 %38 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %37, i64 %idxprom31
  store i32 %36, i32* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body30
  %39 = load i32, i32* %i26, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i26, align 4
  br label %for.cond27

for.end34:                                        ; preds = %for.cond27
  %40 = load i32*, i32** %a, align 8
  %41 = bitcast i32* %40 to i8*
  call void @free(i8* %41) #3
  br label %if.end36

if.else35:                                        ; preds = %for.end22
  %42 = load i32*, i32** %b, align 8
  %43 = bitcast i32* %42 to i8*
  call void @free(i8* %43) #3
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %for.end34
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @min(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define internal i32 @max(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define internal void @merge(i32* %dest, i32* %a1, i32 %len1, i32* %a2, i32 %len2) #0 {
entry:
  %dest.addr = alloca i32*, align 8
  %a1.addr = alloca i32*, align 8
  %len1.addr = alloca i32, align 4
  %a2.addr = alloca i32*, align 8
  %len2.addr = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %id = alloca i32, align 4
  store i32* %dest, i32** %dest.addr, align 8
  store i32* %a1, i32** %a1.addr, align 8
  store i32 %len1, i32* %len1.addr, align 4
  store i32* %a2, i32** %a2.addr, align 8
  store i32 %len2, i32* %len2.addr, align 4
  %0 = load i32*, i32** %dest.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32*, i32** %a1.addr, align 8
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i32*, i32** %a2.addr, align 8
  %tobool5 = icmp ne i32* %2, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i32 0, i32 0), i32 9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end8:                                          ; preds = %if.then6
  store i32 0, i32* %i1, align 4
  store i32 0, i32* %i2, align 4
  store i32 0, i32* %id, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end8
  %3 = load i32, i32* %i1, align 4
  %4 = load i32, i32* %len1.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %5 = load i32, i32* %i2, align 4
  %6 = load i32, i32* %len2.addr, align 4
  %cmp9 = icmp slt i32 %5, %6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %7 = phi i1 [ true, %while.cond ], [ %cmp9, %lor.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %8 = load i32, i32* %i1, align 4
  %9 = load i32, i32* %len1.addr, align 4
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* %i2, align 4
  %11 = load i32, i32* %len2.addr, align 4
  %cmp11 = icmp eq i32 %10, %11
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32*, i32** %a1.addr, align 8
  %13 = load i32, i32* %i1, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load i32*, i32** %a2.addr, align 8
  %16 = load i32, i32* %i2, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %15, i64 %idxprom12
  %17 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp sle i32 %14, %17
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load i32*, i32** %a1.addr, align 8
  %19 = load i32, i32* %i1, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %18, i64 %idxprom16
  %20 = load i32, i32* %arrayidx17, align 4
  %21 = load i32*, i32** %dest.addr, align 8
  %22 = load i32, i32* %id, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %21, i64 %idxprom18
  store i32 %20, i32* %arrayidx19, align 4
  %23 = load i32, i32* %i1, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i1, align 4
  br label %if.end26

if.else20:                                        ; preds = %lor.lhs.false, %while.body
  %24 = load i32*, i32** %a2.addr, align 8
  %25 = load i32, i32* %i2, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %24, i64 %idxprom21
  %26 = load i32, i32* %arrayidx22, align 4
  %27 = load i32*, i32** %dest.addr, align 8
  %28 = load i32, i32* %id, align 4
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %27, i64 %idxprom23
  store i32 %26, i32* %arrayidx24, align 4
  %29 = load i32, i32* %i2, align 4
  %inc25 = add nsw i32 %29, 1
  store i32 %inc25, i32* %i2, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else20, %if.then15
  %30 = load i32, i32* %id, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %id, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
