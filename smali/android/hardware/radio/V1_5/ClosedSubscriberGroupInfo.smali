.class public final Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;
.super Ljava/lang/Object;
.source "ClosedSubscriberGroupInfo.java"


# instance fields
.field public csgIdentity:I

.field public csgIndication:Z

.field public homeNodebName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    .line 18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    .line 24
    iput v0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

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

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 37
    :cond_2
    check-cast p1, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    .line 38
    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 41
    :cond_3
    iget-object v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 44
    :cond_4
    iget p0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    iget p1, p1, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".csgIndication = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .homeNodebName = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .csgIdentity = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget p0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 136
    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 137
    iget-object v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x18

    add-long/2addr p2, v0

    .line 138
    iget p0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method
