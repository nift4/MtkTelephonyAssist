.class public final Landroid/hardware/radio/V1_5/CellIdentityTdscdma;
.super Ljava/lang/Object;
.source "CellIdentityTdscdma.java"


# instance fields
.field public additionalPlmns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

.field public optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

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

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    if-eq v2, v3, :cond_2

    return v1

    .line 29
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    .line 30
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 33
    :cond_3
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 36
    :cond_4
    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    iget-object p1, p1, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

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

    .line 44
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    .line 45
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 47
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".base = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .additionalPlmns = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .optionalCsgInfo = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10

    .line 140
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x58

    add-long/2addr v3, p2

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    .line 143
    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    .line 144
    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 145
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v7, v0, :cond_0

    mul-int/lit8 v6, v7, 0x10

    int-to-long v8, v6

    .line 147
    iget-object v6, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr v3, v1

    .line 149
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 151
    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    const-wide/16 v0, 0x68

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method
