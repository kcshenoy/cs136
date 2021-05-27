; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@READ_INT_FAIL = external constant i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Warning: invalid number input\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"value: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@INVALID_SYMBOL = external constant i32, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Bye!\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Warning: invalid command\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define void @exec_int(i32 (i32)* %func) #0 {
entry:
  %func.addr = alloca i32 (i32)*, align 8
  %n = alloca i32, align 4
  store i32 (i32)* %func, i32 (i32)** %func.addr, align 8
  %call = call i32 @read_int()
  store i32 %call, i32* %n, align 4
  %0 = load i32, i32* @READ_INT_FAIL, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32 (i32)*, i32 (i32)** %func.addr, align 8
  %3 = load i32, i32* %n, align 4
  %call2 = call i32 %2(i32 %3)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %call2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @read_int() #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone
define void @iotest_driver() #0 {
entry:
  %PLUS = alloca i32, align 4
  %MINUS = alloca i32, align 4
  %QUIT = alloca i32, align 4
  %cmd = alloca i32, align 4
  %call = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call, i32* %PLUS, align 4
  %call1 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i32 %call1, i32* %MINUS, align 4
  %call2 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i32 %call2, i32* %QUIT, align 4
  store i32 0, i32* %cmd, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load i32, i32* @INVALID_SYMBOL, align 4
  %call3 = call i32 @read_symbol()
  store i32 %call3, i32* %cmd, align 4
  %cmp = icmp ne i32 %0, %call3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %QUIT, align 4
  %2 = load i32, i32* %cmd, align 4
  %cmp4 = icmp eq i32 %1, %2
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %while.end

if.else:                                          ; preds = %while.body
  %3 = load i32, i32* %PLUS, align 4
  %4 = load i32, i32* %cmd, align 4
  %cmp6 = icmp eq i32 %3, %4
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  call void @exec_int(i32 (i32)* @plus)
  br label %if.end13

if.else8:                                         ; preds = %if.else
  %5 = load i32, i32* %MINUS, align 4
  %6 = load i32, i32* %cmd, align 4
  %cmp9 = icmp eq i32 %5, %6
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  call void @exec_int(i32 (i32)* @minus)
  br label %if.end

if.else11:                                        ; preds = %if.else8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare i32 @lookup_symbol(i8*) #1

declare i32 @read_symbol() #1

declare i32 @plus(i32) #1

declare i32 @minus(i32) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
