.class public final Landroid/hardware/radio/V1_0/CellIdentityWcdma;
.super Ljava/lang/Object;
.source "CellIdentityWcdma.java"


# instance fields
.field public cid:I

.field public lac:I

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public psc:I

.field public uarfcn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 8
    iput v0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    .line 9
    iput v0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    .line 10
    iput v0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

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

    const-class v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    if-eq v2, v3, :cond_2

    return v1

    .line 23
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    .line 24
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 27
    :cond_3
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 30
    :cond_4
    iget v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    iget v3, p1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    if-eq v2, v3, :cond_5

    return v1

    .line 33
    :cond_5
    iget v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget v3, p1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    if-eq v2, v3, :cond_6

    return v1

    .line 36
    :cond_6
    iget v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    iget v3, p1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    if-eq v2, v3, :cond_7

    return v1

    .line 39
    :cond_7
    iget p0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    iget p1, p1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

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
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

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

    const-string v1, ".mcc = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .mnc = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .lac = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .cid = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .psc = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .uarfcn = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget p0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

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

    .line 149
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 150
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 151
    iget v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 152
    iget v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 153
    iget v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr p2, v0

    .line 154
    iget p0, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method
