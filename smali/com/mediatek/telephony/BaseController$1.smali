.class Lcom/mediatek/telephony/BaseController$1;
.super Landroid/os/Handler;
.source "BaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/BaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/BaseController;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/BaseController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mediatek/telephony/BaseController$1;->this$0:Lcom/mediatek/telephony/BaseController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 86
    iget p1, p1, Landroid/os/Message;->what:I

    rem-int/lit8 v0, p1, 0xa

    sub-int/2addr p1, v0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/mediatek/telephony/BaseController$1;->this$0:Lcom/mediatek/telephony/BaseController;

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/BaseController;->onRadioChanged(I)V

    :goto_0
    return-void
.end method
