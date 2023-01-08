.class Lcom/mediatek/telephony/MtkTelephonyAssistService$2;
.super Landroid/os/Handler;
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

    .line 88
    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$2;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 104
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$2;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-static {p0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->access$500(Lcom/mediatek/telephony/MtkTelephonyAssistService;I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$2;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->access$300(Lcom/mediatek/telephony/MtkTelephonyAssistService;Z)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$2;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-static {p0}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->access$400(Lcom/mediatek/telephony/MtkTelephonyAssistService;)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$2;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-static {p1}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->access$200(Lcom/mediatek/telephony/MtkTelephonyAssistService;)V

    .line 94
    iget-object p0, p0, Lcom/mediatek/telephony/MtkTelephonyAssistService$2;->this$0:Lcom/mediatek/telephony/MtkTelephonyAssistService;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistService;->access$300(Lcom/mediatek/telephony/MtkTelephonyAssistService;Z)V

    :goto_0
    return-void
.end method
