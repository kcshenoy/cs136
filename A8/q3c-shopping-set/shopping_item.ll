; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shpg_item = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A8/q3c-shopping-set/shopping_item.c\00", align 1
@__PRETTY_FUNCTION__.item_create = private unnamed_addr constant [59 x i8] c"struct shpg_item *item_create(const char *, int, int, int)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"amount >= 0\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"1 <= priority && priority <= 10\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"price >= 1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@__PRETTY_FUNCTION__.item_clone = private unnamed_addr constant [55 x i8] c"struct shpg_item *item_clone(const struct shpg_item *)\00", align 1
@__PRETTY_FUNCTION__.item_read = private unnamed_addr constant [35 x i8] c"int item_read(struct shpg_item **)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__PRETTY_FUNCTION__.item_destroy = private unnamed_addr constant [38 x i8] c"void item_destroy(struct shpg_item *)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"item->name\00", align 1
@__PRETTY_FUNCTION__.item_print = private unnamed_addr constant [42 x i8] c"void item_print(const struct shpg_item *)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: %dx, $%d.%02d, <%d>\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@__PRETTY_FUNCTION__.comp_by_name = private unnamed_addr constant [69 x i8] c"int comp_by_name(const struct shpg_item *, const struct shpg_item *)\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"i2\00", align 1
@__PRETTY_FUNCTION__.comp_by_priority = private unnamed_addr constant [73 x i8] c"int comp_by_priority(const struct shpg_item *, const struct shpg_item *)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@__PRETTY_FUNCTION__.item_combine = private unnamed_addr constant [64 x i8] c"void item_combine(struct shpg_item *, const struct shpg_item *)\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"source\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.shpg_item* @item_create(i8* %name, i32 %amount, i32 %price, i32 %priority) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %amount.addr = alloca i32, align 4
  %price.addr = alloca i32, align 4
  %priority.addr = alloca i32, align 4
  %item = alloca %struct.shpg_item*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %amount, i32* %amount.addr, align 4
  store i32 %price, i32* %price.addr, align 4
  store i32 %priority, i32* %priority.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.item_create, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %amount.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.item_create, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, i32* %priority.addr, align 4
  %cmp4 = icmp sle i32 1, %2
  br i1 %cmp4, label %land.lhs.true, label %if.else7

land.lhs.true:                                    ; preds = %if.end3
  %3 = load i32, i32* %priority.addr, align 4
  %cmp5 = icmp sle i32 %3, 10
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %land.lhs.true
  br label %if.end8

if.else7:                                         ; preds = %land.lhs.true, %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.item_create, i32 0, i32 0)) #5
  unreachable

if.end8:                                          ; preds = %if.then6
  %4 = load i32, i32* %price.addr, align 4
  %cmp9 = icmp sge i32 %4, 1
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end8
  br label %if.end12

if.else11:                                        ; preds = %if.end8
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.item_create, i32 0, i32 0)) #5
  unreachable

if.end12:                                         ; preds = %if.then10
  %call = call noalias i8* @malloc(i64 24) #6
  %5 = bitcast i8* %call to %struct.shpg_item*
  store %struct.shpg_item* %5, %struct.shpg_item** %item, align 8
  %6 = load %struct.shpg_item*, %struct.shpg_item** %item, align 8
  %tobool13 = icmp ne %struct.shpg_item* %6, null
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end12
  br label %if.end16

if.else15:                                        ; preds = %if.end12
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.item_create, i32 0, i32 0)) #5
  unreachable

if.end16:                                         ; preds = %if.then14
  %7 = load i8*, i8** %name.addr, align 8
  %call17 = call i64 @strlen(i8* %7) #7
  %add = add i64 %call17, 1
  %mul = mul i64 1, %add
  %call18 = call noalias i8* @malloc(i64 %mul) #6
  %8 = load %struct.shpg_item*, %struct.shpg_item** %item, align 8
  %name19 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %8, i32 0, i32 0
  store i8* %call18, i8** %name19, align 8
  %9 = load %struct.shpg_item*, %struct.shpg_item** %item, align 8
  %name20 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %9, i32 0, i32 0
  %10 = load i8*, i8** %name20, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %call21 = call i8* @strcpy(i8* %10, i8* %11) #6
  %12 = load i32, i32* %amount.addr, align 4
  %13 = load %struct.shpg_item*, %struct.shpg_item** %item, align 8
  %amount22 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %13, i32 0, i32 1
  store i32 %12, i32* %amount22, align 8
  %14 = load i32, i32* %price.addr, align 4
  %15 = load %struct.shpg_item*, %struct.shpg_item** %item, align 8
  %price23 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %15, i32 0, i32 2
  store i32 %14, i32* %price23, align 4
  %16 = load i32, i32* %priority.addr, align 4
  %17 = load %struct.shpg_item*, %struct.shpg_item** %item, align 8
  %priority24 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %17, i32 0, i32 3
  store i32 %16, i32* %priority24, align 8
  %18 = load %struct.shpg_item*, %struct.shpg_item** %item, align 8
  ret %struct.shpg_item* %18
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define %struct.shpg_item* @item_clone(%struct.shpg_item* %item) #0 {
entry:
  %item.addr = alloca %struct.shpg_item*, align 8
  store %struct.shpg_item* %item, %struct.shpg_item** %item.addr, align 8
  %0 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %tobool = icmp ne %struct.shpg_item* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.item_clone, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %name = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %amount = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %3, i32 0, i32 1
  %4 = load i32, i32* %amount, align 8
  %5 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %price = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %5, i32 0, i32 2
  %6 = load i32, i32* %price, align 4
  %7 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %priority = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %7, i32 0, i32 3
  %8 = load i32, i32* %priority, align 8
  %call = call %struct.shpg_item* @item_create(i8* %2, i32 %4, i32 %6, i32 %8)
  ret %struct.shpg_item* %call
}

; Function Attrs: noinline nounwind optnone
define i32 @item_read(%struct.shpg_item** %item) #0 {
entry:
  %item.addr = alloca %struct.shpg_item**, align 8
  %name = alloca [43 x i8], align 16
  %amount = alloca i32, align 4
  %priority = alloca i32, align 4
  %price = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct.shpg_item** %item, %struct.shpg_item*** %item.addr, align 8
  %0 = load %struct.shpg_item**, %struct.shpg_item*** %item.addr, align 8
  %tobool = icmp ne %struct.shpg_item** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.item_read, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  store i32 -2147483648, i32* %amount, align 4
  store i32 -2147483648, i32* %priority, align 4
  store i32 -2147483648, i32* %price, align 4
  store i32 0, i32* %success, align 4
  %arraydecay = getelementptr inbounds [43 x i8], [43 x i8]* %name, i32 0, i32 0
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay)
  %1 = load i32, i32* %success, align 4
  %add = add nsw i32 %1, %call
  store i32 %add, i32* %success, align 4
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %amount)
  %2 = load i32, i32* %success, align 4
  %add2 = add nsw i32 %2, %call1
  store i32 %add2, i32* %success, align 4
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %price)
  %3 = load i32, i32* %success, align 4
  %add4 = add nsw i32 %3, %call3
  store i32 %add4, i32* %success, align 4
  %call5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %priority)
  %4 = load i32, i32* %success, align 4
  %add6 = add nsw i32 %4, %call5
  store i32 %add6, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [43 x i8], [43 x i8]* %name, i32 0, i32 0
  %6 = load i32, i32* %amount, align 4
  %7 = load i32, i32* %price, align 4
  %8 = load i32, i32* %priority, align 4
  %call9 = call %struct.shpg_item* @item_create(i8* %arraydecay8, i32 %6, i32 %7, i32 %8)
  %9 = load %struct.shpg_item**, %struct.shpg_item*** %item.addr, align 8
  store %struct.shpg_item* %call9, %struct.shpg_item** %9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %10 = load i32, i32* %success, align 4
  %cmp11 = icmp eq i32 %10, 4
  %conv = zext i1 %cmp11 to i32
  ret i32 %conv
}

declare i32 @__isoc99_scanf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone
define void @item_destroy(%struct.shpg_item* %item) #0 {
entry:
  %item.addr = alloca %struct.shpg_item*, align 8
  store %struct.shpg_item* %item, %struct.shpg_item** %item.addr, align 8
  %0 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %tobool = icmp ne %struct.shpg_item* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.item_destroy, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %name = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.item_destroy, i32 0, i32 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %name5 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %3, i32 0, i32 0
  %4 = load i8*, i8** %name5, align 8
  call void @free(i8* %4) #6
  %5 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %6 = bitcast %struct.shpg_item* %5 to i8*
  call void @free(i8* %6) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define void @item_print(%struct.shpg_item* %item) #0 {
entry:
  %item.addr = alloca %struct.shpg_item*, align 8
  store %struct.shpg_item* %item, %struct.shpg_item** %item.addr, align 8
  %0 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %tobool = icmp ne %struct.shpg_item* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.item_print, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %name = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.item_print, i32 0, i32 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %name5 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %3, i32 0, i32 0
  %4 = load i8*, i8** %name5, align 8
  %5 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %amount = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %5, i32 0, i32 1
  %6 = load i32, i32* %amount, align 8
  %7 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %price = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %7, i32 0, i32 2
  %8 = load i32, i32* %price, align 4
  %div = sdiv i32 %8, 100
  %9 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %price6 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %9, i32 0, i32 2
  %10 = load i32, i32* %price6, align 4
  %rem = srem i32 %10, 100
  %11 = load %struct.shpg_item*, %struct.shpg_item** %item.addr, align 8
  %priority = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %11, i32 0, i32 3
  %12 = load i32, i32* %priority, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* %4, i32 %6, i32 %div, i32 %rem, i32 %12)
  ret void
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone
define signext i8 @to_lower(i8 signext %c) #0 {
entry:
  %retval = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 65, %conv
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 90
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, i8* %c.addr, align 1
  %conv5 = sext i8 %2 to i32
  %sub = sub nsw i32 %conv5, 65
  %add = add nsw i32 %sub, 97
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i8, i8* %c.addr, align 1
  store i8 %3, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %retval, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone
define signext i8 @to_upper(i8 signext %c) #0 {
entry:
  %retval = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 97, %conv
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, i8* %c.addr, align 1
  %conv5 = sext i8 %2 to i32
  %sub = sub nsw i32 %conv5, 97
  %add = add nsw i32 %sub, 65
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i8, i8* %c.addr, align 1
  store i8 %3, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %retval, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone
define i32 @comp_by_name(%struct.shpg_item* %i1, %struct.shpg_item* %i2) #0 {
entry:
  %retval = alloca i32, align 4
  %i1.addr = alloca %struct.shpg_item*, align 8
  %i2.addr = alloca %struct.shpg_item*, align 8
  %pA = alloca i8*, align 8
  %pB = alloca i8*, align 8
  store %struct.shpg_item* %i1, %struct.shpg_item** %i1.addr, align 8
  store %struct.shpg_item* %i2, %struct.shpg_item** %i2.addr, align 8
  %0 = load %struct.shpg_item*, %struct.shpg_item** %i1.addr, align 8
  %tobool = icmp ne %struct.shpg_item* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 92, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.comp_by_name, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.shpg_item*, %struct.shpg_item** %i2.addr, align 8
  %tobool1 = icmp ne %struct.shpg_item* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 93, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.comp_by_name, i32 0, i32 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.shpg_item*, %struct.shpg_item** %i1.addr, align 8
  %name = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  store i8* %3, i8** %pA, align 8
  %4 = load %struct.shpg_item*, %struct.shpg_item** %i2.addr, align 8
  %name5 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %4, i32 0, i32 0
  %5 = load i8*, i8** %name5, align 8
  store i8* %5, i8** %pB, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i8*, i8** %pA, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i8*, i8** %pB, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load i8*, i8** %pA, align 8
  %12 = load i8, i8* %11, align 1
  %call = call signext i8 @to_upper(i8 signext %12)
  %conv10 = sext i8 %call to i32
  %13 = load i8*, i8** %pB, align 8
  %14 = load i8, i8* %13, align 1
  %call11 = call signext i8 @to_upper(i8 signext %14)
  %conv12 = sext i8 %call11 to i32
  %cmp13 = icmp ne i32 %conv10, %conv12
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %for.body
  %15 = load i8*, i8** %pA, align 8
  %16 = load i8, i8* %15, align 1
  %call16 = call signext i8 @to_upper(i8 signext %16)
  %conv17 = sext i8 %call16 to i32
  %17 = load i8*, i8** %pB, align 8
  %18 = load i8, i8* %17, align 1
  %call18 = call signext i8 @to_upper(i8 signext %18)
  %conv19 = sext i8 %call18 to i32
  %sub = sub nsw i32 %conv17, %conv19
  %call20 = call i32 @sgn(i32 %sub)
  store i32 %call20, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %19 = load i8*, i8** %pA, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %pA, align 8
  %20 = load i8*, i8** %pB, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr22, i8** %pB, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %21 = load i8*, i8** %pA, align 8
  %22 = load i8, i8* %21, align 1
  %call23 = call signext i8 @to_upper(i8 signext %22)
  %conv24 = sext i8 %call23 to i32
  %23 = load i8*, i8** %pB, align 8
  %24 = load i8, i8* %23, align 1
  %call25 = call signext i8 @to_upper(i8 signext %24)
  %conv26 = sext i8 %call25 to i32
  %sub27 = sub nsw i32 %conv24, %conv26
  %call28 = call i32 @sgn(i32 %sub27)
  store i32 %call28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then15
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone
define internal i32 @sgn(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 0, %0
  %conv = zext i1 %cmp to i32
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  %conv2 = zext i1 %cmp1 to i32
  %sub = sub nsw i32 %conv, %conv2
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone
define i32 @comp_by_priority(%struct.shpg_item* %i1, %struct.shpg_item* %i2) #0 {
entry:
  %i1.addr = alloca %struct.shpg_item*, align 8
  %i2.addr = alloca %struct.shpg_item*, align 8
  store %struct.shpg_item* %i1, %struct.shpg_item** %i1.addr, align 8
  store %struct.shpg_item* %i2, %struct.shpg_item** %i2.addr, align 8
  %0 = load %struct.shpg_item*, %struct.shpg_item** %i1.addr, align 8
  %tobool = icmp ne %struct.shpg_item* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 104, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.comp_by_priority, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.shpg_item*, %struct.shpg_item** %i2.addr, align 8
  %tobool1 = icmp ne %struct.shpg_item* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.comp_by_priority, i32 0, i32 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.shpg_item*, %struct.shpg_item** %i2.addr, align 8
  %priority = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %2, i32 0, i32 3
  %3 = load i32, i32* %priority, align 8
  %4 = load %struct.shpg_item*, %struct.shpg_item** %i1.addr, align 8
  %priority5 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %4, i32 0, i32 3
  %5 = load i32, i32* %priority5, align 8
  %sub = sub nsw i32 %3, %5
  %call = call i32 @sgn(i32 %sub)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone
define void @item_combine(%struct.shpg_item* %dest, %struct.shpg_item* %source) #0 {
entry:
  %dest.addr = alloca %struct.shpg_item*, align 8
  %source.addr = alloca %struct.shpg_item*, align 8
  %new_amount = alloca i32, align 4
  %new_price = alloca i32, align 4
  store %struct.shpg_item* %dest, %struct.shpg_item** %dest.addr, align 8
  store %struct.shpg_item* %source, %struct.shpg_item** %source.addr, align 8
  %0 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %tobool = icmp ne %struct.shpg_item* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 110, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.item_combine, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.shpg_item*, %struct.shpg_item** %source.addr, align 8
  %tobool1 = icmp ne %struct.shpg_item* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.item_combine, i32 0, i32 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %3 = load %struct.shpg_item*, %struct.shpg_item** %source.addr, align 8
  %call = call i32 @comp_by_name(%struct.shpg_item* %2, %struct.shpg_item* %3)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end4
  %4 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %amount = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %4, i32 0, i32 1
  %5 = load i32, i32* %amount, align 8
  %6 = load %struct.shpg_item*, %struct.shpg_item** %source.addr, align 8
  %amount6 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %6, i32 0, i32 1
  %7 = load i32, i32* %amount6, align 8
  %add = add nsw i32 %5, %7
  store i32 %add, i32* %new_amount, align 4
  %8 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %amount7 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %8, i32 0, i32 1
  %9 = load i32, i32* %amount7, align 8
  %10 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %price = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %10, i32 0, i32 2
  %11 = load i32, i32* %price, align 4
  %mul = mul nsw i32 %9, %11
  %12 = load %struct.shpg_item*, %struct.shpg_item** %source.addr, align 8
  %amount8 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %12, i32 0, i32 1
  %13 = load i32, i32* %amount8, align 8
  %14 = load %struct.shpg_item*, %struct.shpg_item** %source.addr, align 8
  %price9 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %14, i32 0, i32 2
  %15 = load i32, i32* %price9, align 4
  %mul10 = mul nsw i32 %13, %15
  %add11 = add nsw i32 %mul, %mul10
  %16 = load i32, i32* %new_amount, align 4
  %div = sdiv i32 %add11, %16
  store i32 %div, i32* %new_price, align 4
  %17 = load i32, i32* %new_amount, align 4
  %18 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %amount12 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %18, i32 0, i32 1
  store i32 %17, i32* %amount12, align 8
  %19 = load i32, i32* %new_price, align 4
  %20 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %price13 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %20, i32 0, i32 2
  store i32 %19, i32* %price13, align 4
  %21 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %priority = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %21, i32 0, i32 3
  %22 = load i32, i32* %priority, align 8
  %23 = load %struct.shpg_item*, %struct.shpg_item** %source.addr, align 8
  %priority14 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %23, i32 0, i32 3
  %24 = load i32, i32* %priority14, align 8
  %cmp15 = icmp sgt i32 %22, %24
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %25 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %priority16 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %25, i32 0, i32 3
  %26 = load i32, i32* %priority16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %27 = load %struct.shpg_item*, %struct.shpg_item** %source.addr, align 8
  %priority17 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %27, i32 0, i32 3
  %28 = load i32, i32* %priority17, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %28, %cond.false ]
  %29 = load %struct.shpg_item*, %struct.shpg_item** %dest.addr, align 8
  %priority18 = getelementptr inbounds %struct.shpg_item, %struct.shpg_item* %29, i32 0, i32 3
  store i32 %cond, i32* %priority18, align 8
  br label %if.end19

if.end19:                                         ; preds = %cond.end, %if.end4
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
