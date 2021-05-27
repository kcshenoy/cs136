; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%2d | \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"   | \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"   +--------------------\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"     0 1 2 3 4 5 6 7 8 9\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define void @draw_col(i1 zeroext %bar) #0 {
entry:
  %bar.addr = alloca i8, align 1
  %frombool = zext i1 %bar to i8
  store i8 %frombool, i8* %bar.addr, align 1
  %0 = load i8, i8* %bar.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone
define i32 @max(i32 %a, i32 %b) #0 {
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
define i32 @max_10(i32 %c_0, i32 %c_1, i32 %c_2, i32 %c_3, i32 %c_4, i32 %c_5, i32 %c_6, i32 %c_7, i32 %c_8, i32 %c_9) #0 {
entry:
  %c_0.addr = alloca i32, align 4
  %c_1.addr = alloca i32, align 4
  %c_2.addr = alloca i32, align 4
  %c_3.addr = alloca i32, align 4
  %c_4.addr = alloca i32, align 4
  %c_5.addr = alloca i32, align 4
  %c_6.addr = alloca i32, align 4
  %c_7.addr = alloca i32, align 4
  %c_8.addr = alloca i32, align 4
  %c_9.addr = alloca i32, align 4
  store i32 %c_0, i32* %c_0.addr, align 4
  store i32 %c_1, i32* %c_1.addr, align 4
  store i32 %c_2, i32* %c_2.addr, align 4
  store i32 %c_3, i32* %c_3.addr, align 4
  store i32 %c_4, i32* %c_4.addr, align 4
  store i32 %c_5, i32* %c_5.addr, align 4
  store i32 %c_6, i32* %c_6.addr, align 4
  store i32 %c_7, i32* %c_7.addr, align 4
  store i32 %c_8, i32* %c_8.addr, align 4
  store i32 %c_9, i32* %c_9.addr, align 4
  %0 = load i32, i32* %c_0.addr, align 4
  %1 = load i32, i32* %c_1.addr, align 4
  %2 = load i32, i32* %c_2.addr, align 4
  %3 = load i32, i32* %c_3.addr, align 4
  %4 = load i32, i32* %c_4.addr, align 4
  %5 = load i32, i32* %c_5.addr, align 4
  %6 = load i32, i32* %c_6.addr, align 4
  %7 = load i32, i32* %c_7.addr, align 4
  %8 = load i32, i32* %c_8.addr, align 4
  %9 = load i32, i32* %c_9.addr, align 4
  %call = call i32 @max(i32 %8, i32 %9)
  %call1 = call i32 @max(i32 %7, i32 %call)
  %call2 = call i32 @max(i32 %6, i32 %call1)
  %call3 = call i32 @max(i32 %5, i32 %call2)
  %call4 = call i32 @max(i32 %4, i32 %call3)
  %call5 = call i32 @max(i32 %3, i32 %call4)
  %call6 = call i32 @max(i32 %2, i32 %call5)
  %call7 = call i32 @max(i32 %1, i32 %call6)
  %call8 = call i32 @max(i32 %0, i32 %call7)
  ret i32 %call8
}

; Function Attrs: noinline nounwind optnone
define void @draw_hist(i32 %c_0, i32 %c_1, i32 %c_2, i32 %c_3, i32 %c_4, i32 %c_5, i32 %c_6, i32 %c_7, i32 %c_8, i32 %c_9) #0 {
entry:
  %c_0.addr = alloca i32, align 4
  %c_1.addr = alloca i32, align 4
  %c_2.addr = alloca i32, align 4
  %c_3.addr = alloca i32, align 4
  %c_4.addr = alloca i32, align 4
  %c_5.addr = alloca i32, align 4
  %c_6.addr = alloca i32, align 4
  %c_7.addr = alloca i32, align 4
  %c_8.addr = alloca i32, align 4
  %c_9.addr = alloca i32, align 4
  %max_val = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c_0, i32* %c_0.addr, align 4
  store i32 %c_1, i32* %c_1.addr, align 4
  store i32 %c_2, i32* %c_2.addr, align 4
  store i32 %c_3, i32* %c_3.addr, align 4
  store i32 %c_4, i32* %c_4.addr, align 4
  store i32 %c_5, i32* %c_5.addr, align 4
  store i32 %c_6, i32* %c_6.addr, align 4
  store i32 %c_7, i32* %c_7.addr, align 4
  store i32 %c_8, i32* %c_8.addr, align 4
  store i32 %c_9, i32* %c_9.addr, align 4
  %0 = load i32, i32* %c_0.addr, align 4
  %1 = load i32, i32* %c_1.addr, align 4
  %2 = load i32, i32* %c_2.addr, align 4
  %3 = load i32, i32* %c_3.addr, align 4
  %4 = load i32, i32* %c_4.addr, align 4
  %5 = load i32, i32* %c_5.addr, align 4
  %6 = load i32, i32* %c_6.addr, align 4
  %7 = load i32, i32* %c_7.addr, align 4
  %8 = load i32, i32* %c_8.addr, align 4
  %9 = load i32, i32* %c_9.addr, align 4
  %call = call i32 @max_10(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 %call, i32* %max_val, align 4
  %10 = load i32, i32* %max_val, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %rem = srem i32 %12, 5
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %13)
  br label %if.end

if.else:                                          ; preds = %for.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %c_0.addr, align 4
  %15 = load i32, i32* %i, align 4
  %cmp4 = icmp sge i32 %14, %15
  call void @draw_col(i1 zeroext %cmp4)
  %16 = load i32, i32* %c_1.addr, align 4
  %17 = load i32, i32* %i, align 4
  %cmp5 = icmp sge i32 %16, %17
  call void @draw_col(i1 zeroext %cmp5)
  %18 = load i32, i32* %c_2.addr, align 4
  %19 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %18, %19
  call void @draw_col(i1 zeroext %cmp6)
  %20 = load i32, i32* %c_3.addr, align 4
  %21 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %20, %21
  call void @draw_col(i1 zeroext %cmp7)
  %22 = load i32, i32* %c_4.addr, align 4
  %23 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %22, %23
  call void @draw_col(i1 zeroext %cmp8)
  %24 = load i32, i32* %c_5.addr, align 4
  %25 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %24, %25
  call void @draw_col(i1 zeroext %cmp9)
  %26 = load i32, i32* %c_6.addr, align 4
  %27 = load i32, i32* %i, align 4
  %cmp10 = icmp sge i32 %26, %27
  call void @draw_col(i1 zeroext %cmp10)
  %28 = load i32, i32* %c_7.addr, align 4
  %29 = load i32, i32* %i, align 4
  %cmp11 = icmp sge i32 %28, %29
  call void @draw_col(i1 zeroext %cmp11)
  %30 = load i32, i32* %c_8.addr, align 4
  %31 = load i32, i32* %i, align 4
  %cmp12 = icmp sge i32 %30, %31
  call void @draw_col(i1 zeroext %cmp12)
  %32 = load i32, i32* %c_9.addr, align 4
  %33 = load i32, i32* %i, align 4
  %cmp13 = icmp sge i32 %32, %33
  call void @draw_col(i1 zeroext %cmp13)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %i, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
