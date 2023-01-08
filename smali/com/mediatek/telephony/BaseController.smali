.class public abstract Lcom/mediatek/telephony/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"


# instance fields
.field protected mActivePhoneCount:I

.field protected mAssistRIL:[Lcom/mediatek/telephony/AssistRIL;

.field private mBaseHandler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field protected mPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/mediatek/telephony/BaseController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/BaseController$1;-><init>(Lcom/mediatek/telephony/BaseController;)V

    iput-object v0, p0, Lcom/mediatek/telephony/BaseController;->mBaseHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method initialize()V
    .locals 0

    return-void
.end method

.method onDestroy()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 78
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/telephony/BaseController;->mBaseHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onMultiSimConfigChanged()V
    .locals 0

    return-void
.end method

.method public onPhoneCreated([Lcom/android/internal/telephony/Phone;[Lcom/mediatek/telephony/AssistRIL;I)V
    .locals 2

    .line 104
    iput-object p1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 105
    iput-object p2, p0, Lcom/mediatek/telephony/BaseController;->mAssistRIL:[Lcom/mediatek/telephony/AssistRIL;

    if-nez p3, :cond_0

    .line 106
    array-length p3, p1

    :cond_0
    iput p3, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    const/4 p1, 0x0

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    .line 109
    aget-object p2, p2, p1

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p3, p0, Lcom/mediatek/telephony/BaseController;->mBaseHandler:Landroid/os/Handler;

    add-int/lit8 v0, p1, 0xa

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onRadioChanged(I)V
    .locals 0

    return-void
.end method
