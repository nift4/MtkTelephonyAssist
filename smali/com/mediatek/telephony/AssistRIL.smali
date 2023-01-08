.class public Lcom/mediatek/telephony/AssistRIL;
.super Ljava/lang/Object;
.source "AssistRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field private static final HIDL_SERVICE_NAME_MTK:[Ljava/lang/String;


# instance fields
.field private final mAssistRadioProxyDeathRecipient:Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;

.field private mAssistRadioResponse:Lcom/mediatek/telephony/AssistRadioResponse;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneId:I

.field protected mRILDefaultWorkSource:Landroid/os/WorkSource;

.field private final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

.field private mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "mtkAssist1"

    const-string v1, "mtkAssist2"

    const-string v2, "mtkAssist3"

    .line 163
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/AssistRIL;->HIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    .line 237
    new-instance v0, Lcom/mediatek/telephony/AssistRIL$1;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/AssistRIL$1;-><init>(Lcom/mediatek/telephony/AssistRIL;)V

    iput-object v0, p0, Lcom/mediatek/telephony/AssistRIL;->mHandler:Landroid/os/Handler;

    .line 185
    iput p2, p0, Lcom/mediatek/telephony/AssistRIL;->mPhoneId:I

    .line 187
    new-instance p2, Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;

    invoke-direct {p2, p0}, Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;-><init>(Lcom/mediatek/telephony/AssistRIL;)V

    iput-object p2, p0, Lcom/mediatek/telephony/AssistRIL;->mAssistRadioProxyDeathRecipient:Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;

    .line 188
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 189
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/mediatek/telephony/AssistRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 192
    new-instance p1, Lcom/mediatek/telephony/AssistRadioResponse;

    invoke-direct {p1, p0}, Lcom/mediatek/telephony/AssistRadioResponse;-><init>(Lcom/mediatek/telephony/AssistRIL;)V

    iput-object p1, p0, Lcom/mediatek/telephony/AssistRIL;->mAssistRadioResponse:Lcom/mediatek/telephony/AssistRadioResponse;

    const/4 p1, 0x0

    .line 193
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/AssistRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telephony/AssistRIL;)Landroid/os/Handler;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/telephony/AssistRIL;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/AssistRIL;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/mediatek/telephony/AssistRIL;->resetProxyAndRequestList()V

    return-void
.end method

.method private clearRequestList(I)V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 258
    iget-object v3, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/RILRequest;

    const/4 v4, 0x0

    .line 259
    invoke-virtual {v3, p1, v4}, Lcom/mediatek/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 260
    invoke-virtual {v3}, Lcom/mediatek/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 263
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/telephony/RILRequest;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 321
    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 323
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;
    .locals 7

    const-string v0, "AssistRIL"

    .line 204
    iget v1, p0, Lcom/mediatek/telephony/AssistRIL;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 208
    :try_start_0
    sget-object v3, Lcom/mediatek/telephony/AssistRIL;->HIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/telephony/AssistRIL;->mPhoneId:I

    aget-object v3, v3, v4

    invoke-static {v3, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 209
    iget-object v3, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/telephony/AssistRIL;->mAssistRadioProxyDeathRecipient:Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 211
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 210
    invoke-interface {v3, v4, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 212
    iget-object v3, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/telephony/AssistRIL;->mAssistRadioResponse:Lcom/mediatek/telephony/AssistRadioResponse;

    invoke-interface {v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;)V

    goto :goto_0

    :cond_2
    const-string v3, "getMtkRadioExProxy: mRadioProxyMtk == null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 214
    invoke-static {v0, v3, v4}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 218
    iput-object v2, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MtkRadioProxy getService/setResponseFunctions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 226
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 225
    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 227
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/mediatek/telephony/AssistRIL;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 231
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    .line 230
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 234
    :cond_4
    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    return-object p0
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/telephony/RILRequest;
    .locals 0

    .line 356
    invoke-static {p1, p2, p3}, Lcom/mediatek/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/telephony/RILRequest;

    move-result-object p1

    .line 357
    iget-object p2, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p2

    .line 358
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL;->mRequestList:Landroid/util/SparseArray;

    iget p3, p1, Lcom/mediatek/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 359
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private requestToString(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x7e9

    if-eq p1, p0, :cond_1

    const/16 p0, 0x80e

    if-eq p1, p0, :cond_0

    const-string p0, "<unknown request>"

    return-object p0

    :cond_0
    const-string p0, "SYNC_DATA_SETTINGS_TO_MD"

    return-object p0

    :cond_1
    const-string p0, "SET_FD_MODE"

    return-object p0
.end method

.method private resetProxyAndRequestList()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AssistRIL"

    const-string v2, "resetProxyAndRequestList"

    .line 267
    invoke-static {v1, v2, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyMtk:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 269
    iget-object v1, p0, Lcom/mediatek/telephony/AssistRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 270
    invoke-static {}, Lcom/mediatek/telephony/RILRequest;->resetSerial()V

    const/4 v1, 0x1

    .line 271
    invoke-direct {p0, v1}, Lcom/mediatek/telephony/AssistRIL;->clearRequestList(I)V

    .line 272
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/AssistRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    return-void
.end method


# virtual methods
.method protected onSlotActiveStatusChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 277
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/AssistRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/telephony/AssistRIL;->resetProxyAndRequestList()V

    :goto_0
    return-void
.end method

.method public processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/telephony/RILRequest;
    .locals 3

    .line 328
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 329
    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 332
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/AssistRIL;->findAndRemoveRequestFromList(I)Lcom/mediatek/telephony/RILRequest;

    move-result-object p0

    if-nez p0, :cond_0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResponse: Unexpected response! serial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AssistRIL"

    invoke-static {v1, p1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public processResponseDone(Lcom/mediatek/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2

    .line 342
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/telephony/RILRequest;->mRequest:I

    .line 344
    invoke-direct {p0, v1}, Lcom/mediatek/telephony/AssistRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mediatek/telephony/AssistRIL;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] error "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AssistRIL"

    .line 343
    invoke-static {v1, p0, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget p0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, p0, p3}, Lcom/mediatek/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p1}, Lcom/mediatek/telephony/RILRequest;->release()V

    :cond_1
    return-void
.end method

.method public syncDataSettings([ILandroid/os/Message;)V
    .locals 4

    .line 285
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/AssistRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x80e

    .line 287
    iget-object v2, p0, Lcom/mediatek/telephony/AssistRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/telephony/AssistRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/telephony/RILRequest;

    move-result-object p2

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 291
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 292
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_0
    :try_start_0
    iget p1, p2, Lcom/mediatek/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->syncDataSettingsToMd(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 297
    :catch_0
    invoke-direct {p0}, Lcom/mediatek/telephony/AssistRIL;->resetProxyAndRequestList()V

    :cond_1
    :goto_1
    return-void
.end method

.method public syncScreenState(IIILandroid/os/Message;)V
    .locals 3

    .line 304
    invoke-direct {p0, p4}, Lcom/mediatek/telephony/AssistRIL;->getMtkRadioExProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7e9

    .line 306
    iget-object v2, p0, Lcom/mediatek/telephony/AssistRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/telephony/AssistRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/telephony/RILRequest;

    move-result-object p4

    .line 309
    :try_start_0
    iget p4, p4, Lcom/mediatek/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, p4, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setFdMode(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    invoke-direct {p0}, Lcom/mediatek/telephony/AssistRIL;->resetProxyAndRequestList()V

    :cond_0
    :goto_0
    return-void
.end method
