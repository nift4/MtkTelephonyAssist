.class public final Landroid/hardware/radio/V1_0/EvdoSignalStrength;
.super Ljava/lang/Object;
.source "EvdoSignalStrength.java"


# instance fields
.field public dbm:I

.field public ecio:I

.field public signalNoiseRatio:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    .line 6
    iput v0, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

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

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    if-eq v2, v3, :cond_2

    return v1

    .line 20
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 21
    iget v2, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    iget v3, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    if-eq v2, v3, :cond_3

    return v1

    .line 24
    :cond_3
    iget v2, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    iget v3, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    if-eq v2, v3, :cond_4

    return v1

    .line 27
    :cond_4
    iget p0, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    iget p1, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    iget v1, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dbm = "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .ecio = "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .signalNoiseRatio = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget p0, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 113
    iget v2, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 114
    iget v2, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    .line 115
    iget p0, p0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method
