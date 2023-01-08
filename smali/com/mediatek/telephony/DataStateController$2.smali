.class Lcom/mediatek/telephony/DataStateController$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 109
    iput-object p1, p0, Lcom/mediatek/telephony/DataStateController$2;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DataStateController"

    invoke-static {v1, p2, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/mediatek/telephony/DataStateController$2;->this$0:Lcom/mediatek/telephony/DataStateController;

    invoke-static {p0}, Lcom/mediatek/telephony/DataStateController;->access$300(Lcom/mediatek/telephony/DataStateController;)V

    :cond_0
    return-void
.end method
