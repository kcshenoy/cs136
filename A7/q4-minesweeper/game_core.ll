; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNKNOWN = constant i32 200, align 4
@MARKED = constant i32 201, align 4
@MINE = constant i32 202, align 4
@PROB = constant i32 5, align 4
@board_width = global i32 -2147483648, align 4
@board_height = global i32 -2147483648, align 4
@complete_board = common global i32* null, align 8
@player_board = common global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"/srv/DFSc/cs-teaching/home/u2/areetz/1205-CS136/s20/skeletons/A7/q4-minesweeper/game_core.c\00", align 1
@__PRETTY_FUNCTION__.create_board = private unnamed_addr constant [53 x i8] c"int *create_board(const int, const int, const _Bool)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"??? COMPLETE BOARD ???\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define i32* @create_board(i32 %width, i32 %height, i1 zeroext %blank) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %blank.addr = alloca i8, align 1
  %board = alloca i32*, align 8
  %i = alloca i32, align 4
  %rnd = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %frombool = zext i1 %blank to i8
  store i8 %frombool, i8* %blank.addr, align 1
  %0 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.create_board, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.create_board, i32 0, i32 0)) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i32, i32* %width.addr, align 4
  store i32 %2, i32* @board_width, align 4
  %3 = load i32, i32* %height.addr, align 4
  store i32 %3, i32* @board_height, align 4
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %4, %5
  %conv = sext i32 %mul to i64
  %mul5 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul5) #5
  %6 = bitcast i8* %call to i32*
  store i32* %6, i32** %board, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  %mul6 = mul nsw i32 %8, %9
  %cmp7 = icmp slt i32 %7, %mul6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call9 = call i32 @rand() #5
  %rem = srem i32 %call9, 5
  %div = sdiv i32 %rem, 4
  store i32 %div, i32* %rnd, align 4
  %10 = load i8, i8* %blank.addr, align 1
  %tobool = trunc i8 %10 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %rnd, align 4
  %mul11 = mul nsw i32 %11, 202
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 200, %cond.true ], [ %mul11, %cond.false ]
  %12 = load i32*, i32** %board, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  store i32 %cond, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32*, i32** %board, align 8
  ret i32* %15
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: noinline nounwind optnone
define zeroext i1 @board_complete() #0 {
entry:
  %retval = alloca i1, align 1
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @board_width, align 4
  %2 = load i32, i32* @board_height, align 4
  %mul = mul nsw i32 %1, %2
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** @complete_board, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %5, 202
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32*, i32** @player_board, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp ne i32 %8, 201
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %9 = load i32*, i32** @complete_board, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ne i32 %11, 202
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %12 = load i32*, i32** @player_board, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %12, i64 %idxprom9
  %14 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %14, 201
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true8, %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true8, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i1, i1* %retval, align 1
  ret i1 %16
}

; Function Attrs: noinline nounwind optnone
define zeroext i1 @mine_at(i32 %c, i32 %r) #0 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %r.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %3 = load i32, i32* @board_width, align 4
  %cmp3 = icmp sge i32 %2, %3
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, i32* %r.addr, align 4
  %5 = load i32, i32* @board_height, align 4
  %cmp5 = icmp sge i32 %4, %5
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %lor.lhs.false4
  %6 = load i32*, i32** @complete_board, align 8
  %7 = load i32, i32* %c.addr, align 4
  %8 = load i32, i32* @board_width, align 4
  %9 = load i32, i32* %r.addr, align 4
  %mul = mul nsw i32 %8, %9
  %add = add nsw i32 %7, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp6 = icmp eq i32 %10, 202
  store i1 %cmp6, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i1, i1* %retval, align 1
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone
define void @game_start(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %call = call i32* @create_board(i32 %0, i32 %1, i1 zeroext false)
  store i32* %call, i32** @complete_board, align 8
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %height.addr, align 4
  %call1 = call i32* @create_board(i32 %2, i32 %3, i1 zeroext true)
  store i32* %call1, i32** @player_board, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @game_start_seed(i32 %width, i32 %height, i32 %seed) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %seed.addr = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  call void @srand(i32 %0) #5
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %call = call i32* @create_board(i32 %1, i32 %2, i1 zeroext false)
  store i32* %call, i32** @complete_board, align 8
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  %call1 = call i32* @create_board(i32 %3, i32 %4, i1 zeroext true)
  store i32* %call1, i32** @player_board, align 8
  ret void
}

; Function Attrs: nounwind
declare void @srand(i32) #2

; Function Attrs: noinline nounwind optnone
define void @game_end() #0 {
entry:
  %0 = load i32*, i32** @player_board, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** @player_board, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** @complete_board, align 8
  %cmp1 = icmp ne i32* %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32*, i32** @complete_board, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define void @board_debug() #0 {
entry:
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* @board_height, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @board_width, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32*, i32** @complete_board, align 8
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @board_width, align 4
  %7 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %5, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp4 = icmp eq i32 %8, 202
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body3
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @board_width, align 4
  %sub = sub nsw i32 %10, 1
  %cmp7 = icmp slt i32 %9, %sub
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %12 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond

for.end14:                                        ; preds = %for.cond
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #3

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
