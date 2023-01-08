.class public final Landroid/hardware/radio/V1_5/SetupDataCallResult;
.super Ljava/lang/Object;
.source "SetupDataCallResult.java"


# instance fields
.field public active:I

.field public addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public cause:I

.field public cid:I

.field public dnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gateways:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ifname:Ljava/lang/String;

.field public mtuV4:I

.field public mtuV6:I

.field public pcscf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public suggestedRetryTime:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 16
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    .line 20
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 24
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 29
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 33
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    .line 57
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 62
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    return-void
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 286
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 288
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 289
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 290
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 291
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 293
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 295
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 298
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

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    if-eq v2, v3, :cond_2

    return v1

    .line 75
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    .line 76
    iget v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    iget v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    if-eq v2, v3, :cond_3

    return v1

    .line 79
    :cond_3
    iget v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    iget v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    if-eq v2, v3, :cond_4

    return v1

    .line 82
    :cond_4
    iget v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    iget v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    if-eq v2, v3, :cond_5

    return v1

    .line 85
    :cond_5
    iget v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    iget v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    if-eq v2, v3, :cond_6

    return v1

    .line 88
    :cond_6
    iget v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    iget v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    if-eq v2, v3, :cond_7

    return v1

    .line 91
    :cond_7
    iget-object v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 94
    :cond_8
    iget-object v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 97
    :cond_9
    iget-object v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 100
    :cond_a
    iget-object v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 103
    :cond_b
    iget-object v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 106
    :cond_c
    iget v2, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    iget v3, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    if-eq v2, v3, :cond_d

    return v1

    .line 109
    :cond_d
    iget p0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    iget p1, p1, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    if-eq p0, p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 123
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    .line 124
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    .line 125
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    .line 126
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    .line 127
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xb

    aput-object p0, v0, v1

    .line 117
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cause = "

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/DataCallFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .suggestedRetryTime = "

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .cid = "

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .active = "

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/DataConnActiveStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/PdpProtocolType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .ifname = "

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .addresses = "

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .dnses = "

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .gateways = "

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .pcscf = "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .mtuV4 = "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .mtuV6 = "

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget p0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    .line 303
    iget v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 304
    iget v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 305
    iget v8, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0xc

    add-long v8, p2, v6

    .line 306
    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v8, 0x10

    add-long v8, p2, v8

    .line 307
    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v8, 0x18

    add-long v8, p2, v8

    .line 308
    iget-object v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 310
    iget-object v8, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-wide/16 v9, 0x28

    add-long v9, p2, v9

    add-long v11, v9, v4

    .line 311
    invoke-virtual {v1, v11, v12, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v9, v6

    const/4 v13, 0x0

    .line 312
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 313
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v8, 0x28

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_0
    if-ge v12, v8, :cond_0

    .line 315
    iget-object v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_5/LinkAddress;

    mul-int/lit8 v15, v12, 0x28

    int-to-long v6, v15

    invoke-virtual {v14, v11, v6, v7}, Landroid/hardware/radio/V1_5/LinkAddress;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v6, 0xc

    goto :goto_0

    :cond_0
    add-long/2addr v9, v2

    .line 317
    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 320
    iget-object v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x38

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 321
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    .line 322
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 323
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    move v10, v13

    :goto_1
    if-ge v10, v6, :cond_1

    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    .line 325
    iget-object v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-long/2addr v7, v2

    .line 327
    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 330
    iget-object v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x48

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 331
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    .line 332
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 333
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    move v10, v13

    :goto_2
    if-ge v10, v6, :cond_2

    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    .line 335
    iget-object v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-long/2addr v7, v2

    .line 337
    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 340
    iget-object v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x58

    add-long v7, p2, v7

    add-long/2addr v4, v7

    .line 341
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long/2addr v4, v7

    .line 342
    invoke-virtual {v1, v4, v5, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 343
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v6, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v13, v6, :cond_3

    mul-int/lit8 v5, v13, 0x10

    int-to-long v9, v5

    .line 345
    iget-object v5, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v9, v10, v5}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-long/2addr v7, v2

    .line 347
    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v2, 0x68

    add-long v2, p2, v2

    .line 349
    iget v4, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x6c

    add-long v2, p2, v2

    .line 350
    iget v0, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 279
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 280
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 281
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
