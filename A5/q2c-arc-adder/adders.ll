; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binary = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A5/q2c-arc-adder/adders.c\00", align 1
@__PRETTY_FUNCTION__.HALF_ADDER = private unnamed_addr constant [52 x i8] c"void HALF_ADDER(const int, const int, int *, int *)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"carry\00", align 1
@__PRETTY_FUNCTION__.FULL_ADDER = private unnamed_addr constant [63 x i8] c"void FULL_ADDER(const int, const int, const int, int *, int *)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"carry_out\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@__PRETTY_FUNCTION__.NIBBLE_ADDER = private unnamed_addr constant [80 x i8] c"struct binary NIBBLE_ADDER(const struct binary *, const struct binary *, int *)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1

; Function Attrs: noinline nounwind optnone
define void @HALF_ADDER(i32 %a, i32 %b, i32* %sum, i32* %carry) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %sum.addr = alloca i32*, align 8
  %carry.addr = alloca i32*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32* %sum, i32** %sum.addr, align 8
  store i32* %carry, i32** %carry.addr, align 8
  %0 = load i32*, i32** %sum.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.HALF_ADDER, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32*, i32** %carry.addr, align 8
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.HALF_ADDER, i32 0, i32 0)) #3
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %call = call i32 @XOR(i32 %2, i32 %3)
  %4 = load i32*, i32** %sum.addr, align 8
  store i32 %call, i32* %4, align 4
  %5 = load i32, i32* %a.addr, align 4
  %6 = load i32, i32* %b.addr, align 4
  %call5 = call i32 @AND(i32 %5, i32 %6)
  %7 = load i32*, i32** %carry.addr, align 8
  store i32 %call5, i32* %7, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

declare i32 @XOR(i32, i32) #2

declare i32 @AND(i32, i32) #2

; Function Attrs: noinline nounwind optnone
define void @FULL_ADDER(i32 %a, i32 %b, i32 %carry_in, i32* %sum, i32* %carry_out) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %carry_in.addr = alloca i32, align 4
  %sum.addr = alloca i32*, align 8
  %carry_out.addr = alloca i32*, align 8
  %carry_intermediate = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %carry_in, i32* %carry_in.addr, align 4
  store i32* %sum, i32** %sum.addr, align 8
  store i32* %carry_out, i32** %carry_out.addr, align 8
  %0 = load i32*, i32** %sum.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 13, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.FULL_ADDER, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32*, i32** %carry_out.addr, align 8
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.FULL_ADDER, i32 0, i32 0)) #3
  unreachable

if.end4:                                          ; preds = %if.then2
  store i32 0, i32* %carry_intermediate, align 4
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %4 = load i32*, i32** %sum.addr, align 8
  call void @HALF_ADDER(i32 %2, i32 %3, i32* %4, i32* %carry_intermediate)
  %5 = load i32, i32* %carry_in.addr, align 4
  %6 = load i32*, i32** %sum.addr, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %sum.addr, align 8
  %9 = load i32*, i32** %carry_out.addr, align 8
  call void @HALF_ADDER(i32 %5, i32 %7, i32* %8, i32* %9)
  %10 = load i32*, i32** %carry_out.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %carry_intermediate, align 4
  %call = call i32 @OR(i32 %11, i32 %12)
  %13 = load i32*, i32** %carry_out.addr, align 8
  store i32 %call, i32* %13, align 4
  ret void
}

declare i32 @OR(i32, i32) #2

; Function Attrs: noinline nounwind optnone
define void @NIBBLE_ADDER(%struct.binary* noalias sret %agg.result, %struct.binary* %a, %struct.binary* %b, i32* %overflow) #0 {
entry:
  %a.addr = alloca %struct.binary*, align 8
  %b.addr = alloca %struct.binary*, align 8
  %overflow.addr = alloca i32*, align 8
  store %struct.binary* %a, %struct.binary** %a.addr, align 8
  store %struct.binary* %b, %struct.binary** %b.addr, align 8
  store i32* %overflow, i32** %overflow.addr, align 8
  %0 = load %struct.binary*, %struct.binary** %a.addr, align 8
  %tobool = icmp ne %struct.binary* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @__PRETTY_FUNCTION__.NIBBLE_ADDER, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %tobool1 = icmp ne %struct.binary* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @__PRETTY_FUNCTION__.NIBBLE_ADDER, i32 0, i32 0)) #3
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i32*, i32** %overflow.addr, align 8
  %tobool5 = icmp ne i32* %2, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @__PRETTY_FUNCTION__.NIBBLE_ADDER, i32 0, i32 0)) #3
  unreachable

if.end8:                                          ; preds = %if.then6
  call void @binary_make(%struct.binary* sret %agg.result, i32 0)
  %3 = load %struct.binary*, %struct.binary** %a.addr, align 8
  %_0 = getelementptr inbounds %struct.binary, %struct.binary* %3, i32 0, i32 0
  %4 = load i32, i32* %_0, align 4
  %5 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %_09 = getelementptr inbounds %struct.binary, %struct.binary* %5, i32 0, i32 0
  %6 = load i32, i32* %_09, align 4
  %_010 = getelementptr inbounds %struct.binary, %struct.binary* %agg.result, i32 0, i32 0
  %7 = load i32*, i32** %overflow.addr, align 8
  call void @FULL_ADDER(i32 %4, i32 %6, i32 0, i32* %_010, i32* %7)
  %8 = load %struct.binary*, %struct.binary** %a.addr, align 8
  %_1 = getelementptr inbounds %struct.binary, %struct.binary* %8, i32 0, i32 1
  %9 = load i32, i32* %_1, align 4
  %10 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %_111 = getelementptr inbounds %struct.binary, %struct.binary* %10, i32 0, i32 1
  %11 = load i32, i32* %_111, align 4
  %12 = load i32*, i32** %overflow.addr, align 8
  %13 = load i32, i32* %12, align 4
  %_112 = getelementptr inbounds %struct.binary, %struct.binary* %agg.result, i32 0, i32 1
  %14 = load i32*, i32** %overflow.addr, align 8
  call void @FULL_ADDER(i32 %9, i32 %11, i32 %13, i32* %_112, i32* %14)
  %15 = load %struct.binary*, %struct.binary** %a.addr, align 8
  %_2 = getelementptr inbounds %struct.binary, %struct.binary* %15, i32 0, i32 2
  %16 = load i32, i32* %_2, align 4
  %17 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %_213 = getelementptr inbounds %struct.binary, %struct.binary* %17, i32 0, i32 2
  %18 = load i32, i32* %_213, align 4
  %19 = load i32*, i32** %overflow.addr, align 8
  %20 = load i32, i32* %19, align 4
  %_214 = getelementptr inbounds %struct.binary, %struct.binary* %agg.result, i32 0, i32 2
  %21 = load i32*, i32** %overflow.addr, align 8
  call void @FULL_ADDER(i32 %16, i32 %18, i32 %20, i32* %_214, i32* %21)
  %22 = load %struct.binary*, %struct.binary** %a.addr, align 8
  %_3 = getelementptr inbounds %struct.binary, %struct.binary* %22, i32 0, i32 3
  %23 = load i32, i32* %_3, align 4
  %24 = load %struct.binary*, %struct.binary** %b.addr, align 8
  %_315 = getelementptr inbounds %struct.binary, %struct.binary* %24, i32 0, i32 3
  %25 = load i32, i32* %_315, align 4
  %26 = load i32*, i32** %overflow.addr, align 8
  %27 = load i32, i32* %26, align 4
  %_316 = getelementptr inbounds %struct.binary, %struct.binary* %agg.result, i32 0, i32 3
  %28 = load i32*, i32** %overflow.addr, align 8
  call void @FULL_ADDER(i32 %23, i32 %25, i32 %27, i32* %_316, i32* %28)
  ret void
}

declare void @binary_make(%struct.binary* sret, i32) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
