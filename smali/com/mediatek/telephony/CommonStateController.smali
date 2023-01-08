.class public Lcom/mediatek/telephony/CommonStateController;
.super Lcom/mediatek/telephony/BaseController;
.source "CommonStateController.java"


# instance fields
.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mOldLength:I

.field private mScreenStatus:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/BaseController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/mediatek/telephony/CommonStateController;->mScreenStatus:[I

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/mediatek/telephony/CommonStateController;->mOldLength:I

    .line 53
    new-instance p1, Lcom/mediatek/telephony/CommonStateController$1;

    invoke-direct {p1, p0}, Lcom/mediatek/telephony/CommonStateController$1;-><init>(Lcom/mediatek/telephony/CommonStateController;)V

    iput-object p1, p0, Lcom/mediatek/telephony/CommonStateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telephony/CommonStateController;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mediatek/telephony/CommonStateController;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/mediatek/telephony/CommonStateController;)[I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mediatek/telephony/CommonStateController;->mScreenStatus:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/CommonStateController;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/CommonStateController;->syncScreenStateToMd(II)V

    return-void
.end method

.method private isScreenOn()Z
    .locals 5

    .line 131
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 133
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 136
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 139
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private syncScreenStateToMd(II)V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mAssistRIL:[Lcom/mediatek/telephony/AssistRIL;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 118
    aget-object v0, v0, p1

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/mediatek/telephony/AssistRIL;->syncScreenState(IIILandroid/os/Message;)V

    .line 119
    iget-object p0, p0, Lcom/mediatek/telephony/CommonStateController;->mScreenStatus:[I

    aput p2, p0, p1

    :cond_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/telephony/CommonStateController;->mScreenStatus:[I

    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/mediatek/telephony/CommonStateController;->mScreenStatus:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 93
    iget-object v1, p0, Lcom/mediatek/telephony/CommonStateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 95
    iget v0, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    iput v0, p0, Lcom/mediatek/telephony/CommonStateController;->mOldLength:I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/mediatek/telephony/BaseController;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 113
    iget-object p0, p0, Lcom/mediatek/telephony/CommonStateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method onMultiSimConfigChanged()V
    .locals 3

    .line 100
    iget v0, p0, Lcom/mediatek/telephony/CommonStateController;->mOldLength:I

    iget v1, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/mediatek/telephony/CommonStateController;->mScreenStatus:[I

    iget-object v1, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/CommonStateController;->mScreenStatus:[I

    .line 102
    iget v0, p0, Lcom/mediatek/telephony/CommonStateController;->mOldLength:I

    :goto_0
    iget v1, p0, Lcom/mediatek/telephony/BaseController;->mActivePhoneCount:I

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/mediatek/telephony/CommonStateController;->mScreenStatus:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iput v1, p0, Lcom/mediatek/telephony/CommonStateController;->mOldLength:I

    :cond_1
    return-void
.end method

.method public onRadioChanged(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/mediatek/telephony/CommonStateController;->isScreenOn()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/CommonStateController;->syncScreenStateToMd(II)V

    :cond_0
    return-void
.end method
