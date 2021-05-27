; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"/u2/cs136/nanaeem/A9/_mirror.c\00", align 1
@__PRETTY_FUNCTION__.mirror = private unnamed_addr constant [20 x i8] c"void mirror(char *)\00", align 1
@__PRETTY_FUNCTION__.undo_mirror = private unnamed_addr constant [25 x i8] c"void undo_mirror(char *)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"len%2 == 0\00", align 1

; Function Attrs: nounwind
define void @mirror(i8* %str) #0 {
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %2, label %3

; <label>:2:                                      ; preds = %0
  br label %5

; <label>:3:                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.mirror, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %5

; <label>:5:                                      ; preds = %4, %2
  %6 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %6) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7:                                      ; preds = %18, %5
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %10, label %20

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %sub, %12
  %idxprom = sext i32 %sub2 to i64
  %13 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %15 = load i32, i32* %len, align 4
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, %16
  %idxprom3 = sext i32 %add to i64
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %17, i64 %idxprom3
  store i8 %14, i8* %arrayidx4, align 1
  br label %18

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %7

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %len, align 4
  %mul = mul nsw i32 2, %21
  %idxprom5 = sext i32 %mul to i64
  %22 = load i8*, i8** %str.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %22, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
define void @undo_mirror(i8* %str) #0 {
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %newlen = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %2, label %3

; <label>:2:                                      ; preds = %0
  br label %5

; <label>:3:                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.undo_mirror, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %5

; <label>:5:                                      ; preds = %4, %2
  %6 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %6) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %7 = load i32, i32* %len, align 4
  %rem = srem i32 %7, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %8, label %9

; <label>:8:                                      ; preds = %5
  br label %11

; <label>:9:                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.undo_mirror, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11:                                     ; preds = %10, %8
  %12 = load i32, i32* %len, align 4
  %div = sdiv i32 %12, 2
  store i32 %div, i32* %newlen, align 4
  %13 = load i32, i32* %newlen, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  ret void
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1 "}
