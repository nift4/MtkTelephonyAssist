.class public interface abstract Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;
.super Ljava/lang/Object;
.source "IMtkRadioEx.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    .line 25
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    instance-of v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    if-eqz v3, :cond_1

    .line 28
    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    return-object v2

    .line 31
    :cond_1
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Proxy;

    invoke-direct {v2, p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 34
    :try_start_0
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    .line 64
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFdMode(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncDataSettingsToMd(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
