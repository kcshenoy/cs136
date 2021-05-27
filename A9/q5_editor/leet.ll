; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"/u2/cs136/nanaeem/A9/_leet.c\00", align 1
@__PRETTY_FUNCTION__.leet = private unnamed_addr constant [18 x i8] c"void leet(char *)\00", align 1
@__PRETTY_FUNCTION__.undo_leet = private unnamed_addr constant [23 x i8] c"void undo_leet(char *)\00", align 1

; Function Attrs: nounwind
define void @leet(i8* %str) #0 {
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j40 = alloca i32, align 4
  %j62 = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %2, label %3

; <label>:2:                                      ; preds = %0
  br label %5

; <label>:3:                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__PRETTY_FUNCTION__.leet, i32 0, i32 0)) #3
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

; <label>:7:                                      ; preds = %118, %5
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %10, label %120

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %13 to i32
  %cmp3 = icmp eq i32 %conv2, 65
  br i1 %cmp3, label %14, label %35

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %len, align 4
  %add = add nsw i32 %15, 2
  store i32 %add, i32* %j, align 4
  br label %16

; <label>:16:                                     ; preds = %25, %14
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %18, 1
  %cmp6 = icmp sgt i32 %17, %add5
  br i1 %cmp6, label %19, label %27

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %20, 2
  %idxprom8 = sext i32 %sub to i64
  %21 = load i8*, i8** %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %21, i64 %idxprom8
  %22 = load i8, i8* %arrayidx9, align 1
  %23 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load i8*, i8** %str.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %24, i64 %idxprom10
  store i8 %22, i8* %arrayidx11, align 1
  br label %25

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %j, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %j, align 4
  br label %16

; <label>:27:                                     ; preds = %16
  %28 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %28 to i64
  %29 = load i8*, i8** %str.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %29, i64 %idxprom12
  store i8 47, i8* %arrayidx13, align 1
  %30 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %30, 1
  %idxprom15 = sext i32 %add14 to i64
  %31 = load i8*, i8** %str.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %31, i64 %idxprom15
  store i8 45, i8* %arrayidx16, align 1
  %32 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %32, 2
  %idxprom18 = sext i32 %add17 to i64
  %33 = load i8*, i8** %str.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %33, i64 %idxprom18
  store i8 92, i8* %arrayidx19, align 1
  %34 = load i32, i32* %len, align 4
  %add20 = add nsw i32 %34, 2
  store i32 %add20, i32* %len, align 4
  br label %117

; <label>:35:                                     ; preds = %10
  %36 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %36 to i64
  %37 = load i8*, i8** %str.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %37, i64 %idxprom21
  %38 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %38 to i32
  %cmp24 = icmp eq i32 %conv23, 69
  br i1 %cmp24, label %39, label %42

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %40 to i64
  %41 = load i8*, i8** %str.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %41, i64 %idxprom26
  store i8 51, i8* %arrayidx27, align 1
  br label %116

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %43 to i64
  %44 = load i8*, i8** %str.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %44, i64 %idxprom28
  %45 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %45 to i32
  %cmp31 = icmp eq i32 %conv30, 73
  br i1 %cmp31, label %46, label %49

; <label>:46:                                     ; preds = %42
  %47 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %47 to i64
  %48 = load i8*, i8** %str.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %48, i64 %idxprom33
  store i8 33, i8* %arrayidx34, align 1
  br label %115

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %50 to i64
  %51 = load i8*, i8** %str.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %51, i64 %idxprom35
  %52 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %52 to i32
  %cmp38 = icmp eq i32 %conv37, 79
  br i1 %cmp38, label %53, label %72

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %len, align 4
  %add41 = add nsw i32 %54, 1
  store i32 %add41, i32* %j40, align 4
  br label %55

; <label>:55:                                     ; preds = %64, %53
  %56 = load i32, i32* %j40, align 4
  %57 = load i32, i32* %i, align 4
  %add42 = add nsw i32 %57, 1
  %cmp43 = icmp sgt i32 %56, %add42
  br i1 %cmp43, label %58, label %66

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %j40, align 4
  %sub45 = sub nsw i32 %59, 1
  %idxprom46 = sext i32 %sub45 to i64
  %60 = load i8*, i8** %str.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %60, i64 %idxprom46
  %61 = load i8, i8* %arrayidx47, align 1
  %62 = load i32, i32* %j40, align 4
  %idxprom48 = sext i32 %62 to i64
  %63 = load i8*, i8** %str.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %63, i64 %idxprom48
  store i8 %61, i8* %arrayidx49, align 1
  br label %64

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %j40, align 4
  %dec50 = add nsw i32 %65, -1
  store i32 %dec50, i32* %j40, align 4
  br label %55

; <label>:66:                                     ; preds = %55
  %67 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %67 to i64
  %68 = load i8*, i8** %str.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %68, i64 %idxprom51
  store i8 91, i8* %arrayidx52, align 1
  %69 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %69, 1
  %idxprom54 = sext i32 %add53 to i64
  %70 = load i8*, i8** %str.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %70, i64 %idxprom54
  store i8 93, i8* %arrayidx55, align 1
  %71 = load i32, i32* %len, align 4
  %add56 = add nsw i32 %71, 1
  store i32 %add56, i32* %len, align 4
  br label %114

; <label>:72:                                     ; preds = %49
  %73 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %73 to i64
  %74 = load i8*, i8** %str.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %74, i64 %idxprom57
  %75 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %75 to i32
  %cmp60 = icmp eq i32 %conv59, 85
  br i1 %cmp60, label %76, label %97

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %len, align 4
  %add63 = add nsw i32 %77, 2
  store i32 %add63, i32* %j62, align 4
  br label %78

; <label>:78:                                     ; preds = %87, %76
  %79 = load i32, i32* %j62, align 4
  %80 = load i32, i32* %i, align 4
  %add64 = add nsw i32 %80, 1
  %cmp65 = icmp sgt i32 %79, %add64
  br i1 %cmp65, label %81, label %89

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %j62, align 4
  %sub67 = sub nsw i32 %82, 2
  %idxprom68 = sext i32 %sub67 to i64
  %83 = load i8*, i8** %str.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %83, i64 %idxprom68
  %84 = load i8, i8* %arrayidx69, align 1
  %85 = load i32, i32* %j62, align 4
  %idxprom70 = sext i32 %85 to i64
  %86 = load i8*, i8** %str.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %86, i64 %idxprom70
  store i8 %84, i8* %arrayidx71, align 1
  br label %87

; <label>:87:                                     ; preds = %81
  %88 = load i32, i32* %j62, align 4
  %dec72 = add nsw i32 %88, -1
  store i32 %dec72, i32* %j62, align 4
  br label %78

; <label>:89:                                     ; preds = %78
  %90 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %90 to i64
  %91 = load i8*, i8** %str.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %91, i64 %idxprom73
  store i8 124, i8* %arrayidx74, align 1
  %92 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %92, 1
  %idxprom76 = sext i32 %add75 to i64
  %93 = load i8*, i8** %str.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %93, i64 %idxprom76
  store i8 95, i8* %arrayidx77, align 1
  %94 = load i32, i32* %i, align 4
  %add78 = add nsw i32 %94, 2
  %idxprom79 = sext i32 %add78 to i64
  %95 = load i8*, i8** %str.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %95, i64 %idxprom79
  store i8 124, i8* %arrayidx80, align 1
  %96 = load i32, i32* %len, align 4
  %add81 = add nsw i32 %96, 2
  store i32 %add81, i32* %len, align 4
  br label %113

; <label>:97:                                     ; preds = %72
  %98 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %98 to i64
  %99 = load i8*, i8** %str.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %99, i64 %idxprom82
  %100 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %100 to i32
  %cmp85 = icmp eq i32 %conv84, 76
  br i1 %cmp85, label %101, label %104

; <label>:101:                                    ; preds = %97
  %102 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %102 to i64
  %103 = load i8*, i8** %str.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %103, i64 %idxprom87
  store i8 49, i8* %arrayidx88, align 1
  br label %112

; <label>:104:                                    ; preds = %97
  %105 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %105 to i64
  %106 = load i8*, i8** %str.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %106, i64 %idxprom89
  %107 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %107 to i32
  %cmp92 = icmp eq i32 %conv91, 84
  br i1 %cmp92, label %108, label %111

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %109 to i64
  %110 = load i8*, i8** %str.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %110, i64 %idxprom94
  store i8 55, i8* %arrayidx95, align 1
  br label %111

; <label>:111:                                    ; preds = %108, %104
  br label %112

; <label>:112:                                    ; preds = %111, %101
  br label %113

; <label>:113:                                    ; preds = %112, %89
  br label %114

; <label>:114:                                    ; preds = %113, %66
  br label %115

; <label>:115:                                    ; preds = %114, %46
  br label %116

; <label>:116:                                    ; preds = %115, %39
  br label %117

; <label>:117:                                    ; preds = %116, %27
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %i, align 4
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %i, align 4
  br label %7

; <label>:120:                                    ; preds = %7
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
define void @undo_leet(i8* %str) #0 {
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j54 = alloca i32, align 4
  %j84 = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %2, label %3

; <label>:2:                                      ; preds = %0
  br label %5

; <label>:3:                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.undo_leet, i32 0, i32 0)) #3
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

; <label>:7:                                      ; preds = %131, %5
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %10, label %133

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %13 to i32
  %cmp3 = icmp eq i32 %conv2, 47
  br i1 %cmp3, label %14, label %40

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  %idxprom5 = sext i32 %add to i64
  %16 = load i8*, i8** %str.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %16, i64 %idxprom5
  %17 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %17 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %18, label %39

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %19, 2
  %idxprom11 = sext i32 %add10 to i64
  %20 = load i8*, i8** %str.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 %idxprom11
  %21 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %21 to i32
  %cmp14 = icmp eq i32 %conv13, 92
  br i1 %cmp14, label %22, label %39

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i8*, i8** %str.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 %idxprom16
  store i8 65, i8* %arrayidx17, align 1
  %25 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %25, 1
  store i32 %add18, i32* %j, align 4
  br label %26

; <label>:26:                                     ; preds = %35, %22
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %28, 1
  %cmp19 = icmp slt i32 %27, %sub
  br i1 %cmp19, label %29, label %37

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %30, 2
  %idxprom22 = sext i32 %add21 to i64
  %31 = load i8*, i8** %str.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  %32 = load i8, i8* %arrayidx23, align 1
  %33 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load i8*, i8** %str.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %34, i64 %idxprom24
  store i8 %32, i8* %arrayidx25, align 1
  br label %35

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %26

; <label>:37:                                     ; preds = %26
  %38 = load i32, i32* %len, align 4
  %sub26 = sub nsw i32 %38, 2
  store i32 %sub26, i32* %len, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %18, %14
  br label %130

; <label>:40:                                     ; preds = %10
  %41 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %41 to i64
  %42 = load i8*, i8** %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %42, i64 %idxprom27
  %43 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %43 to i32
  %cmp30 = icmp eq i32 %conv29, 51
  br i1 %cmp30, label %44, label %47

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %45 to i64
  %46 = load i8*, i8** %str.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %46, i64 %idxprom32
  store i8 69, i8* %arrayidx33, align 1
  br label %129

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %48 to i64
  %49 = load i8*, i8** %str.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %49, i64 %idxprom34
  %50 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %50 to i32
  %cmp37 = icmp eq i32 %conv36, 33
  br i1 %cmp37, label %51, label %54

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %52 to i64
  %53 = load i8*, i8** %str.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %53, i64 %idxprom39
  store i8 73, i8* %arrayidx40, align 1
  br label %128

; <label>:54:                                     ; preds = %47
  %55 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %55 to i64
  %56 = load i8*, i8** %str.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %56, i64 %idxprom41
  %57 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %57 to i32
  %cmp44 = icmp eq i32 %conv43, 91
  br i1 %cmp44, label %58, label %80

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %59, 1
  %idxprom47 = sext i32 %add46 to i64
  %60 = load i8*, i8** %str.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %60, i64 %idxprom47
  %61 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %61 to i32
  %cmp50 = icmp eq i32 %conv49, 93
  br i1 %cmp50, label %62, label %79

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %63 to i64
  %64 = load i8*, i8** %str.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %64, i64 %idxprom52
  store i8 79, i8* %arrayidx53, align 1
  %65 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %65, 1
  store i32 %add55, i32* %j54, align 4
  br label %66

; <label>:66:                                     ; preds = %75, %62
  %67 = load i32, i32* %j54, align 4
  %68 = load i32, i32* %len, align 4
  %cmp56 = icmp slt i32 %67, %68
  br i1 %cmp56, label %69, label %77

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %j54, align 4
  %add58 = add nsw i32 %70, 1
  %idxprom59 = sext i32 %add58 to i64
  %71 = load i8*, i8** %str.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %71, i64 %idxprom59
  %72 = load i8, i8* %arrayidx60, align 1
  %73 = load i32, i32* %j54, align 4
  %idxprom61 = sext i32 %73 to i64
  %74 = load i8*, i8** %str.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %74, i64 %idxprom61
  store i8 %72, i8* %arrayidx62, align 1
  br label %75

; <label>:75:                                     ; preds = %69
  %76 = load i32, i32* %j54, align 4
  %inc63 = add nsw i32 %76, 1
  store i32 %inc63, i32* %j54, align 4
  br label %66

; <label>:77:                                     ; preds = %66
  %78 = load i32, i32* %len, align 4
  %sub64 = sub nsw i32 %78, 1
  store i32 %sub64, i32* %len, align 4
  br label %79

; <label>:79:                                     ; preds = %77, %58
  br label %127

; <label>:80:                                     ; preds = %54
  %81 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %81 to i64
  %82 = load i8*, i8** %str.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %82, i64 %idxprom65
  %83 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %83 to i32
  %cmp68 = icmp eq i32 %conv67, 124
  br i1 %cmp68, label %84, label %110

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* %i, align 4
  %add70 = add nsw i32 %85, 1
  %idxprom71 = sext i32 %add70 to i64
  %86 = load i8*, i8** %str.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %86, i64 %idxprom71
  %87 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %87 to i32
  %cmp74 = icmp eq i32 %conv73, 95
  br i1 %cmp74, label %88, label %109

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %89, 2
  %idxprom77 = sext i32 %add76 to i64
  %90 = load i8*, i8** %str.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %90, i64 %idxprom77
  %91 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %91 to i32
  %cmp80 = icmp eq i32 %conv79, 124
  br i1 %cmp80, label %92, label %109

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %93 to i64
  %94 = load i8*, i8** %str.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %94, i64 %idxprom82
  store i8 85, i8* %arrayidx83, align 1
  %95 = load i32, i32* %i, align 4
  %add85 = add nsw i32 %95, 1
  store i32 %add85, i32* %j84, align 4
  br label %96

; <label>:96:                                     ; preds = %105, %92
  %97 = load i32, i32* %j84, align 4
  %98 = load i32, i32* %len, align 4
  %sub86 = sub nsw i32 %98, 1
  %cmp87 = icmp slt i32 %97, %sub86
  br i1 %cmp87, label %99, label %107

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %j84, align 4
  %add89 = add nsw i32 %100, 2
  %idxprom90 = sext i32 %add89 to i64
  %101 = load i8*, i8** %str.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %101, i64 %idxprom90
  %102 = load i8, i8* %arrayidx91, align 1
  %103 = load i32, i32* %j84, align 4
  %idxprom92 = sext i32 %103 to i64
  %104 = load i8*, i8** %str.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %104, i64 %idxprom92
  store i8 %102, i8* %arrayidx93, align 1
  br label %105

; <label>:105:                                    ; preds = %99
  %106 = load i32, i32* %j84, align 4
  %inc94 = add nsw i32 %106, 1
  store i32 %inc94, i32* %j84, align 4
  br label %96

; <label>:107:                                    ; preds = %96
  %108 = load i32, i32* %len, align 4
  %sub95 = sub nsw i32 %108, 2
  store i32 %sub95, i32* %len, align 4
  br label %109

; <label>:109:                                    ; preds = %107, %88, %84
  br label %126

; <label>:110:                                    ; preds = %80
  %111 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %111 to i64
  %112 = load i8*, i8** %str.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %112, i64 %idxprom96
  %113 = load i8, i8* %arrayidx97, align 1
  %conv98 = sext i8 %113 to i32
  %cmp99 = icmp eq i32 %conv98, 49
  br i1 %cmp99, label %114, label %117

; <label>:114:                                    ; preds = %110
  %115 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %115 to i64
  %116 = load i8*, i8** %str.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %116, i64 %idxprom101
  store i8 76, i8* %arrayidx102, align 1
  br label %125

; <label>:117:                                    ; preds = %110
  %118 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %118 to i64
  %119 = load i8*, i8** %str.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %119, i64 %idxprom103
  %120 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %120 to i32
  %cmp106 = icmp eq i32 %conv105, 55
  br i1 %cmp106, label %121, label %124

; <label>:121:                                    ; preds = %117
  %122 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %122 to i64
  %123 = load i8*, i8** %str.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %123, i64 %idxprom108
  store i8 84, i8* %arrayidx109, align 1
  br label %124

; <label>:124:                                    ; preds = %121, %117
  br label %125

; <label>:125:                                    ; preds = %124, %114
  br label %126

; <label>:126:                                    ; preds = %125, %109
  br label %127

; <label>:127:                                    ; preds = %126, %79
  br label %128

; <label>:128:                                    ; preds = %127, %51
  br label %129

; <label>:129:                                    ; preds = %128, %44
  br label %130

; <label>:130:                                    ; preds = %129, %39
  br label %131

; <label>:131:                                    ; preds = %130
  %132 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %132, 1
  store i32 %inc110, i32* %i, align 4
  br label %7

; <label>:133:                                    ; preds = %7
  ret void
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1 "}
