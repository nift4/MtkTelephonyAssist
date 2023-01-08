.class public final Landroid/hardware/radio/V1_4/CellIdentityNr;
.super Ljava/lang/Object;
.source "CellIdentityNr.java"


# instance fields
.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public nci:J

.field public nrarfcn:I

.field public operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

.field public pci:I

.field public tac:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    .line 28
    iput v0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    .line 34
    iput v0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    .line 35
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/CellIdentityNr;

    if-eq v2, v3, :cond_2

    return v1

    .line 48
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_4/CellIdentityNr;

    .line 49
    iget-object v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 52
    :cond_3
    iget-object v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 55
    :cond_4
    iget-wide v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    iget-wide v4, p1, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v1

    .line 58
    :cond_5
    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    iget v3, p1, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    if-eq v2, v3, :cond_6

    return v1

    .line 61
    :cond_6
    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    iget v3, p1, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    if-eq v2, v3, :cond_7

    return v1

    .line 64
    :cond_7
    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    iget v3, p1, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    if-eq v2, v3, :cond_8

    return v1

    .line 67
    :cond_8
    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object p1, p1, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    .line 76
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    .line 77
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    .line 82
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mcc = "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .mnc = "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .nci = "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-wide v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .pci = "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .tac = "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .nrarfcn = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .operatorNames = "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 181
    iget-object v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 182
    iget-object v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 183
    iget-wide v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 184
    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    .line 185
    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 186
    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 187
    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    const-wide/16 v0, 0x38

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method
