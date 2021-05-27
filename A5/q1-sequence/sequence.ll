; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sequence = type { [10000 x i32], i32 }

@.str = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/.seashell/projects/Draft-A5/q1-sequence/sequence.c\00", align 1
@__PRETTY_FUNCTION__.sequence_destroy = private unnamed_addr constant [41 x i8] c"void sequence_destroy(struct sequence *)\00", align 1
@__PRETTY_FUNCTION__.sequence_length = private unnamed_addr constant [45 x i8] c"int sequence_length(const struct sequence *)\00", align 1
@__PRETTY_FUNCTION__.sequence_item_at = private unnamed_addr constant [57 x i8] c"int sequence_item_at(const struct sequence *, const int)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pos >= 0\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"pos < sequence_length(seq)\00", align 1
@__PRETTY_FUNCTION__.sequence_insert_at = private unnamed_addr constant [65 x i8] c"void sequence_insert_at(struct sequence *, const int, const int)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"pos <= sequence_length(seq)\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Error: sequence capacity exceeded.\0A\00", align 1
@__PRETTY_FUNCTION__.sequence_remove_at = private unnamed_addr constant [53 x i8] c"int sequence_remove_at(struct sequence *, const int)\00", align 1
@__PRETTY_FUNCTION__.sequence_print = private unnamed_addr constant [45 x i8] c"void sequence_print(const struct sequence *)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"[empty]\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"[%d]: \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.sequence* @sequence_create() #0 {
entry:
  %seq = alloca %struct.sequence*, align 8
  %call = call noalias i8* @malloc(i64 40004) #4
  %0 = bitcast i8* %call to %struct.sequence*
  store %struct.sequence* %0, %struct.sequence** %seq, align 8
  %1 = load %struct.sequence*, %struct.sequence** %seq, align 8
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %2 = load %struct.sequence*, %struct.sequence** %seq, align 8
  ret %struct.sequence* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone
define void @sequence_destroy(%struct.sequence* %seq) #0 {
entry:
  %seq.addr = alloca %struct.sequence*, align 8
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  %0 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %tobool = icmp ne %struct.sequence* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.sequence_destroy, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %2 = bitcast %struct.sequence* %1 to i8*
  call void @free(i8* %2) #4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone
define i32 @sequence_length(%struct.sequence* %seq) #0 {
entry:
  %seq.addr = alloca %struct.sequence*, align 8
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  %0 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %tobool = icmp ne %struct.sequence* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.sequence_length, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone
define i32 @sequence_item_at(%struct.sequence* %seq, i32 %pos) #0 {
entry:
  %seq.addr = alloca %struct.sequence*, align 8
  %pos.addr = alloca i32, align 4
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %tobool = icmp ne %struct.sequence* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.sequence_item_at, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %pos.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.sequence_item_at, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %call = call i32 @sequence_length(%struct.sequence* %3)
  %cmp4 = icmp slt i32 %2, %call
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  br label %if.end7

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.sequence_item_at, i32 0, i32 0)) #5
  unreachable

if.end7:                                          ; preds = %if.then5
  %4 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %arr = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i32 0, i32 0
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define void @sequence_insert_at(%struct.sequence* %seq, i32 %pos, i32 %val) #0 {
entry:
  %seq.addr = alloca %struct.sequence*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %tobool = icmp ne %struct.sequence* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.sequence_insert_at, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %pos.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.sequence_insert_at, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %call = call i32 @sequence_length(%struct.sequence* %3)
  %cmp4 = icmp sle i32 %2, %call
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  br label %if.end7

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.sequence_insert_at, i32 0, i32 0)) #5
  unreachable

if.end7:                                          ; preds = %if.then5
  %4 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i32 0, i32 1
  %5 = load i32, i32* %length, align 4
  %add = add nsw i32 %5, 1
  %cmp8 = icmp eq i32 %add, 10000
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end11:                                         ; preds = %if.end7
  %6 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length12 = getelementptr inbounds %struct.sequence, %struct.sequence* %6, i32 0, i32 1
  %7 = load i32, i32* %length12, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %cmp13 = icmp sgt i32 %8, %9
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %arr = getelementptr inbounds %struct.sequence, %struct.sequence* %10, i32 0, i32 0
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %arr14 = getelementptr inbounds %struct.sequence, %struct.sequence* %13, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr14, i64 0, i64 %idxprom15
  store i32 %12, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %val.addr, align 4
  %17 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %arr17 = getelementptr inbounds %struct.sequence, %struct.sequence* %17, i32 0, i32 0
  %18 = load i32, i32* %pos.addr, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr17, i64 0, i64 %idxprom18
  store i32 %16, i32* %arrayidx19, align 4
  %19 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length20 = getelementptr inbounds %struct.sequence, %struct.sequence* %19, i32 0, i32 1
  %20 = load i32, i32* %length20, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %length20, align 4
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone
define i32 @sequence_remove_at(%struct.sequence* %seq, i32 %pos) #0 {
entry:
  %seq.addr = alloca %struct.sequence*, align 8
  %pos.addr = alloca i32, align 4
  %retval8 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %tobool = icmp ne %struct.sequence* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.sequence_remove_at, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %pos.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.sequence_remove_at, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %call = call i32 @sequence_length(%struct.sequence* %3)
  %cmp4 = icmp slt i32 %2, %call
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  br label %if.end7

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.sequence_remove_at, i32 0, i32 0)) #5
  unreachable

if.end7:                                          ; preds = %if.then5
  %4 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %arr = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i32 0, i32 0
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %retval8, align 4
  %7 = load i32, i32* %pos.addr, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %9, i32 0, i32 1
  %10 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %10, 1
  %cmp9 = icmp slt i32 %8, %sub
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %arr10 = getelementptr inbounds %struct.sequence, %struct.sequence* %11, i32 0, i32 0
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %12, 1
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr10, i64 0, i64 %idxprom11
  %13 = load i32, i32* %arrayidx12, align 4
  %14 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %arr13 = getelementptr inbounds %struct.sequence, %struct.sequence* %14, i32 0, i32 0
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr13, i64 0, i64 %idxprom14
  store i32 %13, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length16 = getelementptr inbounds %struct.sequence, %struct.sequence* %17, i32 0, i32 1
  %18 = load i32, i32* %length16, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %length16, align 4
  %19 = load i32, i32* %retval8, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone
define void @sequence_print(%struct.sequence* %seq) #0 {
entry:
  %seq.addr = alloca %struct.sequence*, align 8
  %i = alloca i32, align 4
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  %0 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %tobool = icmp ne %struct.sequence* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.sequence_print, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end10

if.else2:                                         ; preds = %if.end
  %3 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length3 = getelementptr inbounds %struct.sequence, %struct.sequence* %3, i32 0, i32 1
  %4 = load i32, i32* %length3, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else2
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %length5 = getelementptr inbounds %struct.sequence, %struct.sequence* %6, i32 0, i32 1
  %7 = load i32, i32* %length5, align 4
  %cmp6 = icmp slt i32 %5, %7
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call7 = call i32 @sequence_item_at(%struct.sequence* %8, i32 %9)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %call7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then1
  ret void
}

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
