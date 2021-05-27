; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32, i32, i32, i8** }

@.str = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A10/q6-maxheap/queue.c\00", align 1
@__PRETTY_FUNCTION__.queue_create = private unnamed_addr constant [29 x i8] c"struct queue *queue_create()\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"q->data\00", align 1
@__PRETTY_FUNCTION__.queue_enqueue = private unnamed_addr constant [43 x i8] c"void queue_enqueue(struct queue *, void *)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@__PRETTY_FUNCTION__.queue_destroy = private unnamed_addr constant [35 x i8] c"void queue_destroy(struct queue *)\00", align 1
@__PRETTY_FUNCTION__.queue_is_empty = private unnamed_addr constant [43 x i8] c"_Bool queue_is_empty(const struct queue *)\00", align 1
@__PRETTY_FUNCTION__.queue_front = private unnamed_addr constant [40 x i8] c"void *queue_front(const struct queue *)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"q->pos_last > q->pos_first\00", align 1
@__PRETTY_FUNCTION__.queue_dequeue = private unnamed_addr constant [36 x i8] c"void *queue_dequeue(struct queue *)\00", align 1
@__PRETTY_FUNCTION__.queue_print = private unnamed_addr constant [51 x i8] c"void queue_print(struct queue *, void (*)(void *))\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"[FRONT -> \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"BACK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.queue* @queue_create() #0 {
entry:
  %q = alloca %struct.queue*, align 8
  %call = call noalias i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.queue*
  store %struct.queue* %0, %struct.queue** %q, align 8
  %1 = load %struct.queue*, %struct.queue** %q, align 8
  %tobool = icmp ne %struct.queue* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.queue_create, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct.queue*, %struct.queue** %q, align 8
  %pos_first = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 0
  store i32 0, i32* %pos_first, align 8
  %3 = load %struct.queue*, %struct.queue** %q, align 8
  %pos_last = getelementptr inbounds %struct.queue, %struct.queue* %3, i32 0, i32 1
  store i32 0, i32* %pos_last, align 4
  %4 = load %struct.queue*, %struct.queue** %q, align 8
  %len_max = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 2
  store i32 1, i32* %len_max, align 8
  %5 = load %struct.queue*, %struct.queue** %q, align 8
  %len_max1 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 2
  %6 = load i32, i32* %len_max1, align 8
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call2 = call noalias i8* @malloc(i64 %mul) #4
  %7 = bitcast i8* %call2 to i8**
  %8 = load %struct.queue*, %struct.queue** %q, align 8
  %data = getelementptr inbounds %struct.queue, %struct.queue* %8, i32 0, i32 3
  store i8** %7, i8*** %data, align 8
  %9 = load %struct.queue*, %struct.queue** %q, align 8
  %data3 = getelementptr inbounds %struct.queue, %struct.queue* %9, i32 0, i32 3
  %10 = load i8**, i8*** %data3, align 8
  %tobool4 = icmp ne i8** %10, null
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  br label %if.end7

if.else6:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.queue_create, i32 0, i32 0)) #5
  unreachable

if.end7:                                          ; preds = %if.then5
  %11 = load %struct.queue*, %struct.queue** %q, align 8
  ret %struct.queue* %11
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone
define void @queue_enqueue(%struct.queue* %q, i8* %item) #0 {
entry:
  %q.addr = alloca %struct.queue*, align 8
  %item.addr = alloca i8*, align 8
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tobool = icmp ne %struct.queue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.queue_enqueue, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %item.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.queue_enqueue, i32 0, i32 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_last = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 1
  %3 = load i32, i32* %pos_last, align 4
  %4 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %len_max = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 2
  %5 = load i32, i32* %len_max, align 8
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end4
  %6 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %len_max6 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 2
  %7 = load i32, i32* %len_max6, align 8
  %mul = mul nsw i32 %7, 2
  store i32 %mul, i32* %len_max6, align 8
  %8 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %data = getelementptr inbounds %struct.queue, %struct.queue* %8, i32 0, i32 3
  %9 = load i8**, i8*** %data, align 8
  %10 = bitcast i8** %9 to i8*
  %11 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %len_max7 = getelementptr inbounds %struct.queue, %struct.queue* %11, i32 0, i32 2
  %12 = load i32, i32* %len_max7, align 8
  %conv = sext i32 %12 to i64
  %mul8 = mul i64 %conv, 8
  %call = call i8* @realloc(i8* %10, i64 %mul8) #4
  %13 = bitcast i8* %call to i8**
  %14 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %data9 = getelementptr inbounds %struct.queue, %struct.queue* %14, i32 0, i32 3
  store i8** %13, i8*** %data9, align 8
  %15 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %data10 = getelementptr inbounds %struct.queue, %struct.queue* %15, i32 0, i32 3
  %16 = load i8**, i8*** %data10, align 8
  %tobool11 = icmp ne i8** %16, null
  br i1 %tobool11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then5
  br label %if.end14

if.else13:                                        ; preds = %if.then5
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.queue_enqueue, i32 0, i32 0)) #5
  unreachable

if.end14:                                         ; preds = %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end4
  %17 = load i8*, i8** %item.addr, align 8
  %18 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %data16 = getelementptr inbounds %struct.queue, %struct.queue* %18, i32 0, i32 3
  %19 = load i8**, i8*** %data16, align 8
  %20 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_last17 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 1
  %21 = load i32, i32* %pos_last17, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  store i8* %17, i8** %arrayidx, align 8
  %22 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_last18 = getelementptr inbounds %struct.queue, %struct.queue* %22, i32 0, i32 1
  %23 = load i32, i32* %pos_last18, align 4
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %pos_last18, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone
define void @queue_destroy(%struct.queue* %q) #0 {
entry:
  %q.addr = alloca %struct.queue*, align 8
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  %0 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tobool = icmp ne %struct.queue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.queue_destroy, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %data = getelementptr inbounds %struct.queue, %struct.queue* %1, i32 0, i32 3
  %2 = load i8**, i8*** %data, align 8
  %3 = bitcast i8** %2 to i8*
  call void @free(i8* %3) #4
  %4 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %5 = bitcast %struct.queue* %4 to i8*
  call void @free(i8* %5) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone
define zeroext i1 @queue_is_empty(%struct.queue* %q) #0 {
entry:
  %q.addr = alloca %struct.queue*, align 8
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  %0 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tobool = icmp ne %struct.queue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.queue_is_empty, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_last = getelementptr inbounds %struct.queue, %struct.queue* %1, i32 0, i32 1
  %2 = load i32, i32* %pos_last, align 4
  %3 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_first = getelementptr inbounds %struct.queue, %struct.queue* %3, i32 0, i32 0
  %4 = load i32, i32* %pos_first, align 8
  %cmp = icmp eq i32 %2, %4
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone
define i8* @queue_front(%struct.queue* %q) #0 {
entry:
  %q.addr = alloca %struct.queue*, align 8
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  %0 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tobool = icmp ne %struct.queue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.queue_front, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_last = getelementptr inbounds %struct.queue, %struct.queue* %1, i32 0, i32 1
  %2 = load i32, i32* %pos_last, align 4
  %3 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_first = getelementptr inbounds %struct.queue, %struct.queue* %3, i32 0, i32 0
  %4 = load i32, i32* %pos_first, align 8
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.queue_front, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %5 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %data = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 3
  %6 = load i8**, i8*** %data, align 8
  %7 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_first4 = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 0
  %8 = load i32, i32* %pos_first4, align 8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone
define i8* @queue_dequeue(%struct.queue* %q) #0 {
entry:
  %q.addr = alloca %struct.queue*, align 8
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  %0 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tobool = icmp ne %struct.queue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.queue_dequeue, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_last = getelementptr inbounds %struct.queue, %struct.queue* %1, i32 0, i32 1
  %2 = load i32, i32* %pos_last, align 4
  %3 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_first = getelementptr inbounds %struct.queue, %struct.queue* %3, i32 0, i32 0
  %4 = load i32, i32* %pos_first, align 8
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.queue_dequeue, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %5 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_first4 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 0
  %6 = load i32, i32* %pos_first4, align 8
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %pos_first4, align 8
  %7 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %data = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 3
  %8 = load i8**, i8*** %data, align 8
  %9 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_first5 = getelementptr inbounds %struct.queue, %struct.queue* %9, i32 0, i32 0
  %10 = load i32, i32* %pos_first5, align 8
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone
define void @queue_print(%struct.queue* %q, void (i8*)* %prnt) #0 {
entry:
  %q.addr = alloca %struct.queue*, align 8
  %prnt.addr = alloca void (i8*)*, align 8
  %i = alloca i32, align 4
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  store void (i8*)* %prnt, void (i8*)** %prnt.addr, align 8
  %0 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tobool = icmp ne %struct.queue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.queue_print, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %1 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_first = getelementptr inbounds %struct.queue, %struct.queue* %1, i32 0, i32 0
  %2 = load i32, i32* %pos_first, align 8
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %pos_last = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 1
  %5 = load i32, i32* %pos_last, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load void (i8*)*, void (i8*)** %prnt.addr, align 8
  %7 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %data = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 3
  %8 = load i8**, i8*** %data, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  call void %6(i8* %10)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
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
