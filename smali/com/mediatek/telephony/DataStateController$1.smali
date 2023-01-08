.class Lcom/mediatek/telephony/DataStateController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DataStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/DataStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/DataStateController;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/DataStateController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController$1;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/mediatek/telephony/DataStateController$1;->this$0:Lcom/mediatek/telephony/DataStateController;

    iget-object v2, v2, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 91
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 92
    iget-object v3, p0, Lcom/mediatek/telephony/DataStateController$1;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-static {v3}, Lcom/mediatek/telephony/DataStateController;->access$000(Lcom/mediatek/telephony/DataStateController;)[I

    move-result-object v3

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscriptionsChanged phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " old subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/telephony/DataStateController$1;->this$0:Lcom/mediatek/telephony/DataStateController;

    .line 95
    invoke-static {v4}, Lcom/mediatek/telephony/DataStateController;->access$000(Lcom/mediatek/telephony/DataStateController;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "DataStateController"

    .line 93
    invoke-static {v5, v3, v4}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v3, p0, Lcom/mediatek/telephony/DataStateController$1;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-static {v3}, Lcom/mediatek/telephony/DataStateController;->access$000(Lcom/mediatek/telephony/DataStateController;)[I

    move-result-object v3

    aput v2, v3, v1

    .line 98
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/mediatek/telephony/DataStateController$1;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-static {v2, v1}, Lcom/mediatek/telephony/DataStateController;->access$100(Lcom/mediatek/telephony/DataStateController;I)V

    .line 100
    iget-object v2, p0, Lcom/mediatek/telephony/DataStateController$1;->this$0:Lcom/mediatek/telephony/DataStateController;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/mediatek/telephony/DataStateController;->access$200(Lcom/mediatek/telephony/DataStateController;IZ)V

    .line 101
    iget-object v2, p0, Lcom/mediatek/telephony/DataStateController$1;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-static {v2}, Lcom/mediatek/telephony/DataStateController;->access$300(Lcom/mediatek/telephony/DataStateController;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
