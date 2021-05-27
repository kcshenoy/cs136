; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { [100 x i32], i32 }

@VALUE_MIN = constant i32 0, align 4
@VALUE_MAX = constant i32 2147483647, align 4
@.str = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A7/q1d-bucketsort/array_tools.c\00", align 1
@__PRETTY_FUNCTION__.array_create = private unnamed_addr constant [33 x i8] c"struct array *array_create(void)\00", align 1
@__PRETTY_FUNCTION__.array_destroy = private unnamed_addr constant [35 x i8] c"void array_destroy(struct array *)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"VALUE_MIN <= *p && *p <= VALUE_MAX\00", align 1
@__PRETTY_FUNCTION__.array_read = private unnamed_addr constant [31 x i8] c"struct array *array_read(void)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@__PRETTY_FUNCTION__.array_append_value = private unnamed_addr constant [45 x i8] c"void array_append_value(struct array *, int)\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"destination->data_len + 1 <= MAX_LEN\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"VALUE_MIN <= value && value <= VALUE_MAX\00", align 1
@__PRETTY_FUNCTION__.array_append_array = private unnamed_addr constant [62 x i8] c"void array_append_array(struct array *, const struct array *)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"arr->data_len + source->data_len <= MAX_LEN\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"VALUE_MIN <= *pS && *pS <= VALUE_MAX\00", align 1
@__PRETTY_FUNCTION__.array_clear = private unnamed_addr constant [33 x i8] c"void array_clear(struct array *)\00", align 1
@__PRETTY_FUNCTION__.array_print = private unnamed_addr constant [39 x i8] c"void array_print(const struct array *)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"[]\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"[%d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.array* @array_create() #0 {
entry:
  %arr = alloca %struct.array*, align 8
  %call = call noalias i8* @malloc(i64 404) #4
  %0 = bitcast i8* %call to %struct.array*
  store %struct.array* %0, %struct.array** %arr, align 8
  %1 = load %struct.array*, %struct.array** %arr, align 8
  %tobool = icmp ne %struct.array* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.array_create, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct.array*, %struct.array** %arr, align 8
  %data_len = getelementptr inbounds %struct.array, %struct.array* %2, i32 0, i32 1
  store i32 0, i32* %data_len, align 4
  %3 = load %struct.array*, %struct.array** %arr, align 8
  ret %struct.array* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone
define void @array_destroy(%struct.array* %arr) #0 {
entry:
  %arr.addr = alloca %struct.array*, align 8
  store %struct.array* %arr, %struct.array** %arr.addr, align 8
  %0 = load %struct.array*, %struct.array** %arr.addr, align 8
  %tobool = icmp ne %struct.array* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.array_destroy, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.array*, %struct.array** %arr.addr, align 8
  %2 = bitcast %struct.array* %1 to i8*
  call void @free(i8* %2) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone
define %struct.array* @array_read() #0 {
entry:
  %arr = alloca %struct.array*, align 8
  %p = alloca i32*, align 8
  %call = call %struct.array* @array_create()
  store %struct.array* %call, %struct.array** %arr, align 8
  %0 = load %struct.array*, %struct.array** %arr, align 8
  %data = getelementptr inbounds %struct.array, %struct.array* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %data, i32 0, i32 0
  store i32* %arraydecay, i32** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.array*, %struct.array** %arr, align 8
  %data_len = getelementptr inbounds %struct.array, %struct.array* %1, i32 0, i32 1
  %2 = load i32, i32* %data_len, align 4
  %cmp = icmp slt i32 %2, 100
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32*, i32** %p, align 8
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %3)
  %cmp2 = icmp eq i32 %call1, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32*, i32** %p, align 8
  %6 = load i32, i32* %5, align 4
  %cmp3 = icmp sle i32 0, %6
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %7 = load i32*, i32** %p, align 8
  %8 = load i32, i32* %7, align 4
  %cmp4 = icmp sle i32 %8, 2147483647
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.array_read, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %9 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  %10 = load %struct.array*, %struct.array** %arr, align 8
  %data_len5 = getelementptr inbounds %struct.array, %struct.array* %10, i32 0, i32 1
  %11 = load i32, i32* %data_len5, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %data_len5, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.array*, %struct.array** %arr, align 8
  ret %struct.array* %12
}

declare i32 @__isoc99_scanf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone
define void @array_append_value(%struct.array* %destination, i32 %value) #0 {
entry:
  %destination.addr = alloca %struct.array*, align 8
  %value.addr = alloca i32, align 4
  store %struct.array* %destination, %struct.array** %destination.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.array*, %struct.array** %destination.addr, align 8
  %tobool = icmp ne %struct.array* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.array_append_value, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.array*, %struct.array** %destination.addr, align 8
  %data_len = getelementptr inbounds %struct.array, %struct.array* %1, i32 0, i32 1
  %2 = load i32, i32* %data_len, align 4
  %add = add nsw i32 %2, 1
  %cmp = icmp sle i32 %add, 100
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.array_append_value, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %3 = load i32, i32* %value.addr, align 4
  %cmp4 = icmp sle i32 0, %3
  br i1 %cmp4, label %land.lhs.true, label %if.else7

land.lhs.true:                                    ; preds = %if.end3
  %4 = load i32, i32* %value.addr, align 4
  %cmp5 = icmp sle i32 %4, 2147483647
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %land.lhs.true
  br label %if.end8

if.else7:                                         ; preds = %land.lhs.true, %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.array_append_value, i32 0, i32 0)) #5
  unreachable

if.end8:                                          ; preds = %if.then6
  %5 = load i32, i32* %value.addr, align 4
  %6 = load %struct.array*, %struct.array** %destination.addr, align 8
  %data = getelementptr inbounds %struct.array, %struct.array* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %data, i32 0, i32 0
  %7 = load %struct.array*, %struct.array** %destination.addr, align 8
  %data_len9 = getelementptr inbounds %struct.array, %struct.array* %7, i32 0, i32 1
  %8 = load i32, i32* %data_len9, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 %idx.ext
  store i32 %5, i32* %add.ptr, align 4
  %9 = load %struct.array*, %struct.array** %destination.addr, align 8
  %data_len10 = getelementptr inbounds %struct.array, %struct.array* %9, i32 0, i32 1
  %10 = load i32, i32* %data_len10, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %data_len10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @array_append_array(%struct.array* %arr, %struct.array* %source) #0 {
entry:
  %arr.addr = alloca %struct.array*, align 8
  %source.addr = alloca %struct.array*, align 8
  %pS = alloca i32*, align 8
  %pD = alloca i32*, align 8
  store %struct.array* %arr, %struct.array** %arr.addr, align 8
  store %struct.array* %source, %struct.array** %source.addr, align 8
  %0 = load %struct.array*, %struct.array** %arr.addr, align 8
  %tobool = icmp ne %struct.array* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 48, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.array_append_array, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.array*, %struct.array** %source.addr, align 8
  %tobool1 = icmp ne %struct.array* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.array_append_array, i32 0, i32 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data_len = getelementptr inbounds %struct.array, %struct.array* %2, i32 0, i32 1
  %3 = load i32, i32* %data_len, align 4
  %4 = load %struct.array*, %struct.array** %source.addr, align 8
  %data_len5 = getelementptr inbounds %struct.array, %struct.array* %4, i32 0, i32 1
  %5 = load i32, i32* %data_len5, align 4
  %add = add nsw i32 %3, %5
  %cmp = icmp sle i32 %add, 100
  br i1 %cmp, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.array_append_array, i32 0, i32 0)) #5
  unreachable

if.end8:                                          ; preds = %if.then6
  %6 = load %struct.array*, %struct.array** %source.addr, align 8
  %data = getelementptr inbounds %struct.array, %struct.array* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %data, i32 0, i32 0
  store i32* %arraydecay, i32** %pS, align 8
  %7 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data9 = getelementptr inbounds %struct.array, %struct.array* %7, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [100 x i32], [100 x i32]* %data9, i32 0, i32 0
  %8 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data_len11 = getelementptr inbounds %struct.array, %struct.array* %8, i32 0, i32 1
  %9 = load i32, i32* %data_len11, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay10, i64 %idx.ext
  store i32* %add.ptr, i32** %pD, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %10 = load i32*, i32** %pD, align 8
  %11 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data12 = getelementptr inbounds %struct.array, %struct.array* %11, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [100 x i32], [100 x i32]* %data12, i32 0, i32 0
  %12 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data_len14 = getelementptr inbounds %struct.array, %struct.array* %12, i32 0, i32 1
  %13 = load i32, i32* %data_len14, align 4
  %idx.ext15 = sext i32 %13 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %arraydecay13, i64 %idx.ext15
  %14 = load %struct.array*, %struct.array** %source.addr, align 8
  %data_len17 = getelementptr inbounds %struct.array, %struct.array* %14, i32 0, i32 1
  %15 = load i32, i32* %data_len17, align 4
  %idx.ext18 = sext i32 %15 to i64
  %add.ptr19 = getelementptr inbounds i32, i32* %add.ptr16, i64 %idx.ext18
  %cmp20 = icmp ult i32* %10, %add.ptr19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32*, i32** %pS, align 8
  %17 = load i32, i32* %16, align 4
  %cmp21 = icmp sle i32 0, %17
  br i1 %cmp21, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %for.body
  %18 = load i32*, i32** %pS, align 8
  %19 = load i32, i32* %18, align 4
  %cmp22 = icmp sle i32 %19, 2147483647
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %land.lhs.true
  br label %if.end25

if.else24:                                        ; preds = %land.lhs.true, %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.array_append_array, i32 0, i32 0)) #5
  unreachable

if.end25:                                         ; preds = %if.then23
  %20 = load i32*, i32** %pS, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %pD, align 8
  store i32 %21, i32* %22, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %23 = load i32*, i32** %pD, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr, i32** %pD, align 8
  %24 = load i32*, i32** %pS, align 8
  %incdec.ptr26 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr26, i32** %pS, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.array*, %struct.array** %source.addr, align 8
  %data_len27 = getelementptr inbounds %struct.array, %struct.array* %25, i32 0, i32 1
  %26 = load i32, i32* %data_len27, align 4
  %27 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data_len28 = getelementptr inbounds %struct.array, %struct.array* %27, i32 0, i32 1
  %28 = load i32, i32* %data_len28, align 4
  %add29 = add nsw i32 %28, %26
  store i32 %add29, i32* %data_len28, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @array_clear(%struct.array* %arr) #0 {
entry:
  %arr.addr = alloca %struct.array*, align 8
  store %struct.array* %arr, %struct.array** %arr.addr, align 8
  %0 = load %struct.array*, %struct.array** %arr.addr, align 8
  %tobool = icmp ne %struct.array* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.array_clear, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data_len = getelementptr inbounds %struct.array, %struct.array* %1, i32 0, i32 1
  store i32 0, i32* %data_len, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @array_print(%struct.array* %arr) #0 {
entry:
  %arr.addr = alloca %struct.array*, align 8
  %p = alloca i32*, align 8
  store %struct.array* %arr, %struct.array** %arr.addr, align 8
  %0 = load %struct.array*, %struct.array** %arr.addr, align 8
  %tobool = icmp ne %struct.array* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.array_print, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data_len = getelementptr inbounds %struct.array, %struct.array* %1, i32 0, i32 1
  %2 = load i32, i32* %data_len, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end11

if.else2:                                         ; preds = %if.end
  %3 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data = getelementptr inbounds %struct.array, %struct.array* %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %data, i32 0, i32 0
  store i32* %arraydecay, i32** %p, align 8
  %4 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  %5 = load i32, i32* %4, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %5)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else2
  %6 = load i32*, i32** %p, align 8
  %7 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data4 = getelementptr inbounds %struct.array, %struct.array* %7, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [100 x i32], [100 x i32]* %data4, i32 0, i32 0
  %8 = load %struct.array*, %struct.array** %arr.addr, align 8
  %data_len6 = getelementptr inbounds %struct.array, %struct.array* %8, i32 0, i32 1
  %9 = load i32, i32* %data_len6, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay5, i64 %idx.ext
  %cmp7 = icmp ult i32* %6, %add.ptr
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %p, align 8
  %11 = load i32, i32* %10, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32*, i32** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr9, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then1
  ret void
}

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
