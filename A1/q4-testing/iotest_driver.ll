; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"\22Valid commands are:\22\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"/u2/areetz/.seashell/projects/Draft-A1/q4-testing/iotest_driver.c\00", align 1
@__func__.help = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"\22  push n - pushes n onto the top of the stack (n must be an integer)\22\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"\22  pop - pops the top element off of the stack\22\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\22  top - prints the top element of the stack\22\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"\22  isempty - prints true if the stack is empty or false if it is not\22\00", align 1
@.str.7 = private unnamed_addr constant [84 x i8] c"\22  reset - resets the stack by removing all elements and starting with a new stack\22\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\22  quit - stops the test\22\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\22  help - prints this information\22\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"isempty\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bugsoff\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"bugon\00", align 1
@INVALID_SYMBOL = external constant i32, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Unexpected command: \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define void @help() #0 {
entry:
  call void @_TRACE_MSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0), i32 14)
  call void @_TRACE_MSG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0), i32 15)
  call void @_TRACE_MSG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0), i32 16)
  call void @_TRACE_MSG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0), i32 17)
  call void @_TRACE_MSG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0), i32 18)
  call void @_TRACE_MSG(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0), i32 19)
  call void @_TRACE_MSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0), i32 20)
  call void @_TRACE_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0), i32 21)
  ret void
}

declare void @_TRACE_MSG(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone
define void @iotest_driver() #0 {
entry:
  %PUSH = alloca i32, align 4
  %POP = alloca i32, align 4
  %TOP = alloca i32, align 4
  %ISEMPTY = alloca i32, align 4
  %COUNT = alloca i32, align 4
  %RESET = alloca i32, align 4
  %QUIT = alloca i32, align 4
  %HELP = alloca i32, align 4
  %BUGSOFF = alloca i32, align 4
  %BUGON = alloca i32, align 4
  %cmd = alloca i32, align 4
  %item = alloca i32, align 4
  %bugtype = alloca i32, align 4
  %returned_int = alloca i32, align 4
  %returned_bool = alloca i8, align 1
  %call = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  store i32 %call, i32* %PUSH, align 4
  %call1 = call i32 @lookup_symbol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  store i32 %call1, i32* %POP, align 4
  %call2 = call i32 @lookup_symbol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  store i32 %call2, i32* %TOP, align 4
  %call3 = call i32 @lookup_symbol(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  store i32 %call3, i32* %ISEMPTY, align 4
  %call4 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  store i32 %call4, i32* %COUNT, align 4
  %call5 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  store i32 %call5, i32* %RESET, align 4
  %call6 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store i32 %call6, i32* %QUIT, align 4
  %call7 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.help, i32 0, i32 0))
  store i32 %call7, i32* %HELP, align 4
  %call8 = call i32 @lookup_symbol(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0))
  store i32 %call8, i32* %BUGSOFF, align 4
  %call9 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  store i32 %call9, i32* %BUGON, align 4
  store i32 0, i32* %cmd, align 4
  store i32 0, i32* %item, align 4
  store i32 0, i32* %bugtype, align 4
  store i32 0, i32* %returned_int, align 4
  store i8 0, i8* %returned_bool, align 1
  call void @stack_create()
  br label %while.body

while.body:                                       ; preds = %entry, %if.end65
  %call10 = call i32 @read_symbol()
  store i32 %call10, i32* %cmd, align 4
  %0 = load i32, i32* %cmd, align 4
  %1 = load i32, i32* @INVALID_SYMBOL, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load i32, i32* %cmd, align 4
  %3 = load i32, i32* %QUIT, align 4
  %cmp11 = icmp eq i32 %2, %3
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %cmd, align 4
  %5 = load i32, i32* %PUSH, align 4
  %cmp12 = icmp eq i32 %4, %5
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  %call14 = call i32 @read_int()
  store i32 %call14, i32* %item, align 4
  %6 = load i32, i32* %item, align 4
  call void @stack_push(i32 %6)
  br label %if.end64

if.else15:                                        ; preds = %if.else
  %7 = load i32, i32* %cmd, align 4
  %8 = load i32, i32* %HELP, align 4
  %cmp16 = icmp eq i32 %7, %8
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else15
  call void @help()
  br label %if.end63

if.else18:                                        ; preds = %if.else15
  %9 = load i32, i32* %cmd, align 4
  %10 = load i32, i32* %POP, align 4
  %cmp19 = icmp eq i32 %9, %10
  br i1 %cmp19, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.else18
  %call21 = call i32 @stack_pop()
  store i32 %call21, i32* %returned_int, align 4
  %11 = load i32, i32* %returned_int, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 %11)
  br label %if.end62

if.else23:                                        ; preds = %if.else18
  %12 = load i32, i32* %cmd, align 4
  %13 = load i32, i32* %TOP, align 4
  %cmp24 = icmp eq i32 %12, %13
  br i1 %cmp24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else23
  %call26 = call i32 @stack_top()
  store i32 %call26, i32* %returned_int, align 4
  %14 = load i32, i32* %returned_int, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 %14)
  br label %if.end61

if.else28:                                        ; preds = %if.else23
  %15 = load i32, i32* %cmd, align 4
  %16 = load i32, i32* %RESET, align 4
  %cmp29 = icmp eq i32 %15, %16
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else28
  call void @stack_reset()
  br label %if.end60

if.else31:                                        ; preds = %if.else28
  %17 = load i32, i32* %cmd, align 4
  %18 = load i32, i32* %COUNT, align 4
  %cmp32 = icmp eq i32 %17, %18
  br i1 %cmp32, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.else31
  %call34 = call i32 @stack_count()
  store i32 %call34, i32* %returned_int, align 4
  %19 = load i32, i32* %returned_int, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 %19)
  br label %if.end59

if.else36:                                        ; preds = %if.else31
  %20 = load i32, i32* %cmd, align 4
  %21 = load i32, i32* %BUGSOFF, align 4
  %cmp37 = icmp eq i32 %20, %21
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else36
  %call39 = call i32 @stack_bugs_off()
  br label %if.end58

if.else40:                                        ; preds = %if.else36
  %22 = load i32, i32* %cmd, align 4
  %23 = load i32, i32* %BUGON, align 4
  %cmp41 = icmp eq i32 %22, %23
  br i1 %cmp41, label %if.then42, label %if.else45

if.then42:                                        ; preds = %if.else40
  %call43 = call i32 @read_int()
  store i32 %call43, i32* %bugtype, align 4
  %24 = load i32, i32* %bugtype, align 4
  %call44 = call i32 @stack_bug_on(i32 %24)
  br label %if.end57

if.else45:                                        ; preds = %if.else40
  %25 = load i32, i32* %cmd, align 4
  %26 = load i32, i32* %ISEMPTY, align 4
  %cmp46 = icmp eq i32 %25, %26
  br i1 %cmp46, label %if.then47, label %if.else53

if.then47:                                        ; preds = %if.else45
  %call48 = call zeroext i1 @stack_is_empty()
  %frombool = zext i1 %call48 to i8
  store i8 %frombool, i8* %returned_bool, align 1
  %27 = load i8, i8* %returned_bool, align 1
  %tobool = trunc i8 %27 to i1
  br i1 %tobool, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.then47
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.else51:                                        ; preds = %if.then47
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else51, %if.then49
  br label %if.end56

if.else53:                                        ; preds = %if.else45
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0))
  %28 = load i32, i32* %cmd, align 4
  call void @print_symbol(i32 %28)
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  br label %while.end

if.end56:                                         ; preds = %if.end
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then42
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then38
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then30
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then25
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then20
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then17
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then13
  br label %if.end65

if.end65:                                         ; preds = %if.end64
  br label %while.body

while.end:                                        ; preds = %if.else53, %if.then
  ret void
}

declare i32 @lookup_symbol(i8*) #1

declare void @stack_create() #1

declare i32 @read_symbol() #1

declare i32 @read_int() #1

declare void @stack_push(i32) #1

declare i32 @stack_pop() #1

declare i32 @printf(i8*, ...) #1

declare i32 @stack_top() #1

declare void @stack_reset() #1

declare i32 @stack_count() #1

declare i32 @stack_bugs_off() #1

declare i32 @stack_bug_on(i32) #1

declare zeroext i1 @stack_is_empty() #1

declare void @print_symbol(i32) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
