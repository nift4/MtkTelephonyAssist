.class public final Landroid/hardware/radio/V1_2/CellIdentityTdscdma;
.super Ljava/lang/Object;
.source "CellIdentityTdscdma.java"


# instance fields
.field public base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

.field public operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

.field public uarfcn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    .line 10
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

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

    const-class v3, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    if-eq v2, v3, :cond_2

    return v1

    .line 23
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    .line 24
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    iget v3, p1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    if-eq v2, v3, :cond_4

    return v1

    .line 30
    :cond_4
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object p1, p1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

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

    .line 38
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    .line 39
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    .line 41
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".base = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .uarfcn = "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .operatorNames = "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 116
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 117
    iget v2, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 118
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    const-wide/16 v0, 0x38

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method
