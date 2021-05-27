; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, i32, i32* }

@s = global %struct.stack* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"s == 0\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"/u2/areetz/.seashell/projects/Draft-A1/q4-testing/stack.c\00", align 1
@__PRETTY_FUNCTION__.stack_create = private unnamed_addr constant [24 x i8] c"void stack_create(void)\00", align 1
@push_count = internal global i32 0, align 4
@pop_count = internal global i32 0, align 4
@PUSH_BUG_VALUE = internal global i32 2147483647, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@__PRETTY_FUNCTION__.stack_push = private unnamed_addr constant [21 x i8] c"void stack_push(int)\00", align 1
@__PRETTY_FUNCTION__.stack_destroy = private unnamed_addr constant [25 x i8] c"void stack_destroy(void)\00", align 1
@__PRETTY_FUNCTION__.stack_is_empty = private unnamed_addr constant [27 x i8] c"_Bool stack_is_empty(void)\00", align 1
@ISEMPTY_BUG_VALUE = internal global i32 0, align 4
@__PRETTY_FUNCTION__.stack_count = private unnamed_addr constant [22 x i8] c"int stack_count(void)\00", align 1
@COUNT_BUG_VALUE = internal global i32 0, align 4
@__PRETTY_FUNCTION__.stack_top = private unnamed_addr constant [20 x i8] c"int stack_top(void)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"s->len\00", align 1
@__PRETTY_FUNCTION__.stack_pop = private unnamed_addr constant [20 x i8] c"int stack_pop(void)\00", align 1
@POP_BUG_VALUE = internal global i32 2147483647, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"!stack_is_empty()\00", align 1
@__PRETTY_FUNCTION__.stack_reset = private unnamed_addr constant [23 x i8] c"void stack_reset(void)\00", align 1
@RESET_BUG_VALUE = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"stack_is_empty()\00", align 1
@__PRETTY_FUNCTION__.stack_bug_on = private unnamed_addr constant [23 x i8] c"void stack_bug_on(int)\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Trying to set unknown bug type = %d\0A\00", align 1
@__PRETTY_FUNCTION__.stack_bugs_off = private unnamed_addr constant [26 x i8] c"void stack_bugs_off(void)\00", align 1

; Function Attrs: noinline nounwind optnone
define void @stack_create() #0 {
entry:
  %0 = load %struct.stack*, %struct.stack** @s, align 8
  %cmp = icmp eq %struct.stack* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.stack_create, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* @push_count, align 4
  store i32 0, i32* @pop_count, align 4
  %call = call noalias i8* @malloc(i64 16) #5
  %1 = bitcast i8* %call to %struct.stack*
  store %struct.stack* %1, %struct.stack** @s, align 8
  %2 = load %struct.stack*, %struct.stack** @s, align 8
  %len = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 0
  store i32 0, i32* %len, align 8
  %3 = load %struct.stack*, %struct.stack** @s, align 8
  %maxlen = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 1
  store i32 1, i32* %maxlen, align 4
  %4 = load %struct.stack*, %struct.stack** @s, align 8
  %maxlen1 = getelementptr inbounds %struct.stack, %struct.stack* %4, i32 0, i32 1
  %5 = load i32, i32* %maxlen1, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 4
  %call2 = call noalias i8* @malloc(i64 %mul) #5
  %6 = bitcast i8* %call2 to i32*
  %7 = load %struct.stack*, %struct.stack** @s, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 2
  store i32* %6, i32** %data, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone
define void @stack_push(i32 %item) #0 {
entry:
  %item.addr = alloca i32, align 4
  store i32 %item, i32* %item.addr, align 4
  %0 = load i32, i32* @push_count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @push_count, align 4
  %1 = load i32, i32* @push_count, align 4
  %2 = load i32, i32* @PUSH_BUG_VALUE, align 4
  %rem = srem i32 %1, %2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @push_count, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stack*, %struct.stack** @s, align 8
  %tobool = icmp ne %struct.stack* %3, null
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.stack_push, i32 0, i32 0)) #4
  unreachable

if.end2:                                          ; preds = %if.then1
  %4 = load %struct.stack*, %struct.stack** @s, align 8
  %len = getelementptr inbounds %struct.stack, %struct.stack* %4, i32 0, i32 0
  %5 = load i32, i32* %len, align 8
  %6 = load %struct.stack*, %struct.stack** @s, align 8
  %maxlen = getelementptr inbounds %struct.stack, %struct.stack* %6, i32 0, i32 1
  %7 = load i32, i32* %maxlen, align 4
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end2
  %8 = load %struct.stack*, %struct.stack** @s, align 8
  %maxlen5 = getelementptr inbounds %struct.stack, %struct.stack* %8, i32 0, i32 1
  %9 = load i32, i32* %maxlen5, align 4
  %mul = mul nsw i32 %9, 2
  store i32 %mul, i32* %maxlen5, align 4
  %10 = load %struct.stack*, %struct.stack** @s, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %10, i32 0, i32 2
  %11 = load i32*, i32** %data, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = load %struct.stack*, %struct.stack** @s, align 8
  %maxlen6 = getelementptr inbounds %struct.stack, %struct.stack* %13, i32 0, i32 1
  %14 = load i32, i32* %maxlen6, align 4
  %conv = sext i32 %14 to i64
  %mul7 = mul i64 %conv, 4
  %call = call i8* @realloc(i8* %12, i64 %mul7) #5
  %15 = bitcast i8* %call to i32*
  %16 = load %struct.stack*, %struct.stack** @s, align 8
  %data8 = getelementptr inbounds %struct.stack, %struct.stack* %16, i32 0, i32 2
  store i32* %15, i32** %data8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end2
  %17 = load i32, i32* %item.addr, align 4
  %18 = load %struct.stack*, %struct.stack** @s, align 8
  %data10 = getelementptr inbounds %struct.stack, %struct.stack* %18, i32 0, i32 2
  %19 = load i32*, i32** %data10, align 8
  %20 = load %struct.stack*, %struct.stack** @s, align 8
  %len11 = getelementptr inbounds %struct.stack, %struct.stack* %20, i32 0, i32 0
  %21 = load i32, i32* %len11, align 8
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 %17, i32* %arrayidx, align 4
  %22 = load %struct.stack*, %struct.stack** @s, align 8
  %len12 = getelementptr inbounds %struct.stack, %struct.stack* %22, i32 0, i32 0
  %23 = load i32, i32* %len12, align 8
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %len12, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind optnone
define void @stack_destroy() #0 {
entry:
  %0 = load %struct.stack*, %struct.stack** @s, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.stack_destroy, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** @s, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 2
  %2 = load i32*, i32** %data, align 8
  %3 = bitcast i32* %2 to i8*
  call void @free(i8* %3) #5
  %4 = load %struct.stack*, %struct.stack** @s, align 8
  %5 = bitcast %struct.stack* %4 to i8*
  call void @free(i8* %5) #5
  store %struct.stack* null, %struct.stack** @s, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define zeroext i1 @stack_is_empty() #0 {
entry:
  %retval = alloca i1, align 1
  %0 = load %struct.stack*, %struct.stack** @s, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.stack_is_empty, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* @ISEMPTY_BUG_VALUE, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  %2 = load %struct.stack*, %struct.stack** @s, align 8
  %len = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 0
  %3 = load i32, i32* %len, align 8
  %cmp = icmp eq i32 %3, 0
  %lnot = xor i1 %cmp, true
  store i1 %lnot, i1* %retval, align 1
  br label %return

if.else3:                                         ; preds = %if.end
  %call = call i32 @stack_count()
  %cmp4 = icmp eq i32 %call, 0
  store i1 %cmp4, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else3, %if.then2
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone
define i32 @stack_count() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.stack*, %struct.stack** @s, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.stack_count, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* @COUNT_BUG_VALUE, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load %struct.stack*, %struct.stack** @s, align 8
  %len = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 0
  %3 = load i32, i32* %len, align 8
  store i32 %3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then1
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define i32 @stack_top() #0 {
entry:
  %0 = load %struct.stack*, %struct.stack** @s, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.stack_top, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.stack*, %struct.stack** @s, align 8
  %len = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  %2 = load i32, i32* %len, align 8
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.stack_top, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.stack*, %struct.stack** @s, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 2
  %4 = load i32*, i32** %data, align 8
  %5 = load %struct.stack*, %struct.stack** @s, align 8
  %len5 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 0
  %6 = load i32, i32* %len5, align 8
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone
define i32 @stack_pop() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.stack*, %struct.stack** @s, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* @pop_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @pop_count, align 4
  %2 = load i32, i32* @pop_count, align 4
  %3 = load i32, i32* @POP_BUG_VALUE, align 4
  %rem = srem i32 %2, %3
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, i32* @pop_count, align 4
  %4 = load %struct.stack*, %struct.stack** @s, align 8
  %data = getelementptr inbounds %struct.stack, %struct.stack* %4, i32 0, i32 2
  %5 = load i32*, i32** %data, align 8
  %6 = load %struct.stack*, %struct.stack** @s, align 8
  %len = getelementptr inbounds %struct.stack, %struct.stack* %6, i32 0, i32 0
  %7 = load i32, i32* %len, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %call = call zeroext i1 @stack_is_empty()
  br i1 %call, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.end2
  br label %if.end5

if.else4:                                         ; preds = %if.end2
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
  unreachable

if.end5:                                          ; preds = %if.then3
  %9 = load %struct.stack*, %struct.stack** @s, align 8
  %len6 = getelementptr inbounds %struct.stack, %struct.stack* %9, i32 0, i32 0
  %10 = load i32, i32* %len6, align 8
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end5
  br label %if.end10

if.else9:                                         ; preds = %if.end5
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.stack_pop, i32 0, i32 0)) #4
  unreachable

if.end10:                                         ; preds = %if.then8
  %11 = load %struct.stack*, %struct.stack** @s, align 8
  %len11 = getelementptr inbounds %struct.stack, %struct.stack* %11, i32 0, i32 0
  %12 = load i32, i32* %len11, align 8
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %len11, align 8
  %13 = load %struct.stack*, %struct.stack** @s, align 8
  %data12 = getelementptr inbounds %struct.stack, %struct.stack* %13, i32 0, i32 2
  %14 = load i32*, i32** %data12, align 8
  %15 = load %struct.stack*, %struct.stack** @s, align 8
  %len13 = getelementptr inbounds %struct.stack, %struct.stack* %15, i32 0, i32 0
  %16 = load i32, i32* %len13, align 8
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %14, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then1
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone
define void @stack_reset() #0 {
entry:
  %0 = load %struct.stack*, %struct.stack** @s, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.stack_reset, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* @RESET_BUG_VALUE, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @stack_destroy()
  call void @stack_create()
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @stack_bug_on(i32 %bug) #0 {
entry:
  %bug.addr = alloca i32, align 4
  store i32 %bug, i32* %bug.addr, align 4
  %call = call zeroext i1 @stack_is_empty()
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.stack_bug_on, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %0 = load i32, i32* %bug.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  store i32 3, i32* @PUSH_BUG_VALUE, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  store i32 1, i32* @ISEMPTY_BUG_VALUE, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store i32 4, i32* @POP_BUG_VALUE, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  store i32 1, i32* @RESET_BUG_VALUE, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  store i32 1, i32* @COUNT_BUG_VALUE, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %1 = load i32, i32* %bug.addr, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 %1)
  call void @exit(i32 1) #4
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

; Function Attrs: noinline nounwind optnone
define void @stack_bugs_off() #0 {
entry:
  %call = call zeroext i1 @stack_is_empty()
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.stack_bugs_off, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  store i32 2147483647, i32* @PUSH_BUG_VALUE, align 4
  store i32 2147483647, i32* @POP_BUG_VALUE, align 4
  store i32 0, i32* @ISEMPTY_BUG_VALUE, align 4
  store i32 0, i32* @RESET_BUG_VALUE, align 4
  store i32 0, i32* @COUNT_BUG_VALUE, align 4
  ret void
}

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
