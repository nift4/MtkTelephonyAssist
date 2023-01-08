.class Lcom/mediatek/telephony/DataStateController$3;
.super Landroid/os/Handler;
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

    .line 120
    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 123
    iget p1, p1, Landroid/os/Message;->what:I

    rem-int/lit8 v0, p1, 0xa

    sub-int/2addr p1, v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " evendId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DataStateController"

    invoke-static {v4, v1, v3}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x14

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x2

    const v6, 0x42030

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x28

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-static {p1, v0, v4}, Lcom/mediatek/telephony/DataStateController;->access$200(Lcom/mediatek/telephony/DataStateController;IZ)V

    .line 154
    iget-object p1, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    iget-object p1, p1, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v0

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    .line 156
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 158
    iget-object p1, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    iget-object p1, p1, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v0

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    iget-object p1, p1, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v0

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    .line 162
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 161
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-static {v3, v0, v2}, Lcom/mediatek/telephony/DataStateController;->access$200(Lcom/mediatek/telephony/DataStateController;IZ)V

    if-ne p1, v1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    iget-object p1, p1, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v0

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    .line 139
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 138
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 141
    iget-object p1, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    iget-object p1, p1, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v0

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/mediatek/telephony/DataStateController$3;->this$0:Lcom/mediatek/telephony/DataStateController;

    iget-object p1, p1, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v0

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    .line 145
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 144
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
