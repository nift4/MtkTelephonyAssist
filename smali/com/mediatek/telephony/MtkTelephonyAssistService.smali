.class public Lcom/mediatek/telephony/MtkTelephonyAssistService;
.super Landroid/app/Service;
.source "MtkTelephonyAssistService.java"


# instance fields
.field private mActiveModemCount:I

.field protected mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

.field private mContext:Landroid/content/Context;

.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/telephony/BaseController;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPhoneCreated:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mControllers:Ljava/util/List;

    .line 71
    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

    .line 72
    iput v1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mActiveModemCount:I

    .line 74
    new-instance v0, Lcom/mediatek/telephony/MtkTelephonyAssistService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/MtkTelephonyAssistService$1;-><init>(Lcom/mediatek/telephony/MtkTelephonyAssistService;)V

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Lcom/mediatek/telephony/MtkTelephonyAssistService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/MtkTelephonyAssistService$2;-><init>(Lcom/mediatek/telephony/MtkTelephonyAssistService;)V

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telephony/MtkTelephonyAssistService;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z

    return p0
.end method

.method static synthetic access$100(Lcom/mediatek/telephony/MtkTelephonyAssistService;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/MtkTelephonyAssistService;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->initControllers()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/MtkTelephonyAssistService;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->updatePhoneCreatedState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/telephony/MtkTelephonyAssistService;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->onServiceDestroyed()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/telephony/MtkTelephonyAssistService;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->onMultiSimConfigChanged(I)V

    return-void
.end method

.method private destroyControllers()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/BaseController;

    .line 163
    invoke-virtual {v1}, Lcom/mediatek/telephony/BaseController;->onDestroy()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private initAssistRIL(I)V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 215
    new-array v0, p1, [Lcom/mediatek/telephony/AssistRIL;

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

    :goto_0
    if-ge v1, p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

    new-instance v2, Lcom/mediatek/telephony/AssistRIL;

    iget-object v3, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/mediatek/telephony/AssistRIL;-><init>(Landroid/content/Context;I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 222
    :cond_1
    array-length v2, v0

    if-ge v2, p1, :cond_2

    .line 224
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/telephony/AssistRIL;

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

    :goto_1
    if-ge v2, p1, :cond_2

    .line 226
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

    new-instance v3, Lcom/mediatek/telephony/AssistRIL;

    iget-object v4, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/mediatek/telephony/AssistRIL;-><init>(Landroid/content/Context;I)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, p1, :cond_3

    .line 231
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

    aget-object v0, v0, v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/AssistRIL;->onSlotActiveStatusChange(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private initControllers()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/mediatek/telephony/CommonStateController;

    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/telephony/CommonStateController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/mediatek/telephony/SpecialCommandsController;

    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/telephony/SpecialCommandsController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/mediatek/telephony/DataStateController;

    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/DataStateController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private onMultiSimConfigChanged(I)V
    .locals 3

    .line 169
    iget v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mActiveModemCount:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "activeModemCount not change"

    .line 170
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeModemCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iput p1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mActiveModemCount:I

    .line 176
    iput-boolean v1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z

    .line 177
    invoke-direct {p0, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->updatePhoneCreatedState(Z)V

    .line 179
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mediatek/telephony/BaseController;

    .line 180
    invoke-virtual {p1}, Lcom/mediatek/telephony/BaseController;->onMultiSimConfigChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onServiceDestroyed()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->destroyControllers()V

    return-void
.end method

.method private updatePhoneCreatedState(Z)V
    .locals 5

    .line 185
    iget-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z

    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 189
    :goto_0
    :try_start_1
    iput-boolean v3, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    :catch_1
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Get IllegalStateException, phone not inited"

    .line 191
    invoke-static {p0, v4, v3}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iput-boolean v1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z

    :goto_1
    if-eqz v2, :cond_2

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneCreated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mPhoneCreated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " phone count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_3

    .line 199
    iget-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z

    if-eqz v0, :cond_3

    .line 200
    array-length v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->initAssistRIL(I)V

    .line 201
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/BaseController;

    .line 202
    iget-object v3, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mAssistRILs:[Lcom/mediatek/telephony/AssistRIL;

    iget v4, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mActiveModemCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/telephony/BaseController;->onPhoneCreated([Lcom/android/internal/telephony/Phone;[Lcom/mediatek/telephony/AssistRIL;I)V

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/mediatek/telephony/BaseController;->initialize()V

    goto :goto_2

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "phones is null"

    .line 209
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MtkTelephonyService created"

    .line 115
    invoke-static {p0, v1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 117
    sput-boolean v0, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->sServiceAlve:Z

    .line 119
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MtkTelephonyService destroyed"

    .line 135
    invoke-static {p0, v2, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    sput-boolean v0, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->sServiceAlve:Z

    .line 137
    iput-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mPhoneCreated:Z

    .line 138
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
