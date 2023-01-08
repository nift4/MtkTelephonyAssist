.class public final Landroid/hardware/radio/V1_2/CellInfoCdma;
.super Ljava/lang/Object;
.source "CellInfoCdma.java"


# instance fields
.field public cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

.field public signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

.field public signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentityCdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    .line 6
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    .line 7
    new-instance v0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

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

    const-class v3, Landroid/hardware/radio/V1_2/CellInfoCdma;

    if-eq v2, v3, :cond_2

    return v1

    .line 20
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_2/CellInfoCdma;

    .line 21
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 24
    :cond_3
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 27
    :cond_4
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget-object p1, p1, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    .line 36
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    .line 37
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 38
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

    const-string v1, ".cellIdentityCdma = "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .signalStrengthCdma = "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .signalStrengthEvdo = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 113
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentityCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    const-wide/16 v1, 0x38

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 115
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    const-wide/16 v0, 0x40

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method
