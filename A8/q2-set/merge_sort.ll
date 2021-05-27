; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"a_1\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/.seashell/projects/Draft-A8/q1-set/merge_sort.c\00", align 1
@__PRETTY_FUNCTION__.merge = private unnamed_addr constant [39 x i8] c"void merge(int *, int *, int *, int *)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"a_2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"b_1\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"b_2\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"a_1 <= a_2\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"b_2 <= b_2\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"a_2 + 1 == b_1\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__PRETTY_FUNCTION__.merge_sort = private unnamed_addr constant [34 x i8] c"void merge_sort(int *, const int)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"data_len > 0\00", align 1

; Function Attrs: noinline nounwind optnone
define void @merge(i32* %a_1, i32* %a_2, i32* %b_1, i32* %b_2) #0 {
entry:
  %a_1.addr = alloca i32*, align 8
  %a_2.addr = alloca i32*, align 8
  %b_1.addr = alloca i32*, align 8
  %b_2.addr = alloca i32*, align 8
  %tmp = alloca i32*, align 8
  %orig = alloca i32*, align 8
  %t_1 = alloca i32*, align 8
  store i32* %a_1, i32** %a_1.addr, align 8
  store i32* %a_2, i32** %a_2.addr, align 8
  store i32* %b_1, i32** %b_1.addr, align 8
  store i32* %b_2, i32** %b_2.addr, align 8
  %0 = load i32*, i32** %a_1.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32*, i32** %a_2.addr, align 8
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i32*, i32** %b_1.addr, align 8
  %tobool5 = icmp ne i32* %2, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end8:                                          ; preds = %if.then6
  %3 = load i32*, i32** %b_2.addr, align 8
  %tobool9 = icmp ne i32* %3, null
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end8
  br label %if.end12

if.else11:                                        ; preds = %if.end8
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end12:                                         ; preds = %if.then10
  %4 = load i32*, i32** %a_1.addr, align 8
  %5 = load i32*, i32** %a_2.addr, align 8
  %cmp = icmp ule i32* %4, %5
  br i1 %cmp, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end12
  br label %if.end15

if.else14:                                        ; preds = %if.end12
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end15:                                         ; preds = %if.then13
  %6 = load i32*, i32** %b_2.addr, align 8
  %7 = load i32*, i32** %b_2.addr, align 8
  %cmp16 = icmp ule i32* %6, %7
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end15
  br label %if.end19

if.else18:                                        ; preds = %if.end15
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end19:                                         ; preds = %if.then17
  %8 = load i32*, i32** %a_2.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32*, i32** %b_1.addr, align 8
  %cmp20 = icmp eq i32* %add.ptr, %9
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end19
  br label %if.end23

if.else22:                                        ; preds = %if.end19
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end23:                                         ; preds = %if.then21
  %10 = load i32*, i32** %b_2.addr, align 8
  %11 = load i32*, i32** %a_1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %add = add nsw i64 %sub.ptr.div, 1
  %mul = mul i64 4, %add
  %call = call noalias i8* @malloc(i64 %mul) #5
  %12 = bitcast i8* %call to i32*
  store i32* %12, i32** %tmp, align 8
  %13 = load i32*, i32** %tmp, align 8
  %tobool24 = icmp ne i32* %13, null
  br i1 %tobool24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end23
  br label %if.end27

if.else26:                                        ; preds = %if.end23
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.merge, i32 0, i32 0)) #4
  unreachable

if.end27:                                         ; preds = %if.then25
  %14 = load i32*, i32** %a_1.addr, align 8
  store i32* %14, i32** %orig, align 8
  %15 = load i32*, i32** %tmp, align 8
  store i32* %15, i32** %t_1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end36, %if.end27
  %16 = load i32*, i32** %a_1.addr, align 8
  %17 = load i32*, i32** %a_2.addr, align 8
  %cmp28 = icmp ule i32* %16, %17
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32*, i32** %b_1.addr, align 8
  %19 = load i32*, i32** %b_2.addr, align 8
  %cmp29 = icmp ule i32* %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp29, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i32*, i32** %a_1.addr, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %b_1.addr, align 8
  %24 = load i32, i32* %23, align 4
  %cmp30 = icmp slt i32 %22, %24
  br i1 %cmp30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %while.body
  %25 = load i32*, i32** %a_1.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %incdec.ptr, i32** %a_1.addr, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %t_1, align 8
  %incdec.ptr32 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %incdec.ptr32, i32** %t_1, align 8
  store i32 %26, i32* %27, align 4
  br label %if.end36

if.else33:                                        ; preds = %while.body
  %28 = load i32*, i32** %b_1.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr34, i32** %b_1.addr, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %t_1, align 8
  %incdec.ptr35 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %incdec.ptr35, i32** %t_1, align 8
  store i32 %29, i32* %30, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then31
  br label %while.cond

while.end:                                        ; preds = %land.end
  %31 = load i32*, i32** %a_1.addr, align 8
  %32 = load i32*, i32** %a_2.addr, align 8
  %cmp37 = icmp ule i32* %31, %32
  br i1 %cmp37, label %if.then38, label %if.else45

if.then38:                                        ; preds = %while.end
  %33 = load i32*, i32** %t_1, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load i32*, i32** %a_1.addr, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load i32*, i32** %a_2.addr, align 8
  %38 = load i32*, i32** %a_1.addr, align 8
  %sub.ptr.lhs.cast39 = ptrtoint i32* %37 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i32* %38 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = sdiv exact i64 %sub.ptr.sub41, 4
  %add43 = add nsw i64 %sub.ptr.div42, 1
  %mul44 = mul i64 %add43, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %36, i64 %mul44, i1 false)
  br label %if.end52

if.else45:                                        ; preds = %while.end
  %39 = load i32*, i32** %t_1, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load i32*, i32** %b_1.addr, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32*, i32** %b_2.addr, align 8
  %44 = load i32*, i32** %b_1.addr, align 8
  %sub.ptr.lhs.cast46 = ptrtoint i32* %43 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i32* %44 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div49 = sdiv exact i64 %sub.ptr.sub48, 4
  %add50 = add nsw i64 %sub.ptr.div49, 1
  %mul51 = mul i64 %add50, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %42, i64 %mul51, i1 false)
  br label %if.end52

if.end52:                                         ; preds = %if.else45, %if.then38
  %45 = load i32*, i32** %orig, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load i32*, i32** %tmp, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load i32*, i32** %b_2.addr, align 8
  %50 = load i32*, i32** %orig, align 8
  %sub.ptr.lhs.cast53 = ptrtoint i32* %49 to i64
  %sub.ptr.rhs.cast54 = ptrtoint i32* %50 to i64
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54
  %sub.ptr.div56 = sdiv exact i64 %sub.ptr.sub55, 4
  %add57 = add nsw i64 %sub.ptr.div56, 1
  %mul58 = mul i64 %add57, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %48, i64 %mul58, i1 false)
  %51 = load i32*, i32** %tmp, align 8
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* %52) #5
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define void @merge_sort(i32* %data, i32 %data_len) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %data_len.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %data_len, i32* %data_len.addr, align 4
  %0 = load i32*, i32** %data.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.merge_sort, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %data_len.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.merge_sort, i32 0, i32 0)) #4
  unreachable

if.end3:                                          ; preds = %if.then1
  store i32 1, i32* %size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end3
  %2 = load i32, i32* %size, align 4
  %3 = load i32, i32* %data_len.addr, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %while.body, label %while.end29

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %offset, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %cond.end, %while.body
  %4 = load i32, i32* %offset, align 4
  %5 = load i32, i32* %data_len.addr, align 4
  %6 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %5, %6
  %cmp6 = icmp slt i32 %4, %sub
  br i1 %cmp6, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond5
  %7 = load i32*, i32** %data.addr, align 8
  %8 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  %9 = load i32*, i32** %data.addr, align 8
  %10 = load i32, i32* %offset, align 4
  %idx.ext8 = sext i32 %10 to i64
  %add.ptr9 = getelementptr inbounds i32, i32* %9, i64 %idx.ext8
  %11 = load i32, i32* %size, align 4
  %idx.ext10 = sext i32 %11 to i64
  %add.ptr11 = getelementptr inbounds i32, i32* %add.ptr9, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i32, i32* %add.ptr11, i64 -1
  %12 = load i32*, i32** %data.addr, align 8
  %13 = load i32, i32* %offset, align 4
  %idx.ext13 = sext i32 %13 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %12, i64 %idx.ext13
  %14 = load i32, i32* %size, align 4
  %idx.ext15 = sext i32 %14 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %add.ptr14, i64 %idx.ext15
  %15 = load i32*, i32** %data.addr, align 8
  %16 = load i32, i32* %offset, align 4
  %17 = load i32, i32* %size, align 4
  %mul = mul nsw i32 2, %17
  %add = add nsw i32 %16, %mul
  %sub17 = sub nsw i32 %add, 1
  %18 = load i32, i32* %data_len.addr, align 4
  %sub18 = sub nsw i32 %18, 1
  %cmp19 = icmp slt i32 %sub17, %sub18
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body7
  %19 = load i32, i32* %offset, align 4
  %20 = load i32, i32* %size, align 4
  %mul20 = mul nsw i32 2, %20
  %add21 = add nsw i32 %19, %mul20
  %sub22 = sub nsw i32 %add21, 1
  br label %cond.end

cond.false:                                       ; preds = %while.body7
  %21 = load i32, i32* %data_len.addr, align 4
  %sub23 = sub nsw i32 %21, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub22, %cond.true ], [ %sub23, %cond.false ]
  %idx.ext24 = sext i32 %cond to i64
  %add.ptr25 = getelementptr inbounds i32, i32* %15, i64 %idx.ext24
  call void @merge(i32* %add.ptr, i32* %add.ptr12, i32* %add.ptr16, i32* %add.ptr25)
  %22 = load i32, i32* %size, align 4
  %mul26 = mul nsw i32 2, %22
  %23 = load i32, i32* %offset, align 4
  %add27 = add nsw i32 %23, %mul26
  store i32 %add27, i32* %offset, align 4
  br label %while.cond5

while.end:                                        ; preds = %while.cond5
  %24 = load i32, i32* %size, align 4
  %mul28 = mul nsw i32 %24, 2
  store i32 %mul28, i32* %size, align 4
  br label %while.cond

while.end29:                                      ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
