.class public final Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# direct methods
.method public static final getName(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "cdma"

    return-object p0

    :cond_1
    const-string p0, "nr"

    return-object p0

    :cond_2
    const-string p0, "lte"

    return-object p0

    :cond_3
    const-string p0, "tdscdma"

    return-object p0

    :cond_4
    const-string p0, "wcdma"

    return-object p0

    :cond_5
    const-string p0, "gsm"

    return-object p0
.end method
