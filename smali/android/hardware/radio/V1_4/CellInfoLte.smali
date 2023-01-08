.class public final Landroid/hardware/radio/V1_4/CellInfoLte;
.super Ljava/lang/Object;
.source "CellInfoLte.java"


# instance fields
.field public base:Landroid/hardware/radio/V1_2/CellInfoLte;

.field public cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoLte;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoLte;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    .line 6
    new-instance v0, Landroid/hardware/radio/V1_4/CellConfigLte;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/CellConfigLte;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

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

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/CellInfoLte;

    if-eq v2, v3, :cond_2

    return v1

    .line 19
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_4/CellInfoLte;

    .line 20
    iget-object v2, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v3, p1, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 23
    :cond_3
    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

    iget-object p1, p1, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    .line 32
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

    .line 33
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".base = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .cellConfig = "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 105
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 106
    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

    const-wide/16 v0, 0x70

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/CellConfigLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method
