.class public final Landroid/hardware/radio/V1_0/DataCallFailCause;
.super Ljava/lang/Object;
.source "DataCallFailCause.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const-string p0, "OPERATOR_BARRED"

    return-object p0

    :cond_1
    const/16 v0, 0xe

    if-ne p0, v0, :cond_2

    const-string p0, "NAS_SIGNALLING"

    return-object p0

    :cond_2
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_3

    const-string p0, "INSUFFICIENT_RESOURCES"

    return-object p0

    :cond_3
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_4

    const-string p0, "MISSING_UKNOWN_APN"

    return-object p0

    :cond_4
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_5

    const-string p0, "UNKNOWN_PDP_ADDRESS_TYPE"

    return-object p0

    :cond_5
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_6

    const-string p0, "USER_AUTHENTICATION"

    return-object p0

    :cond_6
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_7

    const-string p0, "ACTIVATION_REJECT_GGSN"

    return-object p0

    :cond_7
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_8

    const-string p0, "ACTIVATION_REJECT_UNSPECIFIED"

    return-object p0

    :cond_8
    const/16 v0, 0x20

    if-ne p0, v0, :cond_9

    const-string p0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object p0

    :cond_9
    const/16 v0, 0x21

    if-ne p0, v0, :cond_a

    const-string p0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object p0

    :cond_a
    const/16 v0, 0x22

    if-ne p0, v0, :cond_b

    const-string p0, "SERVICE_OPTION_OUT_OF_ORDER"

    return-object p0

    :cond_b
    const/16 v0, 0x23

    if-ne p0, v0, :cond_c

    const-string p0, "NSAPI_IN_USE"

    return-object p0

    :cond_c
    const/16 v0, 0x24

    if-ne p0, v0, :cond_d

    const-string p0, "REGULAR_DEACTIVATION"

    return-object p0

    :cond_d
    const/16 v0, 0x25

    if-ne p0, v0, :cond_e

    const-string p0, "QOS_NOT_ACCEPTED"

    return-object p0

    :cond_e
    const/16 v0, 0x26

    if-ne p0, v0, :cond_f

    const-string p0, "NETWORK_FAILURE"

    return-object p0

    :cond_f
    const/16 v0, 0x27

    if-ne p0, v0, :cond_10

    const-string p0, "UMTS_REACTIVATION_REQ"

    return-object p0

    :cond_10
    const/16 v0, 0x28

    if-ne p0, v0, :cond_11

    const-string p0, "FEATURE_NOT_SUPP"

    return-object p0

    :cond_11
    const/16 v0, 0x29

    if-ne p0, v0, :cond_12

    const-string p0, "TFT_SEMANTIC_ERROR"

    return-object p0

    :cond_12
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_13

    const-string p0, "TFT_SYTAX_ERROR"

    return-object p0

    :cond_13
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_14

    const-string p0, "UNKNOWN_PDP_CONTEXT"

    return-object p0

    :cond_14
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_15

    const-string p0, "FILTER_SEMANTIC_ERROR"

    return-object p0

    :cond_15
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_16

    const-string p0, "FILTER_SYTAX_ERROR"

    return-object p0

    :cond_16
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_17

    const-string p0, "PDP_WITHOUT_ACTIVE_TFT"

    return-object p0

    :cond_17
    const/16 v0, 0x32

    if-ne p0, v0, :cond_18

    const-string p0, "ONLY_IPV4_ALLOWED"

    return-object p0

    :cond_18
    const/16 v0, 0x33

    if-ne p0, v0, :cond_19

    const-string p0, "ONLY_IPV6_ALLOWED"

    return-object p0

    :cond_19
    const/16 v0, 0x34

    if-ne p0, v0, :cond_1a

    const-string p0, "ONLY_SINGLE_BEARER_ALLOWED"

    return-object p0

    :cond_1a
    const/16 v0, 0x35

    if-ne p0, v0, :cond_1b

    const-string p0, "ESM_INFO_NOT_RECEIVED"

    return-object p0

    :cond_1b
    const/16 v0, 0x36

    if-ne p0, v0, :cond_1c

    const-string p0, "PDN_CONN_DOES_NOT_EXIST"

    return-object p0

    :cond_1c
    const/16 v0, 0x37

    if-ne p0, v0, :cond_1d

    const-string p0, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    return-object p0

    :cond_1d
    const/16 v0, 0x41

    if-ne p0, v0, :cond_1e

    const-string p0, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    return-object p0

    :cond_1e
    const/16 v0, 0x42

    if-ne p0, v0, :cond_1f

    const-string p0, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    return-object p0

    :cond_1f
    const/16 v0, 0x51

    if-ne p0, v0, :cond_20

    const-string p0, "INVALID_TRANSACTION_ID"

    return-object p0

    :cond_20
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_21

    const-string p0, "MESSAGE_INCORRECT_SEMANTIC"

    return-object p0

    :cond_21
    const/16 v0, 0x60

    if-ne p0, v0, :cond_22

    const-string p0, "INVALID_MANDATORY_INFO"

    return-object p0

    :cond_22
    const/16 v0, 0x61

    if-ne p0, v0, :cond_23

    const-string p0, "MESSAGE_TYPE_UNSUPPORTED"

    return-object p0

    :cond_23
    const/16 v0, 0x62

    if-ne p0, v0, :cond_24

    const-string p0, "MSG_TYPE_NONCOMPATIBLE_STATE"

    return-object p0

    :cond_24
    const/16 v0, 0x63

    if-ne p0, v0, :cond_25

    const-string p0, "UNKNOWN_INFO_ELEMENT"

    return-object p0

    :cond_25
    const/16 v0, 0x64

    if-ne p0, v0, :cond_26

    const-string p0, "CONDITIONAL_IE_ERROR"

    return-object p0

    :cond_26
    const/16 v0, 0x65

    if-ne p0, v0, :cond_27

    const-string p0, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    return-object p0

    :cond_27
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_28

    const-string p0, "PROTOCOL_ERRORS"

    return-object p0

    :cond_28
    const/16 v0, 0x70

    if-ne p0, v0, :cond_29

    const-string p0, "APN_TYPE_CONFLICT"

    return-object p0

    :cond_29
    const/16 v0, 0x71

    if-ne p0, v0, :cond_2a

    const-string p0, "INVALID_PCSCF_ADDR"

    return-object p0

    :cond_2a
    const/16 v0, 0x72

    if-ne p0, v0, :cond_2b

    const-string p0, "INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN"

    return-object p0

    :cond_2b
    const/16 v0, 0x73

    if-ne p0, v0, :cond_2c

    const-string p0, "EMM_ACCESS_BARRED"

    return-object p0

    :cond_2c
    const/16 v0, 0x74

    if-ne p0, v0, :cond_2d

    const-string p0, "EMERGENCY_IFACE_ONLY"

    return-object p0

    :cond_2d
    const/16 v0, 0x75

    if-ne p0, v0, :cond_2e

    const-string p0, "IFACE_MISMATCH"

    return-object p0

    :cond_2e
    const/16 v0, 0x76

    if-ne p0, v0, :cond_2f

    const-string p0, "COMPANION_IFACE_IN_USE"

    return-object p0

    :cond_2f
    const/16 v0, 0x77

    if-ne p0, v0, :cond_30

    const-string p0, "IP_ADDRESS_MISMATCH"

    return-object p0

    :cond_30
    const/16 v0, 0x78

    if-ne p0, v0, :cond_31

    const-string p0, "IFACE_AND_POL_FAMILY_MISMATCH"

    return-object p0

    :cond_31
    const/16 v0, 0x79

    if-ne p0, v0, :cond_32

    const-string p0, "EMM_ACCESS_BARRED_INFINITE_RETRY"

    return-object p0

    :cond_32
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_33

    const-string p0, "AUTH_FAILURE_ON_EMERGENCY_CALL"

    return-object p0

    :cond_33
    const/16 v0, 0x1001

    if-ne p0, v0, :cond_34

    const-string p0, "OEM_DCFAILCAUSE_1"

    return-object p0

    :cond_34
    const/16 v0, 0x1002

    if-ne p0, v0, :cond_35

    const-string p0, "OEM_DCFAILCAUSE_2"

    return-object p0

    :cond_35
    const/16 v0, 0x1003

    if-ne p0, v0, :cond_36

    const-string p0, "OEM_DCFAILCAUSE_3"

    return-object p0

    :cond_36
    const/16 v0, 0x1004

    if-ne p0, v0, :cond_37

    const-string p0, "OEM_DCFAILCAUSE_4"

    return-object p0

    :cond_37
    const/16 v0, 0x1005

    if-ne p0, v0, :cond_38

    const-string p0, "OEM_DCFAILCAUSE_5"

    return-object p0

    :cond_38
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_39

    const-string p0, "OEM_DCFAILCAUSE_6"

    return-object p0

    :cond_39
    const/16 v0, 0x1007

    if-ne p0, v0, :cond_3a

    const-string p0, "OEM_DCFAILCAUSE_7"

    return-object p0

    :cond_3a
    const/16 v0, 0x1008

    if-ne p0, v0, :cond_3b

    const-string p0, "OEM_DCFAILCAUSE_8"

    return-object p0

    :cond_3b
    const/16 v0, 0x1009

    if-ne p0, v0, :cond_3c

    const-string p0, "OEM_DCFAILCAUSE_9"

    return-object p0

    :cond_3c
    const/16 v0, 0x100a

    if-ne p0, v0, :cond_3d

    const-string p0, "OEM_DCFAILCAUSE_10"

    return-object p0

    :cond_3d
    const/16 v0, 0x100b

    if-ne p0, v0, :cond_3e

    const-string p0, "OEM_DCFAILCAUSE_11"

    return-object p0

    :cond_3e
    const/16 v0, 0x100c

    if-ne p0, v0, :cond_3f

    const-string p0, "OEM_DCFAILCAUSE_12"

    return-object p0

    :cond_3f
    const/16 v0, 0x100d

    if-ne p0, v0, :cond_40

    const-string p0, "OEM_DCFAILCAUSE_13"

    return-object p0

    :cond_40
    const/16 v0, 0x100e

    if-ne p0, v0, :cond_41

    const-string p0, "OEM_DCFAILCAUSE_14"

    return-object p0

    :cond_41
    const/16 v0, 0x100f

    if-ne p0, v0, :cond_42

    const-string p0, "OEM_DCFAILCAUSE_15"

    return-object p0

    :cond_42
    const/4 v0, -0x1

    if-ne p0, v0, :cond_43

    const-string p0, "VOICE_REGISTRATION_FAIL"

    return-object p0

    :cond_43
    const/4 v0, -0x2

    if-ne p0, v0, :cond_44

    const-string p0, "DATA_REGISTRATION_FAIL"

    return-object p0

    :cond_44
    const/4 v0, -0x3

    if-ne p0, v0, :cond_45

    const-string p0, "SIGNAL_LOST"

    return-object p0

    :cond_45
    const/4 v0, -0x4

    if-ne p0, v0, :cond_46

    const-string p0, "PREF_RADIO_TECH_CHANGED"

    return-object p0

    :cond_46
    const/4 v0, -0x5

    if-ne p0, v0, :cond_47

    const-string p0, "RADIO_POWER_OFF"

    return-object p0

    :cond_47
    const/4 v0, -0x6

    if-ne p0, v0, :cond_48

    const-string p0, "TETHERED_CALL_ACTIVE"

    return-object p0

    :cond_48
    const v0, 0xffff

    if-ne p0, v0, :cond_49

    const-string p0, "ERROR_UNSPECIFIED"

    return-object p0

    .line 302
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
