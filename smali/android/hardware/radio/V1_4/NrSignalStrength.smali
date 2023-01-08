.class public final Landroid/hardware/radio/V1_4/NrSignalStrength;
.super Ljava/lang/Object;
.source "NrSignalStrength.java"


# instance fields
.field public csiRsrp:I

.field public csiRsrq:I

.field public csiSinr:I

.field public ssRsrp:I

.field public ssRsrq:I

.field public ssSinr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    .line 20
    iput v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    .line 28
    iput v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    .line 36
    iput v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    .line 44
    iput v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    .line 52
    iput v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

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

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/NrSignalStrength;

    if-eq v2, v3, :cond_2

    return v1

    .line 65
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 66
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    iget v3, p1, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    if-eq v2, v3, :cond_3

    return v1

    .line 69
    :cond_3
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    iget v3, p1, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    if-eq v2, v3, :cond_4

    return v1

    .line 72
    :cond_4
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    iget v3, p1, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    if-eq v2, v3, :cond_5

    return v1

    .line 75
    :cond_5
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    iget v3, p1, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    if-eq v2, v3, :cond_6

    return v1

    .line 78
    :cond_6
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    iget v3, p1, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    if-eq v2, v3, :cond_7

    return v1

    .line 81
    :cond_7
    iget p0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    iget p1, p1, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    if-eq p0, p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 89
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ssRsrp = "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .ssRsrq = "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .ssSinr = "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .csiRsrp = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .csiRsrq = "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .csiSinr = "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget p0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 179
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 180
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 181
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 182
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 183
    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr p2, v0

    .line 184
    iget p0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method
