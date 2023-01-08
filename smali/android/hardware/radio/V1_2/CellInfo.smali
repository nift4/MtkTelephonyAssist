.class public final Landroid/hardware/radio/V1_2/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"


# instance fields
.field public cdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoCdma;",
            ">;"
        }
    .end annotation
.end field

.field public cellInfoType:I

.field public connectionStatus:I

.field public gsm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoGsm;",
            ">;"
        }
    .end annotation
.end field

.field public lte:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoLte;",
            ">;"
        }
    .end annotation
.end field

.field public registered:Z

.field public tdscdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field public timeStamp:J

.field public timeStampType:I

.field public wcdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoWcdma;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    .line 12
    iput-boolean v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    .line 16
    iput v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    .line 45
    iput v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    return-void
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 243
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 245
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 246
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 247
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 248
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 250
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_2/CellInfo;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_2/CellInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 252
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 255
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

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

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_2/CellInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 58
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_2/CellInfo;

    .line 59
    iget v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    iget v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 62
    :cond_3
    iget-boolean v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 65
    :cond_4
    iget v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    iget v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    if-eq v2, v3, :cond_5

    return v1

    .line 68
    :cond_5
    iget-wide v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    iget-wide v4, p1, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v1

    .line 71
    :cond_6
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 74
    :cond_7
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 77
    :cond_8
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 80
    :cond_9
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 83
    :cond_a
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 86
    :cond_b
    iget p0, p0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    iget p1, p1, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    if-eq p0, p1, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    iget v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    .line 98
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    .line 99
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    .line 100
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    .line 101
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    .line 102
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    .line 103
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cellInfoType = "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CellInfoType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .registered = "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-boolean v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .timeStampType = "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/TimeStampType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .timeStamp = "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-wide v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .gsm = "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .cdma = "

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .lte = "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .wcdma = "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .tdscdma = "

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .connectionStatus = "

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget p0, p0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    invoke-static {p0}, Landroid/hardware/radio/V1_2/CellConnectionStatus;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
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

    .line 260
    iget v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 261
    iget-boolean v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 262
    iget v8, v0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x10

    add-long v6, p2, v6

    .line 263
    iget-wide v8, v0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 265
    iget-object v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 266
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 267
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 268
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x60

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_0
    if-ge v12, v6, :cond_0

    .line 270
    iget-object v14, v0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_2/CellInfoGsm;

    mul-int/lit8 v15, v12, 0x60

    int-to-long v9, v15

    invoke-virtual {v14, v11, v9, v10}, Landroid/hardware/radio/V1_2/CellInfoGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_0

    :cond_0
    add-long/2addr v7, v2

    .line 272
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 275
    iget-object v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x28

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 276
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    .line 277
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 278
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x50

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    move v10, v13

    :goto_1
    if-ge v10, v6, :cond_1

    .line 280
    iget-object v11, v0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_2/CellInfoCdma;

    mul-int/lit8 v12, v10, 0x50

    int-to-long v14, v12

    invoke-virtual {v11, v9, v14, v15}, Landroid/hardware/radio/V1_2/CellInfoCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-long/2addr v7, v2

    .line 282
    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 285
    iget-object v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x38

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 286
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    .line 287
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 288
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x70

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    move v10, v13

    :goto_2
    if-ge v10, v6, :cond_2

    .line 290
    iget-object v11, v0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_2/CellInfoLte;

    mul-int/lit8 v12, v10, 0x70

    int-to-long v14, v12

    invoke-virtual {v11, v9, v14, v15}, Landroid/hardware/radio/V1_2/CellInfoLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-long/2addr v7, v2

    .line 292
    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 295
    iget-object v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x48

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 296
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    .line 297
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 298
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x60

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    move v10, v13

    :goto_3
    if-ge v10, v6, :cond_3

    .line 300
    iget-object v11, v0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    mul-int/lit8 v12, v10, 0x60

    int-to-long v14, v12

    invoke-virtual {v11, v9, v14, v15}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    add-long/2addr v7, v2

    .line 302
    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 305
    iget-object v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x58

    add-long v7, p2, v7

    add-long/2addr v4, v7

    .line 306
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long v9, v7, v4

    .line 307
    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 308
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v6, 0x68

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4
    if-ge v13, v6, :cond_4

    .line 310
    iget-object v5, v0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    mul-int/lit8 v9, v13, 0x68

    int-to-long v9, v9

    invoke-virtual {v5, v4, v9, v10}, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    add-long/2addr v7, v2

    .line 312
    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v2, 0x68

    add-long v2, p2, v2

    .line 314
    iget v0, v0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method
