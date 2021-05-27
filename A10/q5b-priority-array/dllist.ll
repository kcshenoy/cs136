; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dllist = type { %struct.lnode*, %struct.lnode*, i32, void (i8*)*, void (i8*)* }
%struct.lnode = type { i8*, %struct.lnode*, %struct.lnode* }
%struct.iter = type { %struct.lnode*, i32 }

@ITER_FRONT_TO_BACK = constant i32 0, align 4
@ITER_BACK_TO_FRONT = constant i32 1, align 4
@.str = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A10/q5b-priority-array/dllist.c\00", align 1
@__PRETTY_FUNCTION__.list_create = private unnamed_addr constant [69 x i8] c"struct dllist *list_create(void (*)(const void *), void (*)(void *))\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@__PRETTY_FUNCTION__.list_destroy = private unnamed_addr constant [35 x i8] c"void list_destroy(struct dllist *)\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@__PRETTY_FUNCTION__.node_destroy = private unnamed_addr constant [52 x i8] c"void node_destroy(struct lnode *, void (*)(void *))\00", align 1
@__PRETTY_FUNCTION__.list_append = private unnamed_addr constant [42 x i8] c"void list_append(struct dllist *, void *)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__PRETTY_FUNCTION__.node_create = private unnamed_addr constant [34 x i8] c"struct lnode *node_create(void *)\00", align 1
@__PRETTY_FUNCTION__.list_prepend = private unnamed_addr constant [43 x i8] c"void list_prepend(struct dllist *, void *)\00", align 1
@__PRETTY_FUNCTION__.list_insert_at = private unnamed_addr constant [50 x i8] c"void list_insert_at(struct dllist *, void *, int)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"0 <= idx && idx <= list->length\00", align 1
@__PRETTY_FUNCTION__.list_remove_at = private unnamed_addr constant [43 x i8] c"void *list_remove_at(struct dllist *, int)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"0 <= idx && idx <= list->length - 1\00", align 1
@__PRETTY_FUNCTION__.list_remove_back = private unnamed_addr constant [40 x i8] c"void *list_remove_back(struct dllist *)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"list->first != NULL\00", align 1
@__PRETTY_FUNCTION__.list_remove_front = private unnamed_addr constant [41 x i8] c"void *list_remove_front(struct dllist *)\00", align 1
@__PRETTY_FUNCTION__.list_peek_front = private unnamed_addr constant [51 x i8] c"const void *list_peek_front(const struct dllist *)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"list->first\00", align 1
@__PRETTY_FUNCTION__.list_peek_back = private unnamed_addr constant [50 x i8] c"const void *list_peek_back(const struct dllist *)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"list->last\00", align 1
@__PRETTY_FUNCTION__.list_is_empty = private unnamed_addr constant [43 x i8] c"_Bool list_is_empty(const struct dllist *)\00", align 1
@__PRETTY_FUNCTION__.list_print = private unnamed_addr constant [44 x i8] c"void list_print(const struct dllist *, int)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"[FRONT]: \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"[BACK]\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@__PRETTY_FUNCTION__.iter_next = private unnamed_addr constant [31 x i8] c"_Bool iter_next(struct iter *)\00", align 1
@__PRETTY_FUNCTION__.iter_current = private unnamed_addr constant [46 x i8] c"const char *iter_current(const struct iter *)\00", align 1
@__PRETTY_FUNCTION__.iter_get = private unnamed_addr constant [50 x i8] c"struct iter *iter_get(const struct dllist *, int)\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"list_is_empty(list) == false\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"dir == ITER_BACK_TO_FRONT || dir == ITER_FRONT_TO_BACK\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.dllist* @list_create(void (i8*)* %print, void (i8*)* %destroy) #0 {
entry:
  %print.addr = alloca void (i8*)*, align 8
  %destroy.addr = alloca void (i8*)*, align 8
  %list = alloca %struct.dllist*, align 8
  store void (i8*)* %print, void (i8*)** %print.addr, align 8
  store void (i8*)* %destroy, void (i8*)** %destroy.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %print.addr, align 8
  %tobool = icmp ne void (i8*)* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.list_create, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %tobool1 = icmp ne void (i8*)* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.list_create, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %call = call noalias i8* @malloc(i64 40) #5
  %2 = bitcast i8* %call to %struct.dllist*
  store %struct.dllist* %2, %struct.dllist** %list, align 8
  %3 = load %struct.dllist*, %struct.dllist** %list, align 8
  %tobool5 = icmp ne %struct.dllist* %3, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 57, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.list_create, i32 0, i32 0)) #4
  unreachable

if.end8:                                          ; preds = %if.then6
  %4 = load %struct.dllist*, %struct.dllist** %list, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %4, i32 0, i32 0
  store %struct.lnode* null, %struct.lnode** %first, align 8
  %5 = load %struct.dllist*, %struct.dllist** %list, align 8
  %last = getelementptr inbounds %struct.dllist, %struct.dllist* %5, i32 0, i32 1
  store %struct.lnode* null, %struct.lnode** %last, align 8
  %6 = load %struct.dllist*, %struct.dllist** %list, align 8
  %length = getelementptr inbounds %struct.dllist, %struct.dllist* %6, i32 0, i32 2
  store i32 0, i32* %length, align 8
  %7 = load void (i8*)*, void (i8*)** %print.addr, align 8
  %8 = load %struct.dllist*, %struct.dllist** %list, align 8
  %print9 = getelementptr inbounds %struct.dllist, %struct.dllist* %8, i32 0, i32 3
  store void (i8*)* %7, void (i8*)** %print9, align 8
  %9 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %10 = load %struct.dllist*, %struct.dllist** %list, align 8
  %destroy10 = getelementptr inbounds %struct.dllist, %struct.dllist* %10, i32 0, i32 4
  store void (i8*)* %9, void (i8*)** %destroy10, align 8
  %11 = load %struct.dllist*, %struct.dllist** %list, align 8
  ret %struct.dllist* %11
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone
define void @list_destroy(%struct.dllist* %list) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  %cur = alloca %struct.lnode*, align 8
  %tmp = alloca %struct.lnode*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.list_destroy, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %1, i32 0, i32 0
  %2 = load %struct.lnode*, %struct.lnode** %first, align 8
  store %struct.lnode* %2, %struct.lnode** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %cmp = icmp ne %struct.lnode* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.lnode*, %struct.lnode** %cur, align 8
  store %struct.lnode* %4, %struct.lnode** %tmp, align 8
  %5 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %5, i32 0, i32 1
  %6 = load %struct.lnode*, %struct.lnode** %next, align 8
  store %struct.lnode* %6, %struct.lnode** %cur, align 8
  %7 = load %struct.lnode*, %struct.lnode** %tmp, align 8
  %8 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %destroy = getelementptr inbounds %struct.dllist, %struct.dllist* %8, i32 0, i32 4
  %9 = load void (i8*)*, void (i8*)** %destroy, align 8
  call void @node_destroy(%struct.lnode* %7, void (i8*)* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %11 = bitcast %struct.dllist* %10 to i8*
  call void @free(i8* %11) #5
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @node_destroy(%struct.lnode* %node, void (i8*)* %destroy) #0 {
entry:
  %node.addr = alloca %struct.lnode*, align 8
  %destroy.addr = alloca void (i8*)*, align 8
  store %struct.lnode* %node, %struct.lnode** %node.addr, align 8
  store void (i8*)* %destroy, void (i8*)** %destroy.addr, align 8
  %0 = load %struct.lnode*, %struct.lnode** %node.addr, align 8
  %tobool = icmp ne %struct.lnode* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.node_destroy, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %2 = load %struct.lnode*, %struct.lnode** %node.addr, align 8
  %data = getelementptr inbounds %struct.lnode, %struct.lnode* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  call void %1(i8* %3)
  %4 = load %struct.lnode*, %struct.lnode** %node.addr, align 8
  %5 = bitcast %struct.lnode* %4 to i8*
  call void @free(i8* %5) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define void @list_append(%struct.dllist* %list, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  %data.addr = alloca i8*, align 8
  %cur = alloca %struct.lnode*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.list_append, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %data.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.list_append, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last = getelementptr inbounds %struct.dllist, %struct.dllist* %2, i32 0, i32 1
  %3 = load %struct.lnode*, %struct.lnode** %last, align 8
  store %struct.lnode* %3, %struct.lnode** %cur, align 8
  %4 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length = getelementptr inbounds %struct.dllist, %struct.dllist* %4, i32 0, i32 2
  %5 = load i32, i32* %length, align 8
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %length, align 8
  %6 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %cmp = icmp eq %struct.lnode* %6, null
  br i1 %cmp, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.end4
  %7 = load i8*, i8** %data.addr, align 8
  %call = call %struct.lnode* @node_create(i8* %7)
  %8 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last6 = getelementptr inbounds %struct.dllist, %struct.dllist* %8, i32 0, i32 1
  store %struct.lnode* %call, %struct.lnode** %last6, align 8
  %9 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %9, i32 0, i32 0
  store %struct.lnode* %call, %struct.lnode** %first, align 8
  br label %if.end12

if.else7:                                         ; preds = %if.end4
  %10 = load i8*, i8** %data.addr, align 8
  %call8 = call %struct.lnode* @node_create(i8* %10)
  %11 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last9 = getelementptr inbounds %struct.dllist, %struct.dllist* %11, i32 0, i32 1
  store %struct.lnode* %call8, %struct.lnode** %last9, align 8
  %12 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %13 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last10 = getelementptr inbounds %struct.dllist, %struct.dllist* %13, i32 0, i32 1
  %14 = load %struct.lnode*, %struct.lnode** %last10, align 8
  %prev = getelementptr inbounds %struct.lnode, %struct.lnode* %14, i32 0, i32 2
  store %struct.lnode* %12, %struct.lnode** %prev, align 8
  %15 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last11 = getelementptr inbounds %struct.dllist, %struct.dllist* %15, i32 0, i32 1
  %16 = load %struct.lnode*, %struct.lnode** %last11, align 8
  %17 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %17, i32 0, i32 1
  store %struct.lnode* %16, %struct.lnode** %next, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else7, %if.then5
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal %struct.lnode* @node_create(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %node = alloca %struct.lnode*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.node_create, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %call = call noalias i8* @malloc(i64 24) #5
  %1 = bitcast i8* %call to %struct.lnode*
  store %struct.lnode* %1, %struct.lnode** %node, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.node_create, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load %struct.lnode*, %struct.lnode** %node, align 8
  %data5 = getelementptr inbounds %struct.lnode, %struct.lnode* %4, i32 0, i32 0
  store i8* %3, i8** %data5, align 8
  %5 = load %struct.lnode*, %struct.lnode** %node, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %5, i32 0, i32 1
  store %struct.lnode* null, %struct.lnode** %next, align 8
  %6 = load %struct.lnode*, %struct.lnode** %node, align 8
  %prev = getelementptr inbounds %struct.lnode, %struct.lnode* %6, i32 0, i32 2
  store %struct.lnode* null, %struct.lnode** %prev, align 8
  %7 = load %struct.lnode*, %struct.lnode** %node, align 8
  ret %struct.lnode* %7
}

; Function Attrs: noinline nounwind optnone
define void @list_prepend(%struct.dllist* %list, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  %data.addr = alloca i8*, align 8
  %cur = alloca %struct.lnode*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.list_prepend, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %data.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.list_prepend, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %2, i32 0, i32 0
  %3 = load %struct.lnode*, %struct.lnode** %first, align 8
  store %struct.lnode* %3, %struct.lnode** %cur, align 8
  %4 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length = getelementptr inbounds %struct.dllist, %struct.dllist* %4, i32 0, i32 2
  %5 = load i32, i32* %length, align 8
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %length, align 8
  %6 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %cmp = icmp eq %struct.lnode* %6, null
  br i1 %cmp, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.end4
  %7 = load i8*, i8** %data.addr, align 8
  %call = call %struct.lnode* @node_create(i8* %7)
  %8 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last = getelementptr inbounds %struct.dllist, %struct.dllist* %8, i32 0, i32 1
  store %struct.lnode* %call, %struct.lnode** %last, align 8
  %9 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first6 = getelementptr inbounds %struct.dllist, %struct.dllist* %9, i32 0, i32 0
  store %struct.lnode* %call, %struct.lnode** %first6, align 8
  br label %if.end12

if.else7:                                         ; preds = %if.end4
  %10 = load i8*, i8** %data.addr, align 8
  %call8 = call %struct.lnode* @node_create(i8* %10)
  %11 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first9 = getelementptr inbounds %struct.dllist, %struct.dllist* %11, i32 0, i32 0
  store %struct.lnode* %call8, %struct.lnode** %first9, align 8
  %12 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %13 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first10 = getelementptr inbounds %struct.dllist, %struct.dllist* %13, i32 0, i32 0
  %14 = load %struct.lnode*, %struct.lnode** %first10, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %14, i32 0, i32 1
  store %struct.lnode* %12, %struct.lnode** %next, align 8
  %15 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first11 = getelementptr inbounds %struct.dllist, %struct.dllist* %15, i32 0, i32 0
  %16 = load %struct.lnode*, %struct.lnode** %first11, align 8
  %17 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %prev = getelementptr inbounds %struct.lnode, %struct.lnode* %17, i32 0, i32 2
  store %struct.lnode* %16, %struct.lnode** %prev, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else7, %if.then5
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @list_insert_at(%struct.dllist* %list, i8* %data, i32 %idx) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  %data.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  %cur = alloca %struct.lnode*, align 8
  %i = alloca i32, align 4
  %new = alloca %struct.lnode*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.list_insert_at, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %data.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.list_insert_at, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp sle i32 0, %2
  br i1 %cmp, label %land.lhs.true, label %if.else7

land.lhs.true:                                    ; preds = %if.end4
  %3 = load i32, i32* %idx.addr, align 4
  %4 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length = getelementptr inbounds %struct.dllist, %struct.dllist* %4, i32 0, i32 2
  %5 = load i32, i32* %length, align 8
  %cmp5 = icmp sle i32 %3, %5
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %land.lhs.true
  br label %if.end8

if.else7:                                         ; preds = %land.lhs.true, %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 112, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.list_insert_at, i32 0, i32 0)) #4
  unreachable

if.end8:                                          ; preds = %if.then6
  %6 = load i32, i32* %idx.addr, align 4
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end8
  %7 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %8 = load i8*, i8** %data.addr, align 8
  call void @list_prepend(%struct.dllist* %7, i8* %8)
  br label %if.end26

if.else11:                                        ; preds = %if.end8
  %9 = load i32, i32* %idx.addr, align 4
  %10 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length12 = getelementptr inbounds %struct.dllist, %struct.dllist* %10, i32 0, i32 2
  %11 = load i32, i32* %length12, align 8
  %cmp13 = icmp eq i32 %9, %11
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  %12 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %13 = load i8*, i8** %data.addr, align 8
  call void @list_append(%struct.dllist* %12, i8* %13)
  br label %if.end25

if.else15:                                        ; preds = %if.else11
  %14 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %14, i32 0, i32 0
  %15 = load %struct.lnode*, %struct.lnode** %first, align 8
  store %struct.lnode* %15, %struct.lnode** %cur, align 8
  %16 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length16 = getelementptr inbounds %struct.dllist, %struct.dllist* %16, i32 0, i32 2
  %17 = load i32, i32* %length16, align 8
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %length16, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else15
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %idx.addr, align 4
  %cmp17 = icmp slt i32 %18, %19
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %i, align 4
  %21 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %21, i32 0, i32 1
  %22 = load %struct.lnode*, %struct.lnode** %next, align 8
  store %struct.lnode* %22, %struct.lnode** %cur, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %data.addr, align 8
  %call = call %struct.lnode* @node_create(i8* %23)
  store %struct.lnode* %call, %struct.lnode** %new, align 8
  %24 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %25 = load %struct.lnode*, %struct.lnode** %new, align 8
  %next19 = getelementptr inbounds %struct.lnode, %struct.lnode* %25, i32 0, i32 1
  store %struct.lnode* %24, %struct.lnode** %next19, align 8
  %26 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %prev = getelementptr inbounds %struct.lnode, %struct.lnode* %26, i32 0, i32 2
  %27 = load %struct.lnode*, %struct.lnode** %prev, align 8
  %28 = load %struct.lnode*, %struct.lnode** %new, align 8
  %prev20 = getelementptr inbounds %struct.lnode, %struct.lnode* %28, i32 0, i32 2
  store %struct.lnode* %27, %struct.lnode** %prev20, align 8
  %29 = load %struct.lnode*, %struct.lnode** %new, align 8
  %30 = load %struct.lnode*, %struct.lnode** %new, align 8
  %next21 = getelementptr inbounds %struct.lnode, %struct.lnode* %30, i32 0, i32 1
  %31 = load %struct.lnode*, %struct.lnode** %next21, align 8
  %prev22 = getelementptr inbounds %struct.lnode, %struct.lnode* %31, i32 0, i32 2
  store %struct.lnode* %29, %struct.lnode** %prev22, align 8
  %32 = load %struct.lnode*, %struct.lnode** %new, align 8
  %33 = load %struct.lnode*, %struct.lnode** %new, align 8
  %prev23 = getelementptr inbounds %struct.lnode, %struct.lnode* %33, i32 0, i32 2
  %34 = load %struct.lnode*, %struct.lnode** %prev23, align 8
  %next24 = getelementptr inbounds %struct.lnode, %struct.lnode* %34, i32 0, i32 1
  store %struct.lnode* %32, %struct.lnode** %next24, align 8
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.then14
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then10
  ret void
}

; Function Attrs: noinline nounwind optnone
define i8* @list_remove_at(%struct.dllist* %list, i32 %idx) #0 {
entry:
  %retval = alloca i8*, align 8
  %list.addr = alloca %struct.dllist*, align 8
  %idx.addr = alloca i32, align 4
  %cur = alloca %struct.lnode*, align 8
  %i = alloca i32, align 4
  %ret = alloca i8*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 131, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.list_remove_at, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %idx.addr, align 4
  %cmp = icmp sle i32 0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else3

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %idx.addr, align 4
  %3 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length = getelementptr inbounds %struct.dllist, %struct.dllist* %3, i32 0, i32 2
  %4 = load i32, i32* %length, align 8
  %sub = sub nsw i32 %4, 1
  %cmp1 = icmp sle i32 %2, %sub
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %land.lhs.true
  br label %if.end4

if.else3:                                         ; preds = %land.lhs.true, %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.list_remove_at, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %5 = load i32, i32* %idx.addr, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  %6 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %call = call i8* @list_remove_front(%struct.dllist* %6)
  store i8* %call, i8** %retval, align 8
  br label %return

if.else7:                                         ; preds = %if.end4
  %7 = load i32, i32* %idx.addr, align 4
  %8 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length8 = getelementptr inbounds %struct.dllist, %struct.dllist* %8, i32 0, i32 2
  %9 = load i32, i32* %length8, align 8
  %sub9 = sub nsw i32 %9, 1
  %cmp10 = icmp eq i32 %7, %sub9
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else7
  %10 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %call12 = call i8* @list_remove_back(%struct.dllist* %10)
  store i8* %call12, i8** %retval, align 8
  br label %return

if.else13:                                        ; preds = %if.else7
  %11 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %11, i32 0, i32 0
  %12 = load %struct.lnode*, %struct.lnode** %first, align 8
  store %struct.lnode* %12, %struct.lnode** %cur, align 8
  %13 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length14 = getelementptr inbounds %struct.dllist, %struct.dllist* %13, i32 0, i32 2
  %14 = load i32, i32* %length14, align 8
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %length14, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else13
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %idx.addr, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %18, i32 0, i32 1
  %19 = load %struct.lnode*, %struct.lnode** %next, align 8
  store %struct.lnode* %19, %struct.lnode** %cur, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %data = getelementptr inbounds %struct.lnode, %struct.lnode* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  store i8* %21, i8** %ret, align 8
  %22 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %next16 = getelementptr inbounds %struct.lnode, %struct.lnode* %22, i32 0, i32 1
  %23 = load %struct.lnode*, %struct.lnode** %next16, align 8
  %24 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %prev = getelementptr inbounds %struct.lnode, %struct.lnode* %24, i32 0, i32 2
  %25 = load %struct.lnode*, %struct.lnode** %prev, align 8
  %next17 = getelementptr inbounds %struct.lnode, %struct.lnode* %25, i32 0, i32 1
  store %struct.lnode* %23, %struct.lnode** %next17, align 8
  %26 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %prev18 = getelementptr inbounds %struct.lnode, %struct.lnode* %26, i32 0, i32 2
  %27 = load %struct.lnode*, %struct.lnode** %prev18, align 8
  %28 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %next19 = getelementptr inbounds %struct.lnode, %struct.lnode* %28, i32 0, i32 1
  %29 = load %struct.lnode*, %struct.lnode** %next19, align 8
  %prev20 = getelementptr inbounds %struct.lnode, %struct.lnode* %29, i32 0, i32 2
  store %struct.lnode* %27, %struct.lnode** %prev20, align 8
  %30 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %31 = bitcast %struct.lnode* %30 to i8*
  call void @free(i8* %31) #5
  %32 = load i8*, i8** %ret, align 8
  store i8* %32, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then11, %if.then6
  %33 = load i8*, i8** %retval, align 8
  ret i8* %33
}

; Function Attrs: noinline nounwind optnone
define i8* @list_remove_front(%struct.dllist* %list) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  %ret = alloca i8*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.list_remove_front, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %1, i32 0, i32 0
  %2 = load %struct.lnode*, %struct.lnode** %first, align 8
  %cmp = icmp ne %struct.lnode* %2, null
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.list_remove_front, i32 0, i32 0)) #4
  unreachable

if.end3:                                          ; preds = %if.then1
  %3 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first4 = getelementptr inbounds %struct.dllist, %struct.dllist* %3, i32 0, i32 0
  %4 = load %struct.lnode*, %struct.lnode** %first4, align 8
  %data = getelementptr inbounds %struct.lnode, %struct.lnode* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  store i8* %5, i8** %ret, align 8
  %6 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length = getelementptr inbounds %struct.dllist, %struct.dllist* %6, i32 0, i32 2
  %7 = load i32, i32* %length, align 8
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %length, align 8
  %8 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first5 = getelementptr inbounds %struct.dllist, %struct.dllist* %8, i32 0, i32 0
  %9 = load %struct.lnode*, %struct.lnode** %first5, align 8
  %10 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last = getelementptr inbounds %struct.dllist, %struct.dllist* %10, i32 0, i32 1
  %11 = load %struct.lnode*, %struct.lnode** %last, align 8
  %cmp6 = icmp eq %struct.lnode* %9, %11
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.end3
  %12 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first8 = getelementptr inbounds %struct.dllist, %struct.dllist* %12, i32 0, i32 0
  %13 = load %struct.lnode*, %struct.lnode** %first8, align 8
  %14 = bitcast %struct.lnode* %13 to i8*
  call void @free(i8* %14) #5
  %15 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last9 = getelementptr inbounds %struct.dllist, %struct.dllist* %15, i32 0, i32 1
  store %struct.lnode* null, %struct.lnode** %last9, align 8
  %16 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first10 = getelementptr inbounds %struct.dllist, %struct.dllist* %16, i32 0, i32 0
  store %struct.lnode* null, %struct.lnode** %first10, align 8
  br label %if.end17

if.else11:                                        ; preds = %if.end3
  %17 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first12 = getelementptr inbounds %struct.dllist, %struct.dllist* %17, i32 0, i32 0
  %18 = load %struct.lnode*, %struct.lnode** %first12, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %18, i32 0, i32 1
  %19 = load %struct.lnode*, %struct.lnode** %next, align 8
  %20 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first13 = getelementptr inbounds %struct.dllist, %struct.dllist* %20, i32 0, i32 0
  store %struct.lnode* %19, %struct.lnode** %first13, align 8
  %21 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first14 = getelementptr inbounds %struct.dllist, %struct.dllist* %21, i32 0, i32 0
  %22 = load %struct.lnode*, %struct.lnode** %first14, align 8
  %prev = getelementptr inbounds %struct.lnode, %struct.lnode* %22, i32 0, i32 2
  %23 = load %struct.lnode*, %struct.lnode** %prev, align 8
  %24 = bitcast %struct.lnode* %23 to i8*
  call void @free(i8* %24) #5
  %25 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first15 = getelementptr inbounds %struct.dllist, %struct.dllist* %25, i32 0, i32 0
  %26 = load %struct.lnode*, %struct.lnode** %first15, align 8
  %prev16 = getelementptr inbounds %struct.lnode, %struct.lnode* %26, i32 0, i32 2
  store %struct.lnode* null, %struct.lnode** %prev16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.then7
  %27 = load i8*, i8** %ret, align 8
  ret i8* %27
}

; Function Attrs: noinline nounwind optnone
define i8* @list_remove_back(%struct.dllist* %list) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  %ret = alloca i8*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.list_remove_back, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %1, i32 0, i32 0
  %2 = load %struct.lnode*, %struct.lnode** %first, align 8
  %cmp = icmp ne %struct.lnode* %2, null
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.list_remove_back, i32 0, i32 0)) #4
  unreachable

if.end3:                                          ; preds = %if.then1
  %3 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last = getelementptr inbounds %struct.dllist, %struct.dllist* %3, i32 0, i32 1
  %4 = load %struct.lnode*, %struct.lnode** %last, align 8
  %data = getelementptr inbounds %struct.lnode, %struct.lnode* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  store i8* %5, i8** %ret, align 8
  %6 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length = getelementptr inbounds %struct.dllist, %struct.dllist* %6, i32 0, i32 2
  %7 = load i32, i32* %length, align 8
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %length, align 8
  %8 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first4 = getelementptr inbounds %struct.dllist, %struct.dllist* %8, i32 0, i32 0
  %9 = load %struct.lnode*, %struct.lnode** %first4, align 8
  %10 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last5 = getelementptr inbounds %struct.dllist, %struct.dllist* %10, i32 0, i32 1
  %11 = load %struct.lnode*, %struct.lnode** %last5, align 8
  %cmp6 = icmp eq %struct.lnode* %9, %11
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.end3
  %12 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first8 = getelementptr inbounds %struct.dllist, %struct.dllist* %12, i32 0, i32 0
  %13 = load %struct.lnode*, %struct.lnode** %first8, align 8
  %14 = bitcast %struct.lnode* %13 to i8*
  call void @free(i8* %14) #5
  %15 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last9 = getelementptr inbounds %struct.dllist, %struct.dllist* %15, i32 0, i32 1
  store %struct.lnode* null, %struct.lnode** %last9, align 8
  %16 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first10 = getelementptr inbounds %struct.dllist, %struct.dllist* %16, i32 0, i32 0
  store %struct.lnode* null, %struct.lnode** %first10, align 8
  br label %if.end17

if.else11:                                        ; preds = %if.end3
  %17 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last12 = getelementptr inbounds %struct.dllist, %struct.dllist* %17, i32 0, i32 1
  %18 = load %struct.lnode*, %struct.lnode** %last12, align 8
  %prev = getelementptr inbounds %struct.lnode, %struct.lnode* %18, i32 0, i32 2
  %19 = load %struct.lnode*, %struct.lnode** %prev, align 8
  %20 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last13 = getelementptr inbounds %struct.dllist, %struct.dllist* %20, i32 0, i32 1
  store %struct.lnode* %19, %struct.lnode** %last13, align 8
  %21 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last14 = getelementptr inbounds %struct.dllist, %struct.dllist* %21, i32 0, i32 1
  %22 = load %struct.lnode*, %struct.lnode** %last14, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %22, i32 0, i32 1
  %23 = load %struct.lnode*, %struct.lnode** %next, align 8
  %24 = bitcast %struct.lnode* %23 to i8*
  call void @free(i8* %24) #5
  %25 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last15 = getelementptr inbounds %struct.dllist, %struct.dllist* %25, i32 0, i32 1
  %26 = load %struct.lnode*, %struct.lnode** %last15, align 8
  %next16 = getelementptr inbounds %struct.lnode, %struct.lnode* %26, i32 0, i32 1
  store %struct.lnode* null, %struct.lnode** %next16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.then7
  %27 = load i8*, i8** %ret, align 8
  ret i8* %27
}

; Function Attrs: noinline nounwind optnone
define i8* @list_peek_front(%struct.dllist* %list) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 185, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.list_peek_front, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %1, i32 0, i32 0
  %2 = load %struct.lnode*, %struct.lnode** %first, align 8
  %tobool1 = icmp ne %struct.lnode* %2, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.list_peek_front, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first5 = getelementptr inbounds %struct.dllist, %struct.dllist* %3, i32 0, i32 0
  %4 = load %struct.lnode*, %struct.lnode** %first5, align 8
  %data = getelementptr inbounds %struct.lnode, %struct.lnode* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone
define i8* @list_peek_back(%struct.dllist* %list) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.list_peek_back, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last = getelementptr inbounds %struct.dllist, %struct.dllist* %1, i32 0, i32 1
  %2 = load %struct.lnode*, %struct.lnode** %last, align 8
  %tobool1 = icmp ne %struct.lnode* %2, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.list_peek_back, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last5 = getelementptr inbounds %struct.dllist, %struct.dllist* %3, i32 0, i32 1
  %4 = load %struct.lnode*, %struct.lnode** %last5, align 8
  %data = getelementptr inbounds %struct.lnode, %struct.lnode* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone
define zeroext i1 @list_is_empty(%struct.dllist* %list) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 199, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.list_is_empty, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %length = getelementptr inbounds %struct.dllist, %struct.dllist* %1, i32 0, i32 2
  %2 = load i32, i32* %length, align 8
  %cmp = icmp eq i32 %2, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone
define void @list_print(%struct.dllist* %list, i32 %direction) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  %direction.addr = alloca i32, align 4
  %e = alloca %struct.iter*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.list_print, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  %1 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %2 = load i32, i32* %direction.addr, align 4
  %call1 = call %struct.iter* @iter_get(%struct.dllist* %1, i32 %2)
  store %struct.iter* %call1, %struct.iter** %e, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %print = getelementptr inbounds %struct.dllist, %struct.dllist* %3, i32 0, i32 3
  %4 = load void (i8*)*, void (i8*)** %print, align 8
  %5 = load %struct.iter*, %struct.iter** %e, align 8
  %call2 = call i8* @iter_current(%struct.iter* %5)
  call void %4(i8* %call2)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load %struct.iter*, %struct.iter** %e, align 8
  %call3 = call zeroext i1 @iter_next(%struct.iter* %6)
  br i1 %call3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone
define %struct.iter* @iter_get(%struct.dllist* %list, i32 %dir) #0 {
entry:
  %list.addr = alloca %struct.dllist*, align 8
  %dir.addr = alloca i32, align 4
  %e = alloca %struct.iter*, align 8
  store %struct.dllist* %list, %struct.dllist** %list.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %tobool = icmp ne %struct.dllist* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.iter_get, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %call = call zeroext i1 @list_is_empty(%struct.dllist* %1)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.iter_get, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i32, i32* %dir.addr, align 4
  %cmp5 = icmp eq i32 %2, 1
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %3 = load i32, i32* %dir.addr, align 4
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %lor.lhs.false, %if.end4
  br label %if.end11

if.else10:                                        ; preds = %lor.lhs.false
  call void @__assert_fail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 229, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.iter_get, i32 0, i32 0)) #4
  unreachable

if.end11:                                         ; preds = %if.then9
  %call12 = call noalias i8* @malloc(i64 16) #5
  %4 = bitcast i8* %call12 to %struct.iter*
  store %struct.iter* %4, %struct.iter** %e, align 8
  %5 = load %struct.iter*, %struct.iter** %e, align 8
  %tobool13 = icmp ne %struct.iter* %5, null
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end11
  br label %if.end16

if.else15:                                        ; preds = %if.end11
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.iter_get, i32 0, i32 0)) #4
  unreachable

if.end16:                                         ; preds = %if.then14
  %6 = load i32, i32* %dir.addr, align 4
  %7 = load %struct.iter*, %struct.iter** %e, align 8
  %dir17 = getelementptr inbounds %struct.iter, %struct.iter* %7, i32 0, i32 1
  store i32 %6, i32* %dir17, align 8
  %8 = load %struct.iter*, %struct.iter** %e, align 8
  %dir18 = getelementptr inbounds %struct.iter, %struct.iter* %8, i32 0, i32 1
  %9 = load i32, i32* %dir18, align 8
  %cmp19 = icmp eq i32 %9, 0
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end16
  %10 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %first = getelementptr inbounds %struct.dllist, %struct.dllist* %10, i32 0, i32 0
  %11 = load %struct.lnode*, %struct.lnode** %first, align 8
  %12 = load %struct.iter*, %struct.iter** %e, align 8
  %cur = getelementptr inbounds %struct.iter, %struct.iter* %12, i32 0, i32 0
  store %struct.lnode* %11, %struct.lnode** %cur, align 8
  br label %if.end24

if.else22:                                        ; preds = %if.end16
  %13 = load %struct.dllist*, %struct.dllist** %list.addr, align 8
  %last = getelementptr inbounds %struct.dllist, %struct.dllist* %13, i32 0, i32 1
  %14 = load %struct.lnode*, %struct.lnode** %last, align 8
  %15 = load %struct.iter*, %struct.iter** %e, align 8
  %cur23 = getelementptr inbounds %struct.iter, %struct.iter* %15, i32 0, i32 0
  store %struct.lnode* %14, %struct.lnode** %cur23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21
  %16 = load %struct.iter*, %struct.iter** %e, align 8
  ret %struct.iter* %16
}

; Function Attrs: noinline nounwind optnone
define i8* @iter_current(%struct.iter* %e) #0 {
entry:
  %e.addr = alloca %struct.iter*, align 8
  store %struct.iter* %e, %struct.iter** %e.addr, align 8
  %0 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %tobool = icmp ne %struct.iter* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 243, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.iter_current, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %cur = getelementptr inbounds %struct.iter, %struct.iter* %1, i32 0, i32 0
  %2 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %data = getelementptr inbounds %struct.lnode, %struct.lnode* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone
define zeroext i1 @iter_next(%struct.iter* %e) #0 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca %struct.iter*, align 8
  store %struct.iter* %e, %struct.iter** %e.addr, align 8
  %0 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %tobool = icmp ne %struct.iter* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.iter_next, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %dir = getelementptr inbounds %struct.iter, %struct.iter* %1, i32 0, i32 1
  %2 = load i32, i32* %dir, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.end
  %3 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %cur = getelementptr inbounds %struct.iter, %struct.iter* %3, i32 0, i32 0
  %4 = load %struct.lnode*, %struct.lnode** %cur, align 8
  %next = getelementptr inbounds %struct.lnode, %struct.lnode* %4, i32 0, i32 1
  %5 = load %struct.lnode*, %struct.lnode** %next, align 8
  %6 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %cur2 = getelementptr inbounds %struct.iter, %struct.iter* %6, i32 0, i32 0
  store %struct.lnode* %5, %struct.lnode** %cur2, align 8
  br label %if.end6

if.else3:                                         ; preds = %if.end
  %7 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %cur4 = getelementptr inbounds %struct.iter, %struct.iter* %7, i32 0, i32 0
  %8 = load %struct.lnode*, %struct.lnode** %cur4, align 8
  %prev = getelementptr inbounds %struct.lnode, %struct.lnode* %8, i32 0, i32 2
  %9 = load %struct.lnode*, %struct.lnode** %prev, align 8
  %10 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %cur5 = getelementptr inbounds %struct.iter, %struct.iter* %10, i32 0, i32 0
  store %struct.lnode* %9, %struct.lnode** %cur5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else3, %if.then1
  %11 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %cur7 = getelementptr inbounds %struct.iter, %struct.iter* %11, i32 0, i32 0
  %12 = load %struct.lnode*, %struct.lnode** %cur7, align 8
  %cmp8 = icmp eq %struct.lnode* %12, null
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end6
  %13 = load %struct.iter*, %struct.iter** %e.addr, align 8
  %14 = bitcast %struct.iter* %13 to i8*
  call void @free(i8* %14) #5
  store i1 false, i1* %retval, align 1
  br label %return

if.else10:                                        ; preds = %if.end6
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else10, %if.then9
  %15 = load i1, i1* %retval, align 1
  ret i1 %15
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
