; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shpg_item = type opaque

@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A8/q3c-shopping-set/shopping_list.c\00", align 1
@__PRETTY_FUNCTION__.list_read = private unnamed_addr constant [41 x i8] c"int list_read(struct shpg_item ***, int)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"*list\00", align 1
@__PRETTY_FUNCTION__.list_print = private unnamed_addr constant [42 x i8] c"void list_print(struct shpg_item **, int)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__PRETTY_FUNCTION__.list_destroy = private unnamed_addr constant [44 x i8] c"void list_destroy(struct shpg_item **, int)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@__PRETTY_FUNCTION__.quick_sort_worker = private unnamed_addr constant [126 x i8] c"void quick_sort_worker(struct shpg_item **, struct shpg_item **, int (*)(const struct shpg_item *, const struct shpg_item *))\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"low < high\00", align 1
@__PRETTY_FUNCTION__.partition = private unnamed_addr constant [132 x i8] c"struct shpg_item **partition(struct shpg_item **, struct shpg_item **, int (*)(const struct shpg_item *, const struct shpg_item *))\00", align 1

; Function Attrs: noinline nounwind optnone
define i32 @list_read(%struct.shpg_item*** %list, i32 %capacity) #0 {
entry:
  %list.addr = alloca %struct.shpg_item***, align 8
  %capacity.addr = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.shpg_item*** %list, %struct.shpg_item**** %list.addr, align 8
  store i32 %capacity, i32* %capacity.addr, align 4
  %0 = load %struct.shpg_item***, %struct.shpg_item**** %list.addr, align 8
  %tobool = icmp ne %struct.shpg_item*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.list_read, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %capacity.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #5
  %2 = bitcast i8* %call to %struct.shpg_item**
  %3 = load %struct.shpg_item***, %struct.shpg_item**** %list.addr, align 8
  store %struct.shpg_item** %2, %struct.shpg_item*** %3, align 8
  %4 = load %struct.shpg_item***, %struct.shpg_item**** %list.addr, align 8
  %5 = load %struct.shpg_item**, %struct.shpg_item*** %4, align 8
  %tobool1 = icmp ne %struct.shpg_item** %5, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.list_read, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %6 = load i32, i32* %count, align 4
  %7 = load i32, i32* %capacity.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.shpg_item***, %struct.shpg_item**** %list.addr, align 8
  %9 = load %struct.shpg_item**, %struct.shpg_item*** %8, align 8
  %10 = load i32, i32* %count, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %9, i64 %idx.ext
  %call6 = call i32 @item_read(%struct.shpg_item** %add.ptr)
  %cmp7 = icmp eq i32 %call6, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, i32* %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* %count, align 4
  ret i32 %13
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @item_read(%struct.shpg_item**) #3

; Function Attrs: noinline nounwind optnone
define void @list_print(%struct.shpg_item** %list, i32 %list_len) #0 {
entry:
  %list.addr = alloca %struct.shpg_item**, align 8
  %list_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.shpg_item** %list, %struct.shpg_item*** %list.addr, align 8
  store i32 %list_len, i32* %list_len.addr, align 4
  %0 = load %struct.shpg_item**, %struct.shpg_item*** %list.addr, align 8
  %tobool = icmp ne %struct.shpg_item** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.list_print, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %list_len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.shpg_item**, %struct.shpg_item*** %list.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %3, i64 %idxprom
  %5 = load %struct.shpg_item*, %struct.shpg_item** %arrayidx, align 8
  call void @item_print(%struct.shpg_item* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #3

declare void @item_print(%struct.shpg_item*) #3

; Function Attrs: noinline nounwind optnone
define void @list_destroy(%struct.shpg_item** %list, i32 %list_len) #0 {
entry:
  %list.addr = alloca %struct.shpg_item**, align 8
  %list_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.shpg_item** %list, %struct.shpg_item*** %list.addr, align 8
  store i32 %list_len, i32* %list_len.addr, align 4
  %0 = load %struct.shpg_item**, %struct.shpg_item*** %list.addr, align 8
  %tobool = icmp ne %struct.shpg_item** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.list_destroy, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %list_len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.shpg_item**, %struct.shpg_item*** %list.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %3, i64 %idxprom
  %5 = load %struct.shpg_item*, %struct.shpg_item** %arrayidx, align 8
  call void @item_destroy(%struct.shpg_item* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.shpg_item**, %struct.shpg_item*** %list.addr, align 8
  %8 = bitcast %struct.shpg_item** %7 to i8*
  call void @free(i8* %8) #5
  ret void
}

declare void @item_destroy(%struct.shpg_item*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define i32 @comp_by_priority_name(%struct.shpg_item* %a, %struct.shpg_item* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.shpg_item*, align 8
  %b.addr = alloca %struct.shpg_item*, align 8
  %by_priority = alloca i32, align 4
  store %struct.shpg_item* %a, %struct.shpg_item** %a.addr, align 8
  store %struct.shpg_item* %b, %struct.shpg_item** %b.addr, align 8
  %0 = load %struct.shpg_item*, %struct.shpg_item** %a.addr, align 8
  %1 = load %struct.shpg_item*, %struct.shpg_item** %b.addr, align 8
  %call = call i32 @comp_by_priority(%struct.shpg_item* %0, %struct.shpg_item* %1)
  store i32 %call, i32* %by_priority, align 4
  %2 = load i32, i32* %by_priority, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %by_priority, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.shpg_item*, %struct.shpg_item** %a.addr, align 8
  %5 = load %struct.shpg_item*, %struct.shpg_item** %b.addr, align 8
  %call1 = call i32 @comp_by_name(%struct.shpg_item* %4, %struct.shpg_item* %5)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i32 @comp_by_priority(%struct.shpg_item*, %struct.shpg_item*) #3

declare i32 @comp_by_name(%struct.shpg_item*, %struct.shpg_item*) #3

; Function Attrs: noinline nounwind optnone
define void @list_sort(%struct.shpg_item** %list, i32 %list_len, i32 (%struct.shpg_item*, %struct.shpg_item*)* %comp) #0 {
entry:
  %list.addr = alloca %struct.shpg_item**, align 8
  %list_len.addr = alloca i32, align 4
  %comp.addr = alloca i32 (%struct.shpg_item*, %struct.shpg_item*)*, align 8
  store %struct.shpg_item** %list, %struct.shpg_item*** %list.addr, align 8
  store i32 %list_len, i32* %list_len.addr, align 4
  store i32 (%struct.shpg_item*, %struct.shpg_item*)* %comp, i32 (%struct.shpg_item*, %struct.shpg_item*)** %comp.addr, align 8
  %0 = load %struct.shpg_item**, %struct.shpg_item*** %list.addr, align 8
  %1 = load %struct.shpg_item**, %struct.shpg_item*** %list.addr, align 8
  %2 = load i32, i32* %list_len.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %add.ptr, i64 -1
  %3 = load i32 (%struct.shpg_item*, %struct.shpg_item*)*, i32 (%struct.shpg_item*, %struct.shpg_item*)** %comp.addr, align 8
  call void @quick_sort_worker(%struct.shpg_item** %0, %struct.shpg_item** %add.ptr1, i32 (%struct.shpg_item*, %struct.shpg_item*)* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @quick_sort_worker(%struct.shpg_item** %low, %struct.shpg_item** %high, i32 (%struct.shpg_item*, %struct.shpg_item*)* %comp) #0 {
entry:
  %low.addr = alloca %struct.shpg_item**, align 8
  %high.addr = alloca %struct.shpg_item**, align 8
  %comp.addr = alloca i32 (%struct.shpg_item*, %struct.shpg_item*)*, align 8
  %mid = alloca %struct.shpg_item**, align 8
  store %struct.shpg_item** %low, %struct.shpg_item*** %low.addr, align 8
  store %struct.shpg_item** %high, %struct.shpg_item*** %high.addr, align 8
  store i32 (%struct.shpg_item*, %struct.shpg_item*)* %comp, i32 (%struct.shpg_item*, %struct.shpg_item*)** %comp.addr, align 8
  %0 = load %struct.shpg_item**, %struct.shpg_item*** %low.addr, align 8
  %tobool = icmp ne %struct.shpg_item** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 73, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @__PRETTY_FUNCTION__.quick_sort_worker, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.shpg_item**, %struct.shpg_item*** %high.addr, align 8
  %tobool1 = icmp ne %struct.shpg_item** %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 74, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @__PRETTY_FUNCTION__.quick_sort_worker, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.shpg_item**, %struct.shpg_item*** %high.addr, align 8
  %3 = load %struct.shpg_item**, %struct.shpg_item*** %low.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.shpg_item** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.shpg_item** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  %4 = load %struct.shpg_item**, %struct.shpg_item*** %low.addr, align 8
  %5 = load %struct.shpg_item**, %struct.shpg_item*** %high.addr, align 8
  %6 = load i32 (%struct.shpg_item*, %struct.shpg_item*)*, i32 (%struct.shpg_item*, %struct.shpg_item*)** %comp.addr, align 8
  %call = call %struct.shpg_item** @partition(%struct.shpg_item** %4, %struct.shpg_item** %5, i32 (%struct.shpg_item*, %struct.shpg_item*)* %6)
  store %struct.shpg_item** %call, %struct.shpg_item*** %mid, align 8
  %7 = load %struct.shpg_item**, %struct.shpg_item*** %low.addr, align 8
  %8 = load %struct.shpg_item**, %struct.shpg_item*** %mid, align 8
  %add.ptr = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %8, i64 -1
  %9 = load i32 (%struct.shpg_item*, %struct.shpg_item*)*, i32 (%struct.shpg_item*, %struct.shpg_item*)** %comp.addr, align 8
  call void @quick_sort_worker(%struct.shpg_item** %7, %struct.shpg_item** %add.ptr, i32 (%struct.shpg_item*, %struct.shpg_item*)* %9)
  %10 = load %struct.shpg_item**, %struct.shpg_item*** %mid, align 8
  %add.ptr6 = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %10, i64 1
  %11 = load %struct.shpg_item**, %struct.shpg_item*** %high.addr, align 8
  %12 = load i32 (%struct.shpg_item*, %struct.shpg_item*)*, i32 (%struct.shpg_item*, %struct.shpg_item*)** %comp.addr, align 8
  call void @quick_sort_worker(%struct.shpg_item** %add.ptr6, %struct.shpg_item** %11, i32 (%struct.shpg_item*, %struct.shpg_item*)* %12)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end4
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal %struct.shpg_item** @partition(%struct.shpg_item** %low, %struct.shpg_item** %high, i32 (%struct.shpg_item*, %struct.shpg_item*)* %comp) #0 {
entry:
  %low.addr = alloca %struct.shpg_item**, align 8
  %high.addr = alloca %struct.shpg_item**, align 8
  %comp.addr = alloca i32 (%struct.shpg_item*, %struct.shpg_item*)*, align 8
  %pivot = alloca %struct.shpg_item**, align 8
  %mover = alloca %struct.shpg_item**, align 8
  %swapper = alloca %struct.shpg_item**, align 8
  store %struct.shpg_item** %low, %struct.shpg_item*** %low.addr, align 8
  store %struct.shpg_item** %high, %struct.shpg_item*** %high.addr, align 8
  store i32 (%struct.shpg_item*, %struct.shpg_item*)* %comp, i32 (%struct.shpg_item*, %struct.shpg_item*)** %comp.addr, align 8
  %0 = load %struct.shpg_item**, %struct.shpg_item*** %low.addr, align 8
  %1 = load %struct.shpg_item**, %struct.shpg_item*** %high.addr, align 8
  %cmp = icmp ult %struct.shpg_item** %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @__PRETTY_FUNCTION__.partition, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct.shpg_item**, %struct.shpg_item*** %low.addr, align 8
  store %struct.shpg_item** %2, %struct.shpg_item*** %pivot, align 8
  %3 = load %struct.shpg_item**, %struct.shpg_item*** %high.addr, align 8
  store %struct.shpg_item** %3, %struct.shpg_item*** %mover, align 8
  %4 = load %struct.shpg_item**, %struct.shpg_item*** %high.addr, align 8
  store %struct.shpg_item** %4, %struct.shpg_item*** %swapper, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end
  %5 = load %struct.shpg_item**, %struct.shpg_item*** %mover, align 8
  %6 = load %struct.shpg_item**, %struct.shpg_item*** %low.addr, align 8
  %cmp1 = icmp ugt %struct.shpg_item** %5, %6
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32 (%struct.shpg_item*, %struct.shpg_item*)*, i32 (%struct.shpg_item*, %struct.shpg_item*)** %comp.addr, align 8
  %8 = load %struct.shpg_item**, %struct.shpg_item*** %mover, align 8
  %9 = load %struct.shpg_item*, %struct.shpg_item** %8, align 8
  %10 = load %struct.shpg_item**, %struct.shpg_item*** %pivot, align 8
  %11 = load %struct.shpg_item*, %struct.shpg_item** %10, align 8
  %call = call i32 %7(%struct.shpg_item* %9, %struct.shpg_item* %11)
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %while.body
  %12 = load %struct.shpg_item**, %struct.shpg_item*** %mover, align 8
  %13 = load %struct.shpg_item**, %struct.shpg_item*** %swapper, align 8
  call void @swap(%struct.shpg_item** %12, %struct.shpg_item** %13)
  %14 = load %struct.shpg_item**, %struct.shpg_item*** %mover, align 8
  %incdec.ptr = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %14, i32 -1
  store %struct.shpg_item** %incdec.ptr, %struct.shpg_item*** %mover, align 8
  %15 = load %struct.shpg_item**, %struct.shpg_item*** %swapper, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %15, i32 -1
  store %struct.shpg_item** %incdec.ptr4, %struct.shpg_item*** %swapper, align 8
  br label %if.end7

if.else5:                                         ; preds = %while.body
  %16 = load %struct.shpg_item**, %struct.shpg_item*** %mover, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.shpg_item*, %struct.shpg_item** %16, i32 -1
  store %struct.shpg_item** %incdec.ptr6, %struct.shpg_item*** %mover, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.shpg_item**, %struct.shpg_item*** %swapper, align 8
  %18 = load %struct.shpg_item**, %struct.shpg_item*** %pivot, align 8
  call void @swap(%struct.shpg_item** %17, %struct.shpg_item** %18)
  %19 = load %struct.shpg_item**, %struct.shpg_item*** %swapper, align 8
  ret %struct.shpg_item** %19
}

; Function Attrs: noinline nounwind optnone
define internal void @swap(%struct.shpg_item** %a, %struct.shpg_item** %b) #0 {
entry:
  %a.addr = alloca %struct.shpg_item**, align 8
  %b.addr = alloca %struct.shpg_item**, align 8
  %tmp = alloca %struct.shpg_item*, align 8
  store %struct.shpg_item** %a, %struct.shpg_item*** %a.addr, align 8
  store %struct.shpg_item** %b, %struct.shpg_item*** %b.addr, align 8
  %0 = load %struct.shpg_item**, %struct.shpg_item*** %a.addr, align 8
  %1 = load %struct.shpg_item*, %struct.shpg_item** %0, align 8
  store %struct.shpg_item* %1, %struct.shpg_item** %tmp, align 8
  %2 = load %struct.shpg_item**, %struct.shpg_item*** %b.addr, align 8
  %3 = load %struct.shpg_item*, %struct.shpg_item** %2, align 8
  %4 = load %struct.shpg_item**, %struct.shpg_item*** %a.addr, align 8
  store %struct.shpg_item* %3, %struct.shpg_item** %4, align 8
  %5 = load %struct.shpg_item*, %struct.shpg_item** %tmp, align 8
  %6 = load %struct.shpg_item**, %struct.shpg_item*** %b.addr, align 8
  store %struct.shpg_item* %5, %struct.shpg_item** %6, align 8
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
