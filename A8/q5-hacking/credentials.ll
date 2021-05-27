; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { [20 x i8], [20 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"CS136\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Qwerty123\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"1q2w 3e4r\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"areetz\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"dFJdNPU4mvRwg9Lb92\00", align 1

; Function Attrs: nounwind
define void @get_username(%struct.credential* %credArray, i32 %index, i8* %name, i32 %length) #0 {
  %credArray.addr = alloca %struct.credential*, align 8
  %index.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.credential* %credArray, %struct.credential** %credArray.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1:                                      ; preds = %11, %0
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %4, label %13

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %index.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.credential*, %struct.credential** %credArray.addr, align 8
  %arrayidx = getelementptr inbounds %struct.credential, %struct.credential* %7, i64 %idxprom1
  %username = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [20 x i8], [20 x i8]* %username, i64 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx2, align 1
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i8*, i8** %name.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  store i8 %8, i8* %arrayidx4, align 1
  br label %11

; <label>:11:                                     ; preds = %4
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %1

; <label>:13:                                     ; preds = %1
  ret void
}

; Function Attrs: nounwind
define zeroext i1 @is_valid(%struct.credential* %credArray, i8* %name, i8* %password) #0 {
  %credArray.addr = alloca %struct.credential*, align 8
  %name.addr = alloca i8*, align 8
  %password.addr = alloca i8*, align 8
  %valid = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.credential* %credArray, %struct.credential** %credArray.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %password, i8** %password.addr, align 8
  store i8 0, i8* %valid, align 1
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1:                                      ; preds = %14, %0
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %3, label %16

; <label>:3:                                      ; preds = %1
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.credential*, %struct.credential** %credArray.addr, align 8
  %arrayidx = getelementptr inbounds %struct.credential, %struct.credential* %5, i64 %idxprom
  %username = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %username, i32 0, i32 0
  %6 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay, i8* %6) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %11, label %7

; <label>:7:                                      ; preds = %3
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.credential*, %struct.credential** %credArray.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.credential, %struct.credential* %9, i64 %idxprom1
  %password3 = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [20 x i8], [20 x i8]* %password3, i32 0, i32 0
  %10 = load i8*, i8** %password.addr, align 8
  %call5 = call i32 @strcmp(i8* %arraydecay4, i8* %10) #3
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %11

; <label>:11:                                     ; preds = %7, %3
  %12 = phi i1 [ false, %3 ], [ %lnot, %7 ]
  %land.ext = zext i1 %12 to i32
  %13 = load i8, i8* %valid, align 1
  %tobool7 = trunc i8 %13 to i1
  %conv = zext i1 %tobool7 to i32
  %or = or i32 %conv, %land.ext
  %tobool8 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool8 to i8
  store i8 %frombool, i8* %valid, align 1
  br label %14

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %1

; <label>:16:                                     ; preds = %1
  %17 = load i8, i8* %valid, align 1
  %tobool9 = trunc i8 %17 to i1
  ret i1 %tobool9
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
define void @load_credentials(%struct.credential** %cred, i32* %count) #0 {
  %cred.addr = alloca %struct.credential**, align 8
  %count.addr = alloca i32*, align 8
  store %struct.credential** %cred, %struct.credential*** %cred.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  %call = call noalias i8* @malloc(i64 120) #4
  %1 = bitcast i8* %call to %struct.credential*
  %2 = load %struct.credential**, %struct.credential*** %cred.addr, align 8
  store %struct.credential* %1, %struct.credential** %2, align 8
  %3 = load %struct.credential**, %struct.credential*** %cred.addr, align 8
  %4 = load %struct.credential*, %struct.credential** %3, align 8
  %arrayidx = getelementptr inbounds %struct.credential, %struct.credential* %4, i64 0
  %username = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %username, i32 0, i32 0
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #4
  %5 = load %struct.credential**, %struct.credential*** %cred.addr, align 8
  %6 = load %struct.credential*, %struct.credential** %5, align 8
  %arrayidx2 = getelementptr inbounds %struct.credential, %struct.credential* %6, i64 0
  %password = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [20 x i8], [20 x i8]* %password, i32 0, i32 0
  %call4 = call i8* @strcpy(i8* %arraydecay3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #4
  %7 = load %struct.credential**, %struct.credential*** %cred.addr, align 8
  %8 = load %struct.credential*, %struct.credential** %7, align 8
  %arrayidx5 = getelementptr inbounds %struct.credential, %struct.credential* %8, i64 1
  %username6 = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx5, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [20 x i8], [20 x i8]* %username6, i32 0, i32 0
  %call8 = call i8* @strcpy(i8* %arraydecay7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #4
  %9 = load %struct.credential**, %struct.credential*** %cred.addr, align 8
  %10 = load %struct.credential*, %struct.credential** %9, align 8
  %arrayidx9 = getelementptr inbounds %struct.credential, %struct.credential* %10, i64 1
  %password10 = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx9, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [20 x i8], [20 x i8]* %password10, i32 0, i32 0
  %call12 = call i8* @strcpy(i8* %arraydecay11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #4
  %11 = load %struct.credential**, %struct.credential*** %cred.addr, align 8
  %12 = load %struct.credential*, %struct.credential** %11, align 8
  %arrayidx13 = getelementptr inbounds %struct.credential, %struct.credential* %12, i64 2
  %username14 = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx13, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [20 x i8], [20 x i8]* %username14, i32 0, i32 0
  %call16 = call i8* @strcpy(i8* %arraydecay15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #4
  %13 = load %struct.credential**, %struct.credential*** %cred.addr, align 8
  %14 = load %struct.credential*, %struct.credential** %13, align 8
  %arrayidx17 = getelementptr inbounds %struct.credential, %struct.credential* %14, i64 2
  %password18 = getelementptr inbounds %struct.credential, %struct.credential* %arrayidx17, i32 0, i32 1
  %arraydecay19 = getelementptr inbounds [20 x i8], [20 x i8]* %password18, i32 0, i32 0
  %call20 = call i8* @strcpy(i8* %arraydecay19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)) #4
  %15 = load i32*, i32** %count.addr, align 8
  store i32 3, i32* %15, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
define void @unload_credentials(%struct.credential* %cred) #0 {
  %cred.addr = alloca %struct.credential*, align 8
  store %struct.credential* %cred, %struct.credential** %cred.addr, align 8
  %1 = load %struct.credential*, %struct.credential** %cred.addr, align 8
  %2 = bitcast %struct.credential* %1 to i8*
  call void @free(i8* %2) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1 "}
