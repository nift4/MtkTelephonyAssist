.class public Lcom/mediatek/telephony/AssistRadioResponse;
.super Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse$Stub;
.source "AssistRadioResponse.java"


# instance fields
.field private mAssistRIL:Lcom/mediatek/telephony/AssistRIL;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/AssistRIL;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/mediatek/telephony/AssistRadioResponse;->mAssistRIL:Lcom/mediatek/telephony/AssistRIL;

    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/mediatek/telephony/AssistRadioResponse;->mAssistRIL:Lcom/mediatek/telephony/AssistRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/AssistRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 77
    iget-object v1, v0, Lcom/mediatek/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/telephony/AssistRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/mediatek/telephony/AssistRadioResponse;->mAssistRIL:Lcom/mediatek/telephony/AssistRIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/mediatek/telephony/AssistRIL;->processResponseDone(Lcom/mediatek/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 68
    invoke-static {p1, p2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 69
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/AssistRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/AssistRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method
