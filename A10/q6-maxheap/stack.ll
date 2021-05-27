; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, i32, i8**, i64 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A10/q6-maxheap/stack.c\00", align 1
@__PRETTY_FUNCTION__.stack_create = private unnamed_addr constant [35 x i8] c"struct stack *stack_create(size_t)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"s->data\00", align 1
@__PRETTY_FUNCTION__.stack_push = private unnamed_addr constant [40 x i8] c"void stack_push(struct stack *, void *)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@__PRETTY_FUNCTION__.stack_destroy = private unnamed_addr constant [35 x i8] c"void stack_destroy(struct stack *)\00", align 1
@__PRETTY_FUNCTION__.stack_is_empty = private unnamed_addr constant [43 x i8] c"_Bool stack_is_empty(const struct stack *)\00", align 1
@__PRETTY_FUNCTION__.stack_top = private unnamed_addr constant [38 x i8] c"void *stack_top(const struct stack *)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"s->len_cur > 0\00", align 1
@__PRETTY_FUNCTION__.stack_pop = private unnamed_addr constant [32 x i8] c"void *stack_pop(struct stack *)\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.stack* @stack_create(i64 %data_size) #0 {
entry:
  %data_size.addr = alloca i64, align 8
  %s = alloca %struct.stack*, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %call = call noalias i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.stack*
  store %struct.stack* %0, %struct.stack** %s, align 8
  %1 = load %struct.stack*, %struct.stack** %s, align 8
  %tobool = icmp ne %struct.stack* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.stack_create, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct.stack*, %struct.stack** %s, align 8
  %len_cur = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 0
  store i32 0, i32* %len_cur, align 8
  %3 = load %struct.stack*, %struct.stack** %s, align 8
  %len_max = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 1
  store i32 1, i32* %len_max, align 4
  %4 = load i64, i64* %data_size.addr, align 8
  %5 = load %struct.stack*, %struct.stack** %s, align 8
  %data_size1 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 3
  store i64 %4, i64* %data_size1, align 8
  %6 = load %struct.stack*, %struct.stack** %s, align 8
  %len_max2 = getelementptr inbounds %struct.stack, %struct.stack* %6, i32 0, i32 1
  %7 = load i32, i32* %len_max2, align 4
  %conv = sext i32 %7 to i64
  %8 = load %struct.stack*, %struct.stack** %s, align 8
  %data_size3 = getelementptr inbounds %struct.stack, %struct.stack* %8, i32 0, i32 3
  %9 = load i64, i64* %data_size3, align 8
  %mul = mul i64 %conv, %9
  %call4 = call noalias i8* @malloc(i64 %mul) #3
  %10 = bitcast i8* %call4 to i8**
  %11 = load %struct.stack*, %struct.stack** %s, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %11, i32 0, i32 2
  store i8** %10, i8*** %data, align 8
  %12 = load %struct.stack*, %struct.stack** %s, align 8
  %data5 = getelementptr inbounds %struct.stack, %struct.stack* %12, i32 0, i32 2
  %13 = load i8**, i8*** %data5, align 8
  %tobool6 = icmp ne i8** %13, null
  br i1 %tobool6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.end
  br label %if.end9

if.else8:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.stack_create, i32 0, i32 0)) #4
  unreachable

if.end9:                                          ; preds = %if.then7
  %14 = load %struct.stack*, %struct.stack** %s, align 8
  ret %struct.stack* %14
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

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
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.stack_push, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %item.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.stack_push, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 0
  %3 = load i32, i32* %len_cur, align 8
  %4 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_max = getelementptr inbounds %struct.stack, %struct.stack* %4, i32 0, i32 1
  %5 = load i32, i32* %len_max, align 4
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end4
  %6 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_max6 = getelementptr inbounds %struct.stack, %struct.stack* %6, i32 0, i32 1
  %7 = load i32, i32* %len_max6, align 4
  %mul = mul nsw i32 %7, 2
  store i32 %mul, i32* %len_max6, align 4
  %8 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %8, i32 0, i32 2
  %9 = load i8**, i8*** %data, align 8
  %10 = bitcast i8** %9 to i8*
  %11 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_max7 = getelementptr inbounds %struct.stack, %struct.stack* %11, i32 0, i32 1
  %12 = load i32, i32* %len_max7, align 4
  %conv = sext i32 %12 to i64
  %13 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data_size = getelementptr inbounds %struct.stack, %struct.stack* %13, i32 0, i32 3
  %14 = load i64, i64* %data_size, align 8
  %mul8 = mul i64 %conv, %14
  %call = call i8* @realloc(i8* %10, i64 %mul8) #3
  %15 = bitcast i8* %call to i8**
  %16 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data9 = getelementptr inbounds %struct.stack, %struct.stack* %16, i32 0, i32 2
  store i8** %15, i8*** %data9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end4
  %17 = load i8*, i8** %item.addr, align 8
  %18 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data11 = getelementptr inbounds %struct.stack, %struct.stack* %18, i32 0, i32 2
  %19 = load i8**, i8*** %data11, align 8
  %20 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur12 = getelementptr inbounds %struct.stack, %struct.stack* %20, i32 0, i32 0
  %21 = load i32, i32* %len_cur12, align 8
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  store i8* %17, i8** %arrayidx, align 8
  %22 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur13 = getelementptr inbounds %struct.stack, %struct.stack* %22, i32 0, i32 0
  %23 = load i32, i32* %len_cur13, align 8
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %len_cur13, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.stack_destroy, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 2
  %2 = load i8**, i8*** %data, align 8
  %3 = bitcast i8** %2 to i8*
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
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.stack_is_empty, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load i32, i32* %len_cur, align 8
  %cmp = icmp eq i32 %2, 0
  ret i1 %cmp
}

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
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.stack_top, i32 0, i32 0)) #4
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
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.stack_top, i32 0, i32 0)) #4
  unreachable

if.end3:                                          ; preds = %if.then1
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 2
  %4 = load i8**, i8*** %data, align 8
  %5 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur4 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 0
  %6 = load i32, i32* %len_cur4, align 8
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  ret i8* %7
}

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
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
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
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
  unreachable

if.end3:                                          ; preds = %if.then1
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur4 = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 0
  %4 = load i32, i32* %len_cur4, align 8
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %len_cur4, align 8
  %5 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 2
  %6 = load i8**, i8*** %data, align 8
  %7 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %len_cur5 = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 0
  %8 = load i32, i32* %len_cur5, align 8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  ret i8* %9
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
