.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field protected static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field protected static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field protected static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

.field protected static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field protected static sContext:Landroid/content/Context;

.field protected static sLooper:Landroid/os/Looper;

.field protected static sMadeDefaults:Z

.field private static sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

.field private static sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

.field protected static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected static sProxyPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 53
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 223
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 232
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 236
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 237
    return-object v0

    .line 226
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 227
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 236
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 241
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 242
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 243
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 244
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 206
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getProxyPhones()[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-class v16, Lcom/android/internal/telephony/Phone;

    monitor-enter v16

    .line 75
    :try_start_0
    sget-boolean v15, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v15, :cond_b

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 77
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 79
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v15, :cond_0

    .line 80
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v17, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 190
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 84
    :cond_0
    const/4 v14, 0x0

    .line 86
    .local v14, "retryCount":I
    :goto_0
    const/4 v7, 0x0

    .line 87
    .local v7, "hasException":Z
    add-int/lit8 v14, v14, 0x1

    .line 92
    :try_start_1
    new-instance v15, Landroid/net/LocalServerSocket;

    const-string v17, "com.android.internal.telephony"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_1
    if-nez v7, :cond_4

    .line 109
    :try_start_2
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v15

    invoke-virtual {v15}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v11

    .line 110
    .local v11, "phoneCount":I
    new-instance v15, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v15}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 111
    new-array v15, v11, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 112
    new-array v15, v11, [Lcom/android/internal/telephony/Phone;

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 114
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v11, :cond_8

    .line 116
    const/4 v13, 0x1

    .line 117
    .local v13, "preferredNetworkMode":I
    if-nez v8, :cond_1

    .line 118
    const-string v15, "ro.telephony.default_network"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 122
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 123
    const/4 v13, 0x7

    .line 126
    :cond_2
    if-nez v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "preferred_network_mode"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 132
    .local v9, "networkMode":I
    :goto_3
    const-string v15, "PhoneFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Phone "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " network Mode set to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v4

    .line 135
    .local v4, "cdmaSubscription":I
    const-string v15, "PhoneFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cdma Subscription set to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v4, v8}, Lcom/android/internal/telephony/RILFactory;->makeRIL(Landroid/content/Context;III)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v17

    aput-object v17, v15, v8

    .line 141
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v15, v15, v8

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 143
    invoke-static {v9}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v12

    .line 144
    .local v12, "phoneType":I
    const/4 v15, 0x1

    if-ne v12, v15, :cond_7

    .line 145
    const-string v15, "PhoneFactory"

    const-string v17, "Creating GSMPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v17, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v19, v19, v8

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v17, v15, v8

    .line 114
    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 93
    .end local v4    # "cdmaSubscription":I
    .end local v8    # "i":I
    .end local v9    # "networkMode":I
    .end local v11    # "phoneCount":I
    .end local v12    # "phoneType":I
    .end local v13    # "preferredNetworkMode":I
    :catch_0
    move-exception v6

    .line 94
    .local v6, "ex":Ljava/io/IOException;
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 99
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_4
    const/4 v15, 0x3

    if-le v14, v15, :cond_5

    .line 100
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v17, "PhoneFactory probably already running"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :cond_5
    const-wide/16 v17, 0x7d0

    :try_start_3
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 104
    :catch_1
    move-exception v15

    goto/16 :goto_0

    .line 126
    .restart local v8    # "i":I
    .restart local v11    # "phoneCount":I
    .restart local v13    # "preferredNetworkMode":I
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "preferred_network_mode."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_3

    .line 148
    .restart local v4    # "cdmaSubscription":I
    .restart local v9    # "networkMode":I
    .restart local v12    # "phoneType":I
    :cond_7
    const/4 v15, 0x2

    if-ne v12, v15, :cond_3

    .line 149
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 157
    const-string v15, "PhoneFactory"

    const-string v17, "Creating CDMAPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v17, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v19, v19, v8

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v17, v15, v8

    goto :goto_4

    .line 151
    :pswitch_0
    const-string v15, "PhoneFactory"

    const-string v17, "Creating CDMALTEPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v17, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v18, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v19, v19, v8

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v17, v15, v8

    goto/16 :goto_4

    .line 165
    .end local v4    # "cdmaSubscription":I
    .end local v9    # "networkMode":I
    .end local v12    # "phoneType":I
    .end local v13    # "preferredNetworkMode":I
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/TelephonyCapabilities;->isX5All()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 168
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/codeaurora/telephony/msim/MSimUiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/MSimUiccController;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    .line 169
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v15, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->make(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/ModemStackController;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    .line 171
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v15, v1}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->make(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    .line 177
    :cond_9
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v5

    .line 179
    .local v5, "componentName":Landroid/content/ComponentName;
    const-string v10, "NONE"

    .line 180
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 181
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 183
    :cond_a
    const-string v15, "PhoneFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "defaultSmsApplication: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 188
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 190
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "hasException":Z
    .end local v8    # "i":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "phoneCount":I
    .end local v14    # "retryCount":I
    :cond_b
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
