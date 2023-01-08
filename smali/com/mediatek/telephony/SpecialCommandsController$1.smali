.class Lcom/mediatek/telephony/SpecialCommandsController$1;
.super Landroid/telephony/PhoneStateListener;
.source "SpecialCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/SpecialCommandsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/SpecialCommandsController;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/SpecialCommandsController;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mediatek/telephony/SpecialCommandsController$1;->this$0:Lcom/mediatek/telephony/SpecialCommandsController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOemHookRawEvent([B)V
    .locals 4

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/Object;

    const-string v2, "onOemHookRawEvent"

    .line 63
    invoke-static {p0, v2, v1}, Lcom/mediatek/telephony/MtkTelephonyAssistGlobal;->logi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    move v2, v1

    .line 68
    :goto_0
    iget-object v3, p0, Lcom/mediatek/telephony/SpecialCommandsController$1;->this$0:Lcom/mediatek/telephony/SpecialCommandsController;

    invoke-static {v3}, Lcom/mediatek/telephony/SpecialCommandsController;->access$000(Lcom/mediatek/telephony/SpecialCommandsController;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_3

    .line 69
    iget-object v3, p0, Lcom/mediatek/telephony/SpecialCommandsController$1;->this$0:Lcom/mediatek/telephony/SpecialCommandsController;

    invoke-static {v3}, Lcom/mediatek/telephony/SpecialCommandsController;->access$000(Lcom/mediatek/telephony/SpecialCommandsController;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/telephony/SpecialCommandsController$1;->this$0:Lcom/mediatek/telephony/SpecialCommandsController;

    .line 70
    invoke-static {v3}, Lcom/mediatek/telephony/SpecialCommandsController;->access$000(Lcom/mediatek/telephony/SpecialCommandsController;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v1, :cond_4

    .line 75
    iget-object p0, p0, Lcom/mediatek/telephony/SpecialCommandsController$1;->this$0:Lcom/mediatek/telephony/SpecialCommandsController;

    invoke-static {p0, v0}, Lcom/mediatek/telephony/SpecialCommandsController;->access$100(Lcom/mediatek/telephony/SpecialCommandsController;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
