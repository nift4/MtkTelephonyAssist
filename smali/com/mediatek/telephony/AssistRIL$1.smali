.class Lcom/mediatek/telephony/AssistRIL$1;
.super Landroid/os/Handler;
.source "AssistRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/AssistRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/AssistRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/AssistRIL;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/mediatek/telephony/AssistRIL$1;->this$0:Lcom/mediatek/telephony/AssistRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message with number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AssistRIL"

    invoke-static {v0, p0, p1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->loge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/mediatek/telephony/AssistRIL$1;->this$0:Lcom/mediatek/telephony/AssistRIL;

    invoke-static {p1}, Lcom/mediatek/telephony/AssistRIL;->access$100(Lcom/mediatek/telephony/AssistRIL;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 243
    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL$1;->this$0:Lcom/mediatek/telephony/AssistRIL;

    invoke-static {p0}, Lcom/mediatek/telephony/AssistRIL;->access$200(Lcom/mediatek/telephony/AssistRIL;)V

    :cond_1
    :goto_0
    return-void
.end method
