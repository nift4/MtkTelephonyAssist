.class public Lcom/mediatek/telephony/SpecialCommandsController;
.super Lcom/mediatek/telephony/BaseController;
.source "SpecialCommandsController.java"


# instance fields
.field private mCmdList:[Ljava/lang/String;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 500
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/BaseController;-><init>(Landroid/content/Context;)V

    const-string v0, "AT%DIAL="

    const-string v1, "AT%CONFERENCE="

    const-string v2, "AT%VILTEUPGRADE="

    const-string v3, "AT%FLIGHT="

    const-string v4, "AT%DATAROAMING="

    const-string v5, "AT%BROWSER"

    const-string v6, "AT+DATACONNECT="

    .line 57
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/SpecialCommandsController;->mCmdList:[Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/mediatek/telephony/SpecialCommandsController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/SpecialCommandsController$1;-><init>(Lcom/mediatek/telephony/SpecialCommandsController;)V

    iput-object v0, p0, Lcom/mediatek/telephony/SpecialCommandsController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-string v1, "phone"

    .line 501
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/mediatek/telephony/SpecialCommandsController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    const p0, 0x8000

    .line 503
    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "mTelephonyManager is null"

    .line 505
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telephony/SpecialCommandsController;)[Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mediatek/telephony/SpecialCommandsController;->mCmdList:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/telephony/SpecialCommandsController;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->handleSpecialCommand(Ljava/lang/String;)V

    return-void
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 2

    .line 104
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 107
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    if-ne v0, p0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/16 v2, 0x2c

    .line 123
    invoke-static {v2, p0, v1}, Lcom/mediatek/telephony/SpecialCommandsController;->findChar(CLjava/lang/String;I)I

    move-result v2

    .line 125
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 127
    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getCallIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 543
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/SpecialCommandsController;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 544
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    .line 545
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p2
.end method

.method private getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string p0, "tel"

    const/4 v0, 0x0

    .line 523
    invoke-static {p0, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getCmdParams(Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 140
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 145
    invoke-static {p1}, Lcom/mediatek/telephony/SpecialCommandsController;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getVideoProvider"

    .line 550
    invoke-static {p0, v2, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 553
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move-object v5, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v6, v1, v4

    .line 554
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 555
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 556
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    .line 557
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1

    .line 558
    :cond_0
    instance-of v7, v6, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v7, :cond_1

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoProvider, phone type is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {p0, v5, v7}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    move-object v5, v6

    check-cast v5, Lcom/android/internal/telephony/GsmCdmaPhone;

    :cond_1
    if-nez v5, :cond_2

    goto :goto_2

    .line 566
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsmPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-nez v6, :cond_3

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "getVideoProvider, the imsphone is null"

    .line 568
    invoke-static {p0, v7, v6}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 571
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 572
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 574
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    if-nez v6, :cond_5

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "getVideoProvider, not exist a provider"

    .line 581
    invoke-static {p0, v7, v6}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-object v6

    :cond_6
    :goto_1
    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "getVideoProvider, not an active call"

    .line 575
    invoke-static {p0, v7, v6}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v3
.end method

.method private handleAcceptRejectUpgrade(Z)V
    .locals 3

    .line 453
    invoke-direct {p0}, Lcom/mediatek/telephony/SpecialCommandsController;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "handleAcceptReejctUpgrade, failed"

    .line 455
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 460
    new-instance p1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x3

    invoke-direct {p1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    goto :goto_0

    .line 462
    :cond_1
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 465
    :goto_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "handleAcceptReejctUpgrade, success"

    .line 470
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptReejctUpgrade exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleConference([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%CONFERENCE] no parameter"

    .line 190
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 193
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 195
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 196
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    const/16 v1, 0x30

    if-eq p1, v1, :cond_2

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/telephony/SpecialCommandsController;->mergeConference()V

    goto :goto_1

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%CONFERENCE] more than one args"

    .line 206
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private handleDataConnection([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%DATACONNECT] no parameter"

    .line 366
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 370
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 374
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 375
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 377
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x31

    const/16 v3, 0x30

    if-eq p1, v3, :cond_2

    if-ne p1, v1, :cond_6

    :cond_2
    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AT%DATACONNECT] unknown case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 387
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/telephony/SpecialCommandsController;->isMobileDataEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    .line 388
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/SpecialCommandsController;->setMobileDataState(Z)V

    goto :goto_1

    .line 382
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/telephony/SpecialCommandsController;->isMobileDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 383
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->setMobileDataState(Z)V

    goto :goto_1

    :cond_5
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%DATACONNECT] more than one args"

    .line 396
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private handleDataRoaming([Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%DATAROAMING] no parameter"

    .line 329
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 333
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 337
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 338
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 340
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x30

    if-eq p1, v1, :cond_3

    const/16 v3, 0x31

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%DATAROAMING] unknown param"

    .line 357
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_1
    if-ne p1, v1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, v2

    .line 344
    :goto_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneSubId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    .line 348
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 349
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const-string v3, "data_roaming"

    if-ne v0, v2, :cond_5

    .line 350
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 353
    :cond_5
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%DATAROAMING] more than one args"

    .line 360
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private handleDial([Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%DIAL] no parameter"

    .line 162
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_0
    array-length v1, p1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_5

    const/4 v1, 0x0

    .line 168
    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 169
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 170
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->removeDoubleQuotationMarks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    :cond_1
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 172
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    :cond_2
    array-length v3, p1

    if-ne v3, v2, :cond_4

    .line 175
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 176
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    :cond_3
    aget-object v2, p1, v4

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 179
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->removeDoubleQuotationMarks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_4
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/mediatek/telephony/SpecialCommandsController;->getCallIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method private handleDowngradeUpgrade(Z)V
    .locals 4

    .line 428
    invoke-direct {p0}, Lcom/mediatek/telephony/SpecialCommandsController;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "handleDowngradeUpgrade, failed"

    .line 430
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-eqz p1, :cond_1

    .line 436
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 437
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    goto :goto_0

    .line 439
    :cond_1
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 440
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 444
    :goto_0
    :try_start_0
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "handleDowngradeUpgrade, success"

    .line 449
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDowngradeUpgrade exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleFlight([Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%FLIGHT] no parameter"

    .line 296
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 299
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 304
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 305
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 307
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x30

    if-eq p1, v1, :cond_2

    const/16 v3, 0x31

    if-ne p1, v3, :cond_5

    .line 310
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set airplane mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 313
    :goto_1
    iget-object p1, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "airplane_mode_on"

    .line 313
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 319
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%FLIGHT] more than one args"

    .line 323
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private handleLaunchBrowser()V
    .locals 3

    .line 420
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 424
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleSpecialCommand(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AT%DIAL="

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->getCmdParams(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->handleDial([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "AT%CONFERENCE="

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->getCmdParams(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->handleConference([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "AT%VILTEUPGRADE="

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->getCmdParams(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->handleVideoUpgrade([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "AT%FLIGHT="

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->getCmdParams(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->handleFlight([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "AT%DATAROAMING="

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xf

    if-eqz v0, :cond_4

    .line 93
    invoke-direct {p0, p1, v1}, Lcom/mediatek/telephony/SpecialCommandsController;->getCmdParams(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->handleDataRoaming([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "AT%BROWSER"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    invoke-direct {p0}, Lcom/mediatek/telephony/SpecialCommandsController;->handleLaunchBrowser()V

    goto :goto_0

    :cond_5
    const-string v0, "AT+DATACONNECT="

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    invoke-direct {p0, p1, v1}, Lcom/mediatek/telephony/SpecialCommandsController;->getCmdParams(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SpecialCommandsController;->handleDataConnection([Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onOemHookRawEvent get unknow event"

    .line 99
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handleVideoUpgrade([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%VILTEUPGRADE] no parameter"

    .line 253
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 256
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 258
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 259
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AT%VILTEUPGRADE] unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%VILTEUPGRADE] Resume video"

    .line 283
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/SpecialCommandsController;->processPauseAndRestartVideo(Z)V

    goto :goto_1

    :pswitch_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "[AT%VILTEUPGRADE] Pause video"

    .line 279
    invoke-static {p0, v1, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->processPauseAndRestartVideo(Z)V

    goto :goto_1

    :pswitch_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%VILTEUPGRADE] Accept upgrade"

    .line 275
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/SpecialCommandsController;->handleAcceptRejectUpgrade(Z)V

    goto :goto_1

    :pswitch_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "[AT%VILTEUPGRADE] Reject upgrade"

    .line 271
    invoke-static {p0, v1, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->handleAcceptRejectUpgrade(Z)V

    goto :goto_1

    :pswitch_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%VILTEUPGRADE] Upgrade"

    .line 267
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/SpecialCommandsController;->handleDowngradeUpgrade(Z)V

    goto :goto_1

    :pswitch_5
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "[AT%VILTEUPGRADE] Downgrade"

    .line 263
    invoke-static {p0, v1, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->handleDowngradeUpgrade(Z)V

    goto :goto_1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[AT%VILTEUPGRADE] more than one args"

    .line 290
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isImsPhoneInCall(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 1

    .line 241
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    .line 242
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-nez p0, :cond_1

    .line 246
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-nez p0, :cond_1

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isMobileDataEnabled()Z
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[+DATACONNECT] telephonyManager is null"

    .line 414
    invoke-static {p0, v2, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private mergeConference()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[AT%CONFERENCE] Merge conference"

    .line 211
    invoke-static {p0, v2, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 214
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 215
    instance-of v5, v4, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v5, :cond_0

    .line 216
    move-object v5, v4

    check-cast v5, Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 217
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 218
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/SpecialCommandsController;->isImsPhoneInCall(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_1
    if-eqz v5, :cond_5

    .line 226
    :try_start_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 229
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->conference()V

    goto :goto_3

    .line 227
    :cond_4
    :goto_2
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Merge conference fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Merge conference fail, no call found"

    .line 235
    invoke-static {p0, v1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private processPauseAndRestartVideo(Z)V
    .locals 4

    .line 474
    invoke-direct {p0}, Lcom/mediatek/telephony/SpecialCommandsController;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "processPauseAndRestartVideo, failed"

    .line 476
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_1

    .line 482
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 483
    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    goto :goto_0

    .line 486
    :cond_1
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 488
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    move-object v2, v3

    .line 491
    :goto_0
    :try_start_0
    invoke-interface {v0, p1, v2}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "processPauseAndRestartVideo, success"

    .line 496
    invoke-static {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPauseAndRestartVideo exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private removeDoubleQuotationMarks(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    sub-int/2addr p0, v0

    .line 154
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 155
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private setMobileDataState(Z)V
    .locals 1

    .line 401
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 402
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 511
    invoke-super {p0}, Lcom/mediatek/telephony/BaseController;->onDestroy()V

    .line 512
    iget-object v0, p0, Lcom/mediatek/telephony/SpecialCommandsController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/mediatek/telephony/SpecialCommandsController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
