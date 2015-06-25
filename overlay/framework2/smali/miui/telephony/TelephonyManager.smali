.class public interface abstract Lmiui/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PRECISE_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_CALL_STATE"

.field public static final ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_BACKGROUND_CALL_STATE:Ljava/lang/String; = "background_state"

.field public static final EXTRA_DATA_APN:Ljava/lang/String; = "apn"

.field public static final EXTRA_DATA_APN_TYPE:Ljava/lang/String; = "apnType"

.field public static final EXTRA_DATA_CHANGE_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_DATA_FAILURE_CAUSE:Ljava/lang/String; = "failCause"

.field public static final EXTRA_DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_DATA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_DATA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"

.field public static final EXTRA_FOREGROUND_CALL_STATE:Ljava/lang/String; = "foreground_state"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final EXTRA_RINGING_CALL_STATE:Ljava/lang/String; = "ringing_state"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 109
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 115
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract answerRingingCall()V
.end method

.method public abstract call(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelMissedCallsNotification()V
.end method

.method public abstract dial(Ljava/lang/String;)V
.end method

.method public abstract disableDataConnectivity()Z
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract enableDataConnectivity()Z
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract endCall()Z
.end method

.method public abstract getAllCellInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallState()I
.end method

.method public abstract getCdmaEriIconIndex()I
.end method

.method public abstract getCdmaEriIconMode()I
.end method

.method public abstract getCdmaEriText()Ljava/lang/String;
.end method

.method public abstract getCellLocation()Landroid/telephony/CellLocation;
.end method

.method public abstract getCompleteVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getCurrentPhoneType()I
.end method

.method public abstract getDataActivity()I
.end method

.method public abstract getDataNetworkType()I
.end method

.method public abstract getDataState()I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getGroupIdLevel1()Ljava/lang/String;
.end method

.method public abstract getIsimDomain()Ljava/lang/String;
.end method

.method public abstract getIsimImpi()Ljava/lang/String;
.end method

.method public abstract getIsimImpu()[Ljava/lang/String;
.end method

.method public abstract getLine1AlphaTag()Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLteOnCdmaMode()I
.end method

.method public abstract getLteOnCdmaModeStatic()I
.end method

.method public abstract getMmsUAProfUrl()Ljava/lang/String;
.end method

.method public abstract getMmsUserAgent()Ljava/lang/String;
.end method

.method public abstract getMsisdn()Ljava/lang/String;
.end method

.method public abstract getNeighboringCellInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkClass(I)I
.end method

.method public abstract getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorName()Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getNetworkTypeName()Ljava/lang/String;
.end method

.method public abstract getNetworkTypeName(I)Ljava/lang/String;
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPhoneType(I)I
.end method

.method public abstract getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract getSimOperator()Ljava/lang/String;
.end method

.method public abstract getSimOperatorName()Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSlotId()I
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public abstract getVoiceNetworkType()I
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isNetworkRoaming()Z
.end method

.method public abstract isOffhook()Z
.end method

.method public abstract isRadioOn()Z
.end method

.method public abstract isRinging()Z
.end method

.method public abstract isSimPinEnabled()Z
.end method

.method public abstract isSmsCapable()Z
.end method

.method public abstract isVoiceCapable()Z
.end method

.method public abstract listen(Landroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract needsOtaServiceProvisioning()Z
.end method

.method public abstract setCellInfoListRate(I)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setDefaultDataSlotId()Z
.end method

.method public abstract setDefaultVoiceSlotId()V
.end method

.method public abstract setRadio(Z)Z
.end method

.method public abstract setRadioPower(Z)Z
.end method

.method public abstract showCallScreen()Z
.end method

.method public abstract showCallScreenWithDialpad(Z)Z
.end method

.method public abstract silenceRinger()V
.end method

.method public abstract supplyPin(Ljava/lang/String;)Z
.end method

.method public abstract supplyPinReportResult(Ljava/lang/String;)[I
.end method

.method public abstract supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method public abstract toggleRadioOnOff()V
.end method

.method public abstract updateServiceLocation()V
.end method
