.class public Lcom/mediatek/telephony/DataStateController;
.super Lcom/mediatek/telephony/BaseController;
.source "DataStateController.java"


# instance fields
.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mOldLength:I

.field private mPhoneSubscriptions:[I

.field private mRadioState:[Z

.field private mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

.field protected final mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/BaseController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    .line 77
    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController;->mPhoneSubscriptions:[I

    .line 78
    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController;->mRadioState:[Z

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/mediatek/telephony/DataStateController;->mOldLength:I

    .line 82
    new-instance p1, Lcom/mediatek/telephony/DataStateController$1;

    invoke-direct {p1, p0}, Lcom/mediatek/telephony/DataStateController$1;-><init>(Lcom/mediatek/telephony/DataStateController;)V

    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 109
    new-instance p1, Lcom/mediatek/telephony/DataStateController$2;

    invoke-direct {p1, p0}, Lcom/mediatek/telephony/DataStateController$2;-><init>(Lcom/mediatek/telephony/DataStateController;)V

    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance p1, Lcom/mediatek/telephony/DataStateController$3;

    invoke-direct {p1, p0}, Lcom/mediatek/telephony/DataStateController$3;-><init>(Lcom/mediatek/telephony/DataStateController;)V

    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telephony/DataStateController;)[I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mediatek/telephony/DataStateController;->mPhoneSubscriptions:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/telephony/DataStateController;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/DataStateController;->registerSettingsObserver(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/DataStateController;IZ)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/DataStateController;->syncDataSettingToMd(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/DataStateController;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/mediatek/telephony/DataStateController;->syncDataSlotToMd()V

    return-void
.end method

.method private getDataSim()I
    .locals 1

    .line 351
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result p0

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result p0

    return p0
.end method

.method private isDataOn(I)Z
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result p0

    return p0
.end method

.method private isDomesticRoamingDataOn(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "domestic_data_roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, p1

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-static {v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private isInternationalRoamingDataOn(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "international_data_roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, p1

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-static {v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private isRoamingDataOn(I)Z
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataRoamingEnabled()Z

    move-result p0

    return p0
.end method

.method private registerSettingsObserver(I)V
    .locals 8

    .line 265
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_3

    if-gez p1, :cond_0

    goto/16 :goto_2

    .line 270
    :cond_0
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 272
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/DataStateController;->unregisterSettingsObserver(I)V

    .line 280
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/telephony/DataStateController;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, p1, 0xa

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v1, v2

    .line 284
    iget-object v6, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, p1

    .line 285
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    const v7, 0x4202e

    .line 284
    invoke-virtual {v6, v4, v7, v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_1
    iget v1, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    const-string v2, "data_roaming"

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 290
    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    aget-object v1, v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    add-int/lit8 v3, p1, 0x14

    .line 290
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    goto :goto_1

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    aget-object v1, v1, p1

    .line 295
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    add-int/lit8 v3, p1, 0x14

    .line 294
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 299
    :goto_1
    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    aget-object v1, v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "domestic_data_roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1e

    .line 299
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 302
    iget-object p0, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    aget-object p0, p0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "international_data_roaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    add-int/lit8 p1, p1, 0x28

    .line 302
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    return-void

    :cond_3
    :goto_2
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "DataStateController"

    const-string v0, "registerSettingsObserver invalid phoneId"

    .line 266
    invoke-static {p1, v0, p0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private syncAllDataStateToMd()V
    .locals 2

    const/4 v0, 0x0

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/mediatek/telephony/DataStateController;->syncDataSettingToMd(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/telephony/DataStateController;->syncDataSlotToMd()V

    return-void
.end method

.method private syncDataSettingToMd(IZ)V
    .locals 6

    .line 317
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 318
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/DataStateController;->isDataOn(I)Z

    move-result v0

    .line 320
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/DataStateController;->isRoamingDataOn(I)Z

    move-result v1

    const/4 v2, -0x2

    if-eqz p2, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/DataStateController;->isDomesticRoamingDataOn(I)Z

    move-result p2

    .line 326
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/DataStateController;->isInternationalRoamingDataOn(I)Z

    move-result v3

    goto :goto_0

    :cond_0
    move p2, v2

    move v3, p2

    .line 331
    :goto_0
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mAssistRIL:[Lcom/mediatek/telephony/AssistRIL;

    aget-object v4, p0, p1

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 332
    aget-object p0, p0, p1

    const/4 p1, 0x5

    new-array p1, p1, [I

    aput v0, p1, v5

    const/4 v0, 0x1

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v2, p1, v0

    const/4 v0, 0x3

    aput p2, p1, v0

    const/4 p2, 0x4

    aput v3, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/mediatek/telephony/AssistRIL;->syncDataSettings([ILandroid/os/Message;)V

    goto :goto_1

    :cond_1
    new-array p0, v5, [Ljava/lang/Object;

    const-string p1, "DataStateController"

    const-string p2, "mAssistRIL is null"

    .line 335
    invoke-static {p1, p2, p0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private syncDataSlotToMd()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mAssistRIL:[Lcom/mediatek/telephony/AssistRIL;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 343
    aget-object v0, v0, v1

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, -0x2

    aput v3, v2, v1

    const/4 v1, 0x1

    aput v3, v2, v1

    const/4 v1, 0x2

    .line 344
    invoke-direct {p0}, Lcom/mediatek/telephony/DataStateController;->getDataSim()I

    move-result p0

    aput p0, v2, v1

    const/4 p0, 0x3

    aput v3, v2, p0

    const/4 p0, 0x4

    aput v3, v2, p0

    const/4 p0, 0x0

    .line 343
    invoke-virtual {v0, v2, p0}, Lcom/mediatek/telephony/AssistRIL;->syncDataSettings([ILandroid/os/Message;)V

    goto :goto_0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "DataStateController"

    const-string v1, "mAssistRIL is null"

    .line 346
    invoke-static {v0, v1, p0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private unregisterSettingsObserver(I)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    .line 261
    iget-object p0, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DataStateController"

    const-string v3, "initialize"

    .line 177
    invoke-static {v2, v3, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/telephony/DataStateController;->mPhoneSubscriptions:[I

    .line 180
    array-length v2, v1

    new-array v2, v2, [Lcom/android/internal/telephony/SettingsObserver;

    iput-object v2, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    .line 181
    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mRadioState:[Z

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mPhoneSubscriptions:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 186
    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    new-instance v2, Lcom/android/internal/telephony/SettingsObserver;

    iget-object v3, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/telephony/DataStateController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    aput-object v2, v1, v0

    .line 187
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/DataStateController;->registerSettingsObserver(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/DataStateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 199
    iget v0, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    iput v0, p0, Lcom/mediatek/telephony/DataStateController;->mOldLength:I

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 234
    invoke-super {p0}, Lcom/mediatek/telephony/BaseController;->onDestroy()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DataStateController"

    const-string v3, "onDestroy"

    .line 235
    invoke-static {v2, v3, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/DataStateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/DataStateController;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 243
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/DataStateController;->unregisterSettingsObserver(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onMultiSimConfigChanged()V
    .locals 6

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOldLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/telephony/DataStateController;->mOldLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phones length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mActivePhoneCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DataStateController"

    invoke-static {v3, v0, v2}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget v0, p0, Lcom/mediatek/telephony/DataStateController;->mOldLength:I

    iget v2, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/mediatek/telephony/DataStateController;->mPhoneSubscriptions:[I

    iget-object v2, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/DataStateController;->mPhoneSubscriptions:[I

    .line 209
    iget-object v0, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    iget-object v2, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SettingsObserver;

    iput-object v0, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    .line 210
    iget-object v0, p0, Lcom/mediatek/telephony/DataStateController;->mRadioState:[Z

    iget-object v2, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/DataStateController;->mRadioState:[Z

    .line 211
    :goto_0
    iget v0, p0, Lcom/mediatek/telephony/DataStateController;->mOldLength:I

    if-ge v1, v0, :cond_0

    .line 212
    invoke-direct {p0, v1}, Lcom/mediatek/telephony/DataStateController;->registerSettingsObserver(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    :goto_1
    iget v1, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    if-ge v0, v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mPhoneSubscriptions:[I

    aput v3, v1, v0

    .line 216
    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    new-instance v2, Lcom/android/internal/telephony/SettingsObserver;

    iget-object v4, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/telephony/DataStateController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v4, v5}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    aput-object v2, v1, v0

    .line 217
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/DataStateController;->registerSettingsObserver(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-le v0, v2, :cond_3

    .line 220
    :goto_2
    iget v0, p0, Lcom/mediatek/telephony/DataStateController;->mOldLength:I

    if-ge v2, v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/mediatek/telephony/DataStateController;->mPhoneSubscriptions:[I

    aput v3, v0, v2

    .line 222
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/DataStateController;->unregisterSettingsObserver(I)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/telephony/DataStateController;->mSettingsObserver:[Lcom/android/internal/telephony/SettingsObserver;

    const/4 v4, 0x0

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 225
    :cond_2
    :goto_3
    iget v0, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    if-ge v1, v0, :cond_3

    .line 226
    invoke-direct {p0, v1}, Lcom/mediatek/telephony/DataStateController;->registerSettingsObserver(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 229
    :cond_3
    iget v0, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    iput v0, p0, Lcom/mediatek/telephony/DataStateController;->mOldLength:I

    return-void
.end method

.method public onRadioChanged(I)V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/telephony/DataStateController;->mRadioState:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DataStateController"

    invoke-static {v3, v1, v2}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v1, p0, Lcom/mediatek/telephony/DataStateController;->mRadioState:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/mediatek/telephony/DataStateController;->syncAllDataStateToMd()V

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/mediatek/telephony/DataStateController;->mRadioState:[Z

    aput-boolean v0, p0, p1

    return-void
.end method
