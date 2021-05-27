; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { %struct.dllist*, void (i8*)*, void (i8*)* }
%struct.dllist = type opaque
%struct.iter = type opaque

@.str = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A10/q4b-queue/stack.c\00", align 1
@__PRETTY_FUNCTION__.stack_create = private unnamed_addr constant [69 x i8] c"struct stack *stack_create(void (*)(const void *), void (*)(void *))\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@__PRETTY_FUNCTION__.stack_destroy = private unnamed_addr constant [35 x i8] c"void stack_destroy(struct stack *)\00", align 1
@__PRETTY_FUNCTION__.stack_top = private unnamed_addr constant [44 x i8] c"const void *stack_top(const struct stack *)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"list_is_empty(s->stack) == false\00", align 1
@__PRETTY_FUNCTION__.stack_pop = private unnamed_addr constant [32 x i8] c"void *stack_pop(struct stack *)\00", align 1
@__PRETTY_FUNCTION__.stack_push = private unnamed_addr constant [40 x i8] c"void stack_push(struct stack *, void *)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@__PRETTY_FUNCTION__.stack_is_empty = private unnamed_addr constant [37 x i8] c"_Bool stack_is_empty(struct stack *)\00", align 1
@__PRETTY_FUNCTION__.stack_print = private unnamed_addr constant [44 x i8] c"void stack_print(const struct stack *, int)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" -> \00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.stack* @stack_create(void (i8*)* %print, void (i8*)* %destroy) #0 {
entry:
  %print.addr = alloca void (i8*)*, align 8
  %destroy.addr = alloca void (i8*)*, align 8
  %s = alloca %struct.stack*, align 8
  store void (i8*)* %print, void (i8*)** %print.addr, align 8
  store void (i8*)* %destroy, void (i8*)** %destroy.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %print.addr, align 8
  %tobool = icmp ne void (i8*)* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.stack_create, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %tobool1 = icmp ne void (i8*)* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 15, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.stack_create, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %call = call noalias i8* @malloc(i64 24) #5
  %2 = bitcast i8* %call to %struct.stack*
  store %struct.stack* %2, %struct.stack** %s, align 8
  %3 = load %struct.stack*, %struct.stack** %s, align 8
  %tobool5 = icmp ne %struct.stack* %3, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.stack_create, i32 0, i32 0)) #4
  unreachable

if.end8:                                          ; preds = %if.then6
  %4 = load void (i8*)*, void (i8*)** %print.addr, align 8
  %5 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %call9 = call %struct.dllist* @list_create(void (i8*)* %4, void (i8*)* %5)
  %6 = load %struct.stack*, %struct.stack** %s, align 8
  %stack = getelementptr inbounds %struct.stack, %struct.stack* %6, i32 0, i32 0
  store %struct.dllist* %call9, %struct.dllist** %stack, align 8
  %7 = load void (i8*)*, void (i8*)** %print.addr, align 8
  %8 = load %struct.stack*, %struct.stack** %s, align 8
  %print10 = getelementptr inbounds %struct.stack, %struct.stack* %8, i32 0, i32 1
  store void (i8*)* %7, void (i8*)** %print10, align 8
  %9 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %10 = load %struct.stack*, %struct.stack** %s, align 8
  %destroy11 = getelementptr inbounds %struct.stack, %struct.stack* %10, i32 0, i32 2
  store void (i8*)* %9, void (i8*)** %destroy11, align 8
  %11 = load %struct.stack*, %struct.stack** %s, align 8
  ret %struct.stack* %11
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare %struct.dllist* @list_create(void (i8*)*, void (i8*)*) #3

; Function Attrs: noinline nounwind optnone
define void @stack_destroy(%struct.stack* %s) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.stack_destroy, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load %struct.dllist*, %struct.dllist** %stack, align 8
  call void @list_destroy(%struct.dllist* %2)
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %4 = bitcast %struct.stack* %3 to i8*
  call void @free(i8* %4) #5
  ret void
}

declare void @list_destroy(%struct.dllist*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define i8* @stack_top(%struct.stack* %s) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.stack_top, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load %struct.dllist*, %struct.dllist** %stack, align 8
  %call = call zeroext i1 @list_is_empty(%struct.dllist* %2)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.stack_top, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack5 = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 0
  %4 = load %struct.dllist*, %struct.dllist** %stack5, align 8
  %call6 = call i8* @list_peek_front(%struct.dllist* %4)
  ret i8* %call6
}

declare zeroext i1 @list_is_empty(%struct.dllist*) #3

declare i8* @list_peek_front(%struct.dllist*) #3

; Function Attrs: noinline nounwind optnone
define i8* @stack_pop(%struct.stack* %s) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load %struct.dllist*, %struct.dllist** %stack, align 8
  %call = call zeroext i1 @list_is_empty(%struct.dllist* %2)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack5 = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 0
  %4 = load %struct.dllist*, %struct.dllist** %stack5, align 8
  %call6 = call i8* @list_remove_front(%struct.dllist* %4)
  ret i8* %call6
}

declare i8* @list_remove_front(%struct.dllist*) #3

; Function Attrs: noinline nounwind optnone
define void @stack_push(%struct.stack* %s, i8* %item) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  %item.addr = alloca i8*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.stack_push, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %item.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.stack_push, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 0
  %3 = load %struct.dllist*, %struct.dllist** %stack, align 8
  %4 = load i8*, i8** %item.addr, align 8
  call void @list_prepend(%struct.dllist* %3, i8* %4)
  ret void
}

declare void @list_prepend(%struct.dllist*, i8*) #3

; Function Attrs: noinline nounwind optnone
define zeroext i1 @stack_is_empty(%struct.stack* %s) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.stack_is_empty, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load %struct.dllist*, %struct.dllist** %stack, align 8
  %call = call zeroext i1 @list_is_empty(%struct.dllist* %2)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone
define void @stack_print(%struct.stack* %s, i32 %direction) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  %direction.addr = alloca i32, align 4
  %e = alloca %struct.iter*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.stack_print, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load %struct.dllist*, %struct.dllist** %stack, align 8
  %call = call zeroext i1 @list_is_empty(%struct.dllist* %2)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %stack3 = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 0
  %4 = load %struct.dllist*, %struct.dllist** %stack3, align 8
  %5 = load i32, i32* %direction.addr, align 4
  %call4 = call %struct.iter* @iter_get(%struct.dllist* %4, i32 %5)
  store %struct.iter* %call4, %struct.iter** %e, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then2
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  %6 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %print = getelementptr inbounds %struct.stack, %struct.stack* %6, i32 0, i32 1
  %7 = load void (i8*)*, void (i8*)** %print, align 8
  %8 = load %struct.iter*, %struct.iter** %e, align 8
  %call6 = call i8* @iter_current(%struct.iter* %8)
  call void %7(i8* %call6)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load %struct.iter*, %struct.iter** %e, align 8
  %call7 = call zeroext i1 @iter_next(%struct.iter* %9)
  br i1 %call7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end
  ret void
}

declare %struct.iter* @iter_get(%struct.dllist*, i32) #3

declare i32 @printf(i8*, ...) #3

declare i8* @iter_current(%struct.iter*) #3

declare zeroext i1 @iter_next(%struct.iter*) #3

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
