; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binary = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"e >= 0\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A5/q2d-multiplier/binary.c\00", align 1
@__PRETTY_FUNCTION__.pow2 = private unnamed_addr constant [14 x i8] c"int pow2(int)\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"0 <= n && n < pow2(sizeof(struct binary) / sizeof(BOOL) / 2)\00", align 1
@__PRETTY_FUNCTION__.binary_make = private unnamed_addr constant [31 x i8] c"struct binary binary_make(int)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@__PRETTY_FUNCTION__.binary_to_decimal = private unnamed_addr constant [45 x i8] c"int binary_to_decimal(const struct binary *)\00", align 1
@__PRETTY_FUNCTION__.binary_print = private unnamed_addr constant [41 x i8] c"void binary_print(const struct binary *)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" => %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define i32 @pow2(i32 %e) #0 {
entry:
  %e.addr = alloca i32, align 4
  %ret_val = alloca i32, align 4
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32, i32* %e.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i32 0, i32 0), i32 12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__PRETTY_FUNCTION__.pow2, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  store i32 1, i32* %ret_val, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %e.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ret_val, align 4
  %mul = mul nsw i32 %2, 2
  store i32 %mul, i32* %ret_val, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %e.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %e.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %ret_val, align 4
  ret i32 %4
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone
define void @binary_make(%struct.binary* noalias sret %agg.result, i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pField = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %call = call i32 @pow2(i32 4)
  %cmp1 = icmp slt i32 %1, %call
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.binary_make, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %2 = bitcast %struct.binary* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 32, i1 false)
  %_0 = getelementptr inbounds %struct.binary, %struct.binary* %agg.result, i32 0, i32 0
  store i32* %_0, i32** %pField, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %cmp2 = icmp ult i64 %conv, 8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %4, 2
  %5 = load i32*, i32** %pField, align 8
  store i32 %rem, i32* %5, align 4
  %6 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %6, 2
  store i32 %div, i32* %n.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32*, i32** %pField, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr, i32** %pField, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noinline nounwind optnone
define i32 @binary_to_decimal(%struct.binary* %b) #0 {
entry:
  %b.addr = alloca %struct.binary*, align 8
  %value_dec = alloca i32, align 4
  %pField = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.binary* %b, %struct.binary** %b.addr, align 8
  %0 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %tobool = icmp ne %struct.binary* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.binary_to_decimal, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %value_dec, align 4
  %1 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %_0 = getelementptr inbounds %struct.binary, %struct.binary* %1, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %_0, i64 8
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 -1
  store i32* %add.ptr1, i32** %pField, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %value_dec, align 4
  %mul = mul nsw i32 %3, 2
  store i32 %mul, i32* %value_dec, align 4
  %4 = load i32*, i32** %pField, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %value_dec, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %value_dec, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32*, i32** %pField, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %8, i32 -1
  store i32* %incdec.ptr, i32** %pField, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %value_dec, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone
define void @binary_print(%struct.binary* %b) #0 {
entry:
  %b.addr = alloca %struct.binary*, align 8
  %pField = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.binary* %b, %struct.binary** %b.addr, align 8
  %0 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %tobool = icmp ne %struct.binary* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.binary_print, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %_0 = getelementptr inbounds %struct.binary, %struct.binary* %1, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %_0, i64 8
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 -1
  store i32* %add.ptr1, i32** %pField, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %pField, align 8
  %4 = load i32, i32* %3, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %6 = load i32*, i32** %pField, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 -1
  store i32* %incdec.ptr, i32** %pField, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %call3 = call i32 @binary_to_decimal(%struct.binary* %7)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %call3)
  ret void
}

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
