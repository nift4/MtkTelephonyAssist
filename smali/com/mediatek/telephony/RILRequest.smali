.class Lcom/mediatek/telephony/RILRequest;
.super Ljava/lang/Object;
.source "AssistRIL.java"


# static fields
.field private static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPool:Lcom/mediatek/telephony/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field private static sRandom:Ljava/util/Random;


# instance fields
.field mClientId:Ljava/lang/String;

.field mNext:Lcom/mediatek/telephony/RILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mStartTimeMs:J

.field mWakeLockType:I

.field mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/RILRequest;->sRandom:Ljava/util/Random;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mediatek/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/mediatek/telephony/RILRequest;->sPool:Lcom/mediatek/telephony/RILRequest;

    .line 68
    sput v1, Lcom/mediatek/telephony/RILRequest;->sPoolSize:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/mediatek/telephony/RILRequest;
    .locals 4

    .line 82
    sget-object v0, Lcom/mediatek/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/mediatek/telephony/RILRequest;->sPool:Lcom/mediatek/telephony/RILRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 85
    iget-object v3, v1, Lcom/mediatek/telephony/RILRequest;->mNext:Lcom/mediatek/telephony/RILRequest;

    sput-object v3, Lcom/mediatek/telephony/RILRequest;->sPool:Lcom/mediatek/telephony/RILRequest;

    .line 86
    iput-object v2, v1, Lcom/mediatek/telephony/RILRequest;->mNext:Lcom/mediatek/telephony/RILRequest;

    .line 87
    sget v3, Lcom/mediatek/telephony/RILRequest;->sPoolSize:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/mediatek/telephony/RILRequest;->sPoolSize:I

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 89
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Lcom/mediatek/telephony/RILRequest;

    invoke-direct {v1}, Lcom/mediatek/telephony/RILRequest;-><init>()V

    .line 95
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v1, Lcom/mediatek/telephony/RILRequest;->mSerial:I

    .line 96
    iput p0, v1, Lcom/mediatek/telephony/RILRequest;->mRequest:I

    .line 97
    iput-object p1, v1, Lcom/mediatek/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 p0, -0x1

    .line 98
    iput p0, v1, Lcom/mediatek/telephony/RILRequest;->mWakeLockType:I

    .line 99
    iput-object v2, v1, Lcom/mediatek/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/telephony/RILRequest;->mStartTimeMs:J

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    const-string p1, "Message target must not be null"

    .line 103
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/telephony/RILRequest;
    .locals 2

    .line 111
    invoke-static {p0, p1}, Lcom/mediatek/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/telephony/RILRequest;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 113
    iput-object p2, p0, Lcom/mediatek/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/telephony/RILRequest;->mClientId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method static resetSerial()V
    .locals 2

    .line 131
    sget-object v0, Lcom/mediatek/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/mediatek/telephony/RILRequest;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 1

    .line 148
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/mediatek/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {v0, p2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 151
    iget-object p0, p0, Lcom/mediatek/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method release()V
    .locals 3

    .line 120
    sget-object v0, Lcom/mediatek/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    sget v1, Lcom/mediatek/telephony/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 122
    sget-object v2, Lcom/mediatek/telephony/RILRequest;->sPool:Lcom/mediatek/telephony/RILRequest;

    iput-object v2, p0, Lcom/mediatek/telephony/RILRequest;->mNext:Lcom/mediatek/telephony/RILRequest;

    .line 123
    sput-object p0, Lcom/mediatek/telephony/RILRequest;->sPool:Lcom/mediatek/telephony/RILRequest;

    add-int/lit8 v1, v1, 0x1

    .line 124
    sput v1, Lcom/mediatek/telephony/RILRequest;->sPoolSize:I

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/mediatek/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 127
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    iget p0, p0, Lcom/mediatek/telephony/RILRequest;->mSerial:I

    int-to-long v1, p0

    const-wide/32 v3, -0x80000000

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x5b

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    rsub-int/lit8 v3, v1, 0x4

    if-ge v2, v3, :cond_0

    const/16 v3, 0x30

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
