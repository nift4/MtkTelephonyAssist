.class final Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "AssistRIL.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/AssistRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AssistRadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/AssistRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/AssistRIL;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;->this$0:Lcom/mediatek/telephony/AssistRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;->this$0:Lcom/mediatek/telephony/AssistRIL;

    invoke-static {v0}, Lcom/mediatek/telephony/AssistRIL;->access$000(Lcom/mediatek/telephony/AssistRIL;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/mediatek/telephony/AssistRIL$AssistRadioProxyDeathRecipient;->this$0:Lcom/mediatek/telephony/AssistRIL;

    invoke-static {p0}, Lcom/mediatek/telephony/AssistRIL;->access$000(Lcom/mediatek/telephony/AssistRIL;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
