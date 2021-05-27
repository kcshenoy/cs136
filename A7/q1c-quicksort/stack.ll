; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, i32, i32** }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A7/q1c-quicksort/stack.c\00", align 1
@__PRETTY_FUNCTION__.stack_create = private unnamed_addr constant [33 x i8] c"struct stack *stack_create(void)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"s->data\00", align 1
@__PRETTY_FUNCTION__.stack_push = private unnamed_addr constant [39 x i8] c"void stack_push(struct stack *, int *)\00", align 1
@__PRETTY_FUNCTION__.stack_destroy = private unnamed_addr constant [35 x i8] c"void stack_destroy(struct stack *)\00", align 1
@__PRETTY_FUNCTION__.stack_is_empty = private unnamed_addr constant [43 x i8] c"_Bool stack_is_empty(const struct stack *)\00", align 1
@__PRETTY_FUNCTION__.stack_top = private unnamed_addr constant [37 x i8] c"int *stack_top(const struct stack *)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"s->len_cur > 0\00", align 1
@__PRETTY_FUNCTION__.stack_pop = private unnamed_addr constant [31 x i8] c"int *stack_pop(struct stack *)\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.stack* @stack_create() #0 {
entry:
  %s = alloca %struct.stack*, align 8
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.stack*
  store %struct.stack* %0, %struct.stack** %s, align 8
  %1 = load %struct.stack*, %struct.stack** %s, align 8
  %tobool = icmp ne %struct.stack* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.stack_create, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct.stack*, %struct.stack** %s, align 8
  %len_cur = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 0
  store i32 0, i32* %len_cur, align 8
  %3 = load %struct.stack*, %struct.stack** %s, align 8
  %len_max = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 1
  store i32 1, i32* %len_max, align 4
  %4 = load %struct.stack*, %struct.stack** %s, align 8
  %len_max1 = getelementptr inbounds %struct.stack, %struct.stack* %4, i32 0, i32 1
  %5 = load i32, i32* %len_max1, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 8
  %call2 = call noalias i8* @malloc(i64 %mul) #3
  %6 = bitcast i8* %call2 to i32**
  %7 = load %struct.stack*, %struct.stack** %s, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 2
  store i32** %6, i32*** %data, align 8
  %8 = load %struct.stack*, %struct.stack** %s, align 8
  %data3 = getelementptr inbounds %struct.stack, %struct.stack* %8, i32 0, i32 2
  %9 = load i32**, i32*** %data3, align 8
  %tobool4 = icmp ne i32** %9, null
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  br label %if.end7

if.else6:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.stack_create, i32 0, i32 0)) #4
  unreachable

if.end7:                                          ; preds = %if.then5
  %10 = load %struct.stack*, %struct.stack** %s, align 8
  ret %struct.stack* %10
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone
define void @stack_push(%struct.stack* %s, i32* %item) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  %item.addr = alloca i32*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  store i32* %item, i32** %item.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.stack_push, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load i32, i32* %len_cur, align 8
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_max = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 1
  %4 = load i32, i32* %len_max, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %5 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_max2 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 1
  %6 = load i32, i32* %len_max2, align 4
  %mul = mul nsw i32 %6, 2
  store i32 %mul, i32* %len_max2, align 4
  %7 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 2
  %8 = load i32**, i32*** %data, align 8
  %9 = bitcast i32** %8 to i8*
  %10 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_max3 = getelementptr inbounds %struct.stack, %struct.stack* %10, i32 0, i32 1
  %11 = load i32, i32* %len_max3, align 4
  %conv = sext i32 %11 to i64
  %mul4 = mul i64 %conv, 8
  %call = call i8* @realloc(i8* %9, i64 %mul4) #3
  %12 = bitcast i8* %call to i32**
  %13 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data5 = getelementptr inbounds %struct.stack, %struct.stack* %13, i32 0, i32 2
  store i32** %12, i32*** %data5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end
  %14 = load i32*, i32** %item.addr, align 8
  %15 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data7 = getelementptr inbounds %struct.stack, %struct.stack* %15, i32 0, i32 2
  %16 = load i32**, i32*** %data7, align 8
  %17 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur8 = getelementptr inbounds %struct.stack, %struct.stack* %17, i32 0, i32 0
  %18 = load i32, i32* %len_cur8, align 8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %16, i64 %idxprom
  store i32* %14, i32** %arrayidx, align 8
  %19 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur9 = getelementptr inbounds %struct.stack, %struct.stack* %19, i32 0, i32 0
  %20 = load i32, i32* %len_cur9, align 8
  %add = add nsw i32 %20, 1
  store i32 %add, i32* %len_cur9, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

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
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.stack_destroy, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 2
  %2 = load i32**, i32*** %data, align 8
  %3 = bitcast i32** %2 to i8*
  call void @free(i8* %3) #3
  %4 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %5 = bitcast %struct.stack* %4 to i8*
  call void @free(i8* %5) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

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
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.stack_is_empty, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load i32, i32* %len_cur, align 8
  %cmp = icmp eq i32 %2, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone
define i32* @stack_top(%struct.stack* %s) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.stack_top, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load i32, i32* %len_cur, align 8
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.stack_top, i32 0, i32 0)) #4
  unreachable

if.end3:                                          ; preds = %if.then1
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 2
  %4 = load i32**, i32*** %data, align 8
  %5 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur4 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 0
  %6 = load i32, i32* %len_cur4, align 8
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32*, i32** %4, i64 %idxprom
  %7 = load i32*, i32** %arrayidx, align 8
  ret i32* %7
}

; Function Attrs: noinline nounwind optnone
define i32* @stack_pop(%struct.stack* %s) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load i32, i32* %len_cur, align 8
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
  unreachable

if.end3:                                          ; preds = %if.then1
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur4 = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 0
  %4 = load i32, i32* %len_cur4, align 8
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %len_cur4, align 8
  %5 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 2
  %6 = load i32**, i32*** %data, align 8
  %7 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur5 = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 0
  %8 = load i32, i32* %len_cur5, align 8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %6, i64 %idxprom
  %9 = load i32*, i32** %arrayidx, align 8
  ret i32* %9
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
