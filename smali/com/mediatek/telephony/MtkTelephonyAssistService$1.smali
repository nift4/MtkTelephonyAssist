.class Lcom/mediatek/telephony/MtkTelephonyAssistService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkTelephonyAssistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/MtkTelephonyAssistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/MtkTelephonyAssistService;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$1;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$1;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-static {p1}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->access$000(Lcom/mediatek/telephony/MtkTelephonyAssistService;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$1;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-static {p0}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->access$100(Lcom/mediatek/telephony/MtkTelephonyAssistService;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
