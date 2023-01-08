.class public final Landroid/hardware/radio/V1_0/Call;
.super Ljava/lang/Object;
.source "Call.java"


# instance fields
.field public als:B

.field public index:I

.field public isMT:Z

.field public isMpty:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:I

.field public toa:I

.field public uusInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/UusInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    .line 6
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    .line 8
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    .line 9
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    .line 10
    iput-byte v0, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    .line 11
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    .line 12
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    .line 13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    .line 14
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    .line 16
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    return-void
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 200
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 203
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 204
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 205
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 207
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/Call;

    mul-int/lit8 v5, v4, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_0/Call;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 209
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 212
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/Call;

    if-eq v2, v3, :cond_2

    return v1

    .line 30
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_0/Call;

    .line 31
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->state:I

    if-eq v2, v3, :cond_3

    return v1

    .line 34
    :cond_3
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->index:I

    if-eq v2, v3, :cond_4

    return v1

    .line 37
    :cond_4
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->toa:I

    if-eq v2, v3, :cond_5

    return v1

    .line 40
    :cond_5
    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 43
    :cond_6
    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 46
    :cond_7
    iget-byte v2, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    iget-byte v3, p1, Landroid/hardware/radio/V1_0/Call;->als:B

    if-eq v2, v3, :cond_8

    return v1

    .line 49
    :cond_8
    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 52
    :cond_9
    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 55
    :cond_a
    iget-object v2, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 58
    :cond_b
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    if-eq v2, v3, :cond_c

    return v1

    .line 61
    :cond_c
    iget-object v2, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 64
    :cond_d
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    if-eq v2, v3, :cond_e

    return v1

    .line 67
    :cond_e
    iget-object p0, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v1

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    .line 81
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    .line 84
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    .line 86
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    .line 88
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xc

    aput-object p0, v0, v1

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".state = "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .index = "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .toa = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .isMpty = "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .isMT = "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .als = "

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .isVoice = "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .isVoicePrivacy = "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .number = "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .numberPresentation = "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .name = "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .namePresentation = "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .uusInfo = "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object p0, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 9

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 217
    iget v4, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 218
    iget v4, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    .line 219
    iget v6, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    .line 220
    iget-boolean v8, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0xd

    add-long/2addr v6, p2

    .line 221
    iget-boolean v8, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0xe

    add-long/2addr v6, p2

    .line 222
    iget-byte v8, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0xf

    add-long/2addr v6, p2

    .line 223
    iget-boolean v8, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    .line 224
    iget-boolean v8, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x18

    add-long/2addr v6, p2

    .line 225
    iget-object v8, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v6, 0x28

    add-long/2addr v6, p2

    .line 226
    iget v8, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x30

    add-long/2addr v6, p2

    .line 227
    iget-object v8, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v6, 0x40

    add-long/2addr v6, p2

    .line 228
    iget v8, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 230
    iget-object v6, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x48

    add-long/2addr p2, v7

    add-long/2addr v2, p2

    .line 231
    invoke-virtual {p1, v2, v3, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v4, p2

    const/4 v2, 0x0

    .line 232
    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 233
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v6, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v2, v6, :cond_0

    .line 235
    iget-object v4, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/UusInfo;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v7, v5

    invoke-virtual {v4, v3, v7, v8}, Landroid/hardware/radio/V1_0/UusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p2, v0

    .line 237
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method
