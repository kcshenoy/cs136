; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dough\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"chips\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bake\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@INVALID_SYMBOL = external constant i32, align 4
@READ_INT_FAIL = external constant i32, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Error: not a number\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Error: not a command\00", align 1

; Function Attrs: noinline nounwind optnone
define void @error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %0)
  call void @exit(i32 1) #3
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone
define void @run_bakery() #0 {
entry:
  %SHOW_BOWL = alloca i32, align 4
  %ADD_DOUGH = alloca i32, align 4
  %ADD_CHIPS = alloca i32, align 4
  %BAKE_COOKIE = alloca i32, align 4
  %EMPTY_BOWL = alloca i32, align 4
  %CLOSE = alloca i32, align 4
  %cmd = alloca i32, align 4
  %amount = alloca i32, align 4
  %amount23 = alloca i32, align 4
  %call = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  store i32 %call, i32* %SHOW_BOWL, align 4
  %call1 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call1, i32* %ADD_DOUGH, align 4
  %call2 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i32 %call2, i32* %ADD_CHIPS, align 4
  %call3 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i32 %call3, i32* %BAKE_COOKIE, align 4
  %call4 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  store i32 %call4, i32* %EMPTY_BOWL, align 4
  %call5 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call5, i32* %CLOSE, align 4
  store i32 0, i32* %cmd, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %entry
  %0 = load i32, i32* @INVALID_SYMBOL, align 4
  %call6 = call i32 @read_symbol()
  store i32 %call6, i32* %cmd, align 4
  %cmp = icmp ne i32 %0, %call6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %CLOSE, align 4
  %2 = load i32, i32* %cmd, align 4
  %cmp7 = icmp eq i32 %1, %2
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @close_bakery()
  br label %while.end

if.else:                                          ; preds = %while.body
  %3 = load i32, i32* %SHOW_BOWL, align 4
  %4 = load i32, i32* %cmd, align 4
  %cmp8 = icmp eq i32 %3, %4
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  call void @show_bowl()
  br label %if.end37

if.else10:                                        ; preds = %if.else
  %5 = load i32, i32* %EMPTY_BOWL, align 4
  %6 = load i32, i32* %cmd, align 4
  %cmp11 = icmp eq i32 %5, %6
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  call void @empty_bowl()
  br label %if.end36

if.else13:                                        ; preds = %if.else10
  %7 = load i32, i32* %ADD_DOUGH, align 4
  %8 = load i32, i32* %cmd, align 4
  %cmp14 = icmp eq i32 %7, %8
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else13
  store i32 0, i32* %amount, align 4
  %9 = load i32, i32* @READ_INT_FAIL, align 4
  %call16 = call i32 @read_int()
  store i32 %call16, i32* %amount, align 4
  %cmp17 = icmp ne i32 %9, %call16
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then15
  %10 = load i32, i32* %amount, align 4
  call void @add_dough(i32 %10)
  br label %if.end

if.else19:                                        ; preds = %if.then15
  call void @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then18
  br label %if.end35

if.else20:                                        ; preds = %if.else13
  %11 = load i32, i32* %ADD_CHIPS, align 4
  %12 = load i32, i32* %cmd, align 4
  %cmp21 = icmp eq i32 %11, %12
  br i1 %cmp21, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.else20
  store i32 0, i32* %amount23, align 4
  %13 = load i32, i32* @READ_INT_FAIL, align 4
  %call24 = call i32 @read_int()
  store i32 %call24, i32* %amount23, align 4
  %cmp25 = icmp ne i32 %13, %call24
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then22
  %14 = load i32, i32* %amount23, align 4
  call void @add_chips(i32 %14)
  br label %if.end28

if.else27:                                        ; preds = %if.then22
  call void @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  br label %if.end34

if.else29:                                        ; preds = %if.else20
  %15 = load i32, i32* %BAKE_COOKIE, align 4
  %16 = load i32, i32* %cmd, align 4
  %cmp30 = icmp eq i32 %15, %16
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else29
  call void @bake_cookie()
  br label %if.end33

if.else32:                                        ; preds = %if.else29
  call void @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end28
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then12
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then9
  br label %if.end38

if.end38:                                         ; preds = %if.end37
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare i32 @lookup_symbol(i8*) #1

declare i32 @read_symbol() #1

declare void @close_bakery() #1

declare void @show_bowl() #1

declare void @empty_bowl() #1

declare i32 @read_int() #1

declare void @add_dough(i32) #1

declare void @add_chips(i32) #1

declare void @bake_cookie() #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
