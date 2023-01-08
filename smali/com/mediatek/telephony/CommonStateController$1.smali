.class Lcom/mediatek/telephony/CommonStateController$1;
.super Ljava/lang/Object;
.source "CommonStateController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/CommonStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/CommonStateController;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/CommonStateController;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mediatek/telephony/CommonStateController$1;->this$0:Lcom/mediatek/telephony/CommonStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 65
    iget-object p1, p0, Lcom/mediatek/telephony/CommonStateController$1;->this$0:Lcom/mediatek/telephony/CommonStateController;

    invoke-static {p1}, Lcom/mediatek/telephony/CommonStateController;->access$000(Lcom/mediatek/telephony/CommonStateController;)Z

    move-result p1

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/mediatek/telephony/CommonStateController$1;->this$0:Lcom/mediatek/telephony/CommonStateController;

    iget-object v2, v1, Lcom/mediatek/telephony/BaseController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 67
    invoke-static {v1}, Lcom/mediatek/telephony/CommonStateController;->access$100(Lcom/mediatek/telephony/CommonStateController;)[I

    move-result-object v1

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/mediatek/telephony/CommonStateController$1;->this$0:Lcom/mediatek/telephony/CommonStateController;

    invoke-static {v1, v0, p1}, Lcom/mediatek/telephony/CommonStateController;->access$200(Lcom/mediatek/telephony/CommonStateController;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
