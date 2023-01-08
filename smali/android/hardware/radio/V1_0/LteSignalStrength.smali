.class public final Landroid/hardware/radio/V1_0/LteSignalStrength;
.super Ljava/lang/Object;
.source "LteSignalStrength.java"


# instance fields
.field public cqi:I

.field public rsrp:I

.field public rsrq:I

.field public rssnr:I

.field public signalStrength:I

.field public timingAdvance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    .line 6
    iput v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    .line 8
    iput v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    .line 9
    iput v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    .line 10
    iput v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

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

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/LteSignalStrength;

    if-eq v2, v3, :cond_2

    return v1

    .line 23
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 24
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    iget v3, p1, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    if-eq v2, v3, :cond_3

    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    iget v3, p1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    if-eq v2, v3, :cond_4

    return v1

    .line 30
    :cond_4
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    iget v3, p1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    if-eq v2, v3, :cond_5

    return v1

    .line 33
    :cond_5
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    iget v3, p1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    if-eq v2, v3, :cond_6

    return v1

    .line 36
    :cond_6
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget v3, p1, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    if-eq v2, v3, :cond_7

    return v1

    .line 39
    :cond_7
    iget p0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    iget p1, p1, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    if-eq p0, p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".signalStrength = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rsrp = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rsrq = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rssnr = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .cqi = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .timingAdvance = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget p0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 137
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 138
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 139
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 140
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 141
    iget v2, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr p2, v0

    .line 142
    iget p0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method
