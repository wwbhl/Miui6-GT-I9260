.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$2;
    }
.end annotation


# static fields
.field private static final HANG_UP_DELAY:I = 0x1f4

.field private static final NOTIFY_PHONE_STATE:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;-><init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mHandler:Landroid/os/Handler;

    .line 43
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DefaultPhoneNotifier;ILcom/android/internal/telephony/PhoneConstants$State;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/DefaultPhoneNotifier;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/telephony/PhoneConstants$State;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->processNotifyCallState(ILcom/android/internal/telephony/PhoneConstants$State;Ljava/lang/String;)V

    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 225
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 227
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 240
    packed-switch p0, :pswitch_data_0

    .line 246
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 244
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/Phone$DataActivityState;

    .prologue
    .line 289
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$2;->$SwitchMap$com$android$internal$telephony$Phone$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 291
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 295
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 297
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 308
    packed-switch p0, :pswitch_data_0

    .line 318
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    :goto_0
    return-object v0

    .line 310
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 312
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 314
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 316
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 255
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 257
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 261
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 272
    packed-switch p0, :pswitch_data_0

    .line 280
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_0
    return-object v0

    .line 274
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 276
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 278
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 14
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 154
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v13

    .line 155
    .local v13, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v8, 0x0

    .line 156
    .local v8, "linkProperties":Landroid/net/LinkProperties;
    const/4 v9, 0x0

    .line 157
    .local v9, "linkCapabilities":Landroid/net/LinkCapabilities;
    const/4 v11, 0x0

    .line 159
    .local v11, "roaming":Z
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 160
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 161
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v9

    .line 163
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    .line 164
    .local v12, "ss":Landroid/telephony/ServiceState;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    .line 167
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v2

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    :goto_0
    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    return-void

    .line 167
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private processNotifyCallState(ILcom/android/internal/telephony/PhoneConstants$State;Ljava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;
    .param p3, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-static {p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfo(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v0, "data":Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocation(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 147
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "otaspMode"    # I

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v8, 0x1

    .line 62
    iget-object v6, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 64
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v4

    .line 65
    .local v4, "slotId":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 66
    .local v5, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    const-string v1, ""

    .line 67
    .local v1, "incomingNumber":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 69
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 74
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    .line 75
    iget-object v6, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 76
    .local v2, "msg":Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 77
    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    iget-object v6, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->processNotifyCallState(ILcom/android/internal/telephony/PhoneConstants$State;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 95
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 96
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/telephony/ServiceState;

    .end local v0    # "ss":Landroid/telephony/ServiceState;
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 98
    .restart local v0    # "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 101
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(ILandroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrength(ILandroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method
