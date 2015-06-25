.class public final Lcom/android/internal/telephony/qc/QCRIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "QCRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/qc/QCRIL$RILReceiver;,
        Lcom/android/internal/telephony/qc/QCRIL$RILSender;
    }
.end annotation


# static fields
.field private static final BYTE_SIZE:I = 0x1

.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field private static final INT_SIZE:I = 0x4

.field private static final OEMHOOK_BASE:I = 0x80000

.field private static final OEMHOOK_EVT_HOOK_GET_MODEM_CAPABILITY:I = 0x80023

.field private static final OEMHOOK_EVT_HOOK_SET_DEFAULT_VOICE_SUB:I = 0x8000c

.field private static final OEMHOOK_EVT_HOOK_SET_LOCAL_CALL_HOLD:I = 0x8000d

.field private static final OEMHOOK_EVT_HOOK_SET_PAGING_PRIORITY:I = 0x80007

.field private static final OEMHOOK_EVT_HOOK_SET_TUNEAWAY:I = 0x80005

.field private static final OEMHOOK_EVT_HOOK_UPDATE_SUB_BINDING:I = 0x80024

.field private static final OEM_IDENTIFIER:Ljava/lang/String; = "QOEMHOOK"

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_NAME_RIL:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0


# instance fields
.field final OEMHOOK_UNSOL_CDMA_BURST_DTMF:I

.field final OEMHOOK_UNSOL_CDMA_CONT_DTMF_START:I

.field final OEMHOOK_UNSOL_CDMA_CONT_DTMF_STOP:I

.field final OEMHOOK_UNSOL_WMS_READY:I

.field protected mCatCcAlphaRegistrant:Landroid/os/Registrant;

.field mHeaderSize:I

.field private final mInstanceId:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field mReceiver:Lcom/android/internal/telephony/qc/QCRIL$RILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/qc/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field private mSetPreferredNetworkType:I

.field mSocket:Landroid/net/LocalSocket;

.field protected mSsRegistrant:Landroid/os/Registrant;

.field protected mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 316
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rild"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rild1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rild2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/qc/QCRIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # I

    .prologue
    const/4 v6, 0x0

    .line 635
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 270
    const-string v4, "QOEMHOOK"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mHeaderSize:I

    .line 273
    const v4, 0x803e9

    iput v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->OEMHOOK_UNSOL_CDMA_BURST_DTMF:I

    .line 274
    const v4, 0x803ea

    iput v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->OEMHOOK_UNSOL_CDMA_CONT_DTMF_START:I

    .line 275
    const v4, 0x803eb

    iput v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->OEMHOOK_UNSOL_CDMA_CONT_DTMF_STOP:I

    .line 276
    const v4, 0x803f1

    iput v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->OEMHOOK_UNSOL_WMS_READY:I

    .line 278
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    .line 295
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    .line 300
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 326
    new-instance v4, Lcom/android/internal/telephony/qc/QCRIL$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/qc/QCRIL$1;-><init>(Lcom/android/internal/telephony/qc/QCRIL;)V

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL(context, preferredNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cdmaSubscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 640
    iput-object p1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mContext:Landroid/content/Context;

    .line 641
    iput p3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaSubscription:I

    .line 642
    iput p2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mPreferredNetworkType:I

    .line 643
    iput v6, p0, Lcom/android/internal/telephony/qc/QCRIL;->mPhoneType:I

    .line 644
    iput p4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    .line 646
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 647
    .local v3, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "RILJ"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 648
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 649
    const-string v4, "ro.ril.wake_lock_timeout"

    const v5, 0xea60

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockTimeout:I

    .line 651
    iput v6, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    .line 653
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "RILSender"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSenderThread:Landroid/os/HandlerThread;

    .line 654
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 656
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 657
    .local v2, "looper":Landroid/os/Looper;
    new-instance v4, Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/telephony/qc/QCRIL$RILSender;-><init>(Lcom/android/internal/telephony/qc/QCRIL;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    .line 659
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 661
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 662
    const-string v4, "Not starting RILReceiver: wifi-only"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 674
    :goto_0
    return-void

    .line 664
    :cond_0
    const-string v4, "Starting RILReceiver"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 665
    new-instance v4, Lcom/android/internal/telephony/qc/QCRIL$RILReceiver;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/qc/QCRIL$RILReceiver;-><init>(Lcom/android/internal/telephony/qc/QCRIL;)V

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mReceiver:Lcom/android/internal/telephony/qc/QCRIL$RILReceiver;

    .line 666
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/internal/telephony/qc/QCRIL;->mReceiver:Lcom/android/internal/telephony/qc/QCRIL$RILReceiver;

    const-string v6, "RILReceiver"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mReceiverThread:Ljava/lang/Thread;

    .line 667
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 669
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 670
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/qc/QCRIL;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;
    .param p1, "x1"    # Z

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->sendScreenState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/qc/QCRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCRIL;->decrementWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/qc/QCRIL;I)Lcom/android/internal/telephony/qc/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;
    .param p1, "x1"    # I

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/qc/QCRIL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCRIL;->clearWakeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/qc/QCRIL;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;

    .prologue
    .line 241
    iget v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    return v0
.end method

.method static synthetic access$500(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/qc/QCRIL;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/qc/QCRIL;Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/qc/QCRIL;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/qc/QCRIL;->clearRequestList(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/qc/QCRIL;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCRIL;
    .param p1, "x1"    # I

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .prologue
    .line 2407
    iget-object v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2408
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2409
    iget v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    .line 2411
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/qc/QCRIL$RILSender;->removeMessages(I)V

    .line 2412
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/qc/QCRIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2413
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    iget v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/qc/QCRIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2414
    monitor-exit v2

    .line 2415
    return-void

    .line 2414
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    .line 2484
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2485
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2486
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 2487
    const-string v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearRequestList  mWakeLockCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRequestList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2493
    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/qc/RILRequest;

    .line 2494
    .local v2, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    if-eqz p2, :cond_1

    .line 2495
    const-string v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/qc/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/qc/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2499
    invoke-virtual {v2}, Lcom/android/internal/telephony/qc/RILRequest;->release()V

    .line 2500
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCRIL;->decrementWakeLock()V

    .line 2492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2502
    .end local v2    # "rr":Lcom/android/internal/telephony/qc/RILRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2503
    monitor-exit v4

    .line 2504
    return-void

    .line 2503
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private clearWakeLock()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2433
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2434
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    .line 2439
    :goto_0
    return v0

    .line 2435
    :cond_0
    const-string v0, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "at time of clearing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    .line 2437
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/qc/QCRIL$RILSender;->removeMessages(I)V

    .line 2439
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 2440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/qc/RILRequest;[B)V
    .locals 9
    .param p1, "rr"    # Lcom/android/internal/telephony/qc/RILRequest;
    .param p2, "pdu"    # [B

    .prologue
    .line 1333
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1334
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1337
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1339
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v0, v7

    .line 1345
    .local v0, "address_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v8, v0

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1346
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1347
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1346
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1351
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v6, v7

    .line 1352
    .local v6, "subaddr_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v8, v6

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1353
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    .line 1354
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1353
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1357
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 1358
    .local v2, "bearerDataLength":I
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    .line 1360
    iget-object v7, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1362
    .end local v0    # "address_nbr_of_digits":I
    .end local v2    # "bearerDataLength":I
    .end local v5    # "i":I
    .end local v6    # "subaddr_nbr_of_digits":I
    :catch_0
    move-exception v4

    .line 1363
    .local v4, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1366
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method private constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/qc/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/qc/RILRequest;
    .param p2, "smscPDU"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;

    .prologue
    .line 1299
    iget-object v0, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    iget-object v0, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method private decrementWakeLock()V
    .locals 3

    .prologue
    .line 2419
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2420
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 2421
    iget v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    .line 2427
    :goto_0
    monitor-exit v1

    .line 2428
    return-void

    .line 2423
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    .line 2424
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2425
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/qc/QCRIL$RILSender;->removeMessages(I)V

    goto :goto_0

    .line 2427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/qc/RILRequest;
    .locals 4
    .param p1, "serial"    # I

    .prologue
    .line 2507
    const/4 v1, 0x0

    .line 2508
    .local v1, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2509
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/qc/RILRequest;

    move-object v1, v0

    .line 2510
    if-eqz v1, :cond_0

    .line 2511
    iget-object v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2513
    :cond_0
    monitor-exit v3

    .line 2515
    return-object v1

    .line 2513
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 3628
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 3630
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput p2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 3631
    const/4 v4, 0x5

    if-ge p2, v4, :cond_1

    .line 3632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 3634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 3635
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3636
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3637
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3663
    :cond_0
    :goto_0
    return-object v1

    .line 3640
    .end local v0    # "addresses":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 3641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 3642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 3644
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 3645
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 3646
    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3648
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "getDataCallResponse, no ifname"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3650
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3651
    .restart local v0    # "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3652
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3654
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3655
    .local v2, "dnses":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3656
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 3658
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3659
    .local v3, "gateways":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3660
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 4
    .param p1, "stateInt"    # I

    .prologue
    .line 2380
    sparse-switch p1, :sswitch_data_0

    .line 2386
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2381
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 2389
    .local v0, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v0

    .line 2382
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2383
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2380
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private isCdmaApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4697
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4692
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQcUnsolOemHookResp(Ljava/nio/ByteBuffer;)Z
    .locals 6
    .param p1, "oemHookResponse"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .line 3288
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mHeaderSize:I

    if-ge v3, v4, :cond_1

    .line 3293
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_UNSOL_OEM_HOOK_RAW data size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_0
    :goto_0
    return v2

    .line 3297
    :cond_1
    const-string v3, "QOEMHOOK"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 3298
    .local v0, "oemIdBytes":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3299
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 3300
    .local v1, "oemIdString":Ljava/lang/String;
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oem ID in RIL_UNSOL_OEM_HOOK_RAW is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    const-string v3, "QOEMHOOK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3306
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .param p1, "infoRec"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .prologue
    const/4 v4, 0x0

    .line 3952
    const/16 v0, 0x403

    .line 3953
    .local v0, "response":I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    if-eqz v1, :cond_1

    .line 3954
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3955
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3956
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3996
    :cond_0
    :goto_0
    return-void

    .line 3959
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_2

    .line 3960
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3961
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3962
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3965
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v1, :cond_3

    .line 3966
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3967
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3968
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3971
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v1, :cond_4

    .line 3972
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3973
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3974
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3977
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v1, :cond_5

    .line 3978
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3979
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3980
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3983
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v1, :cond_6

    .line 3984
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3985
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3986
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3989
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v1, :cond_0

    .line 3990
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3991
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3992
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .locals 4
    .param p1, "rilVer"    # I

    .prologue
    const/4 v3, 0x0

    .line 3278
    iput p1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRilVersion:I

    .line 3279
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 3280
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3283
    :cond_0
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2466
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2467
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 2475
    :cond_0
    :goto_0
    return-void

    .line 2468
    :cond_1
    if-nez v1, :cond_0

    .line 2469
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2470
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    if-eqz v0, :cond_0

    .line 2471
    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->release()V

    .line 2472
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCRIL;->decrementWakeLock()V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/qc/RILRequest;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 2521
    const/4 v1, 0x0

    .line 2523
    .local v1, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2524
    .local v4, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2528
    .local v0, "error":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/qc/QCRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v3

    .line 2530
    .local v3, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    if-nez v3, :cond_1

    .line 2531
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 2740
    .end local v3    # "rr":Lcom/android/internal/telephony/qc/RILRequest;
    :cond_0
    :goto_0
    return-object v3

    .line 2536
    .restart local v3    # "rr":Lcom/android/internal/telephony/qc/RILRequest;
    :cond_1
    const/4 v2, 0x0

    .line 2538
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_3

    .line 2540
    :cond_2
    :try_start_0
    iget v7, v3, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    packed-switch v7, :pswitch_data_0

    .line 2679
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2681
    :catch_0
    move-exception v5

    .line 2684
    .local v5, "tr":Ljava/lang/Throwable;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, possible invalid RIL response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2688
    iget-object v7, v3, Lcom/android/internal/telephony/qc/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 2689
    iget-object v7, v3, Lcom/android/internal/telephony/qc/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v6, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2690
    iget-object v6, v3, Lcom/android/internal/telephony/qc/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2546
    .end local v5    # "tr":Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 2699
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_1
    iget v7, v3, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    packed-switch v7, :pswitch_data_1

    .line 2712
    :cond_4
    :goto_2
    :pswitch_1
    if-eqz v0, :cond_7

    .line 2713
    iget v6, v3, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_0

    .line 2729
    :cond_5
    :goto_3
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/qc/RILRequest;->onError(ILjava/lang/Object;)V

    goto :goto_0

    .line 2547
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2548
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2549
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2550
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2551
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2552
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2553
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2554
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2555
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2556
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2557
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2558
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2560
    :pswitch_e
    iget-object v7, p0, Lcom/android/internal/telephony/qc/QCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2561
    iget-object v7, p0, Lcom/android/internal/telephony/qc/QCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_6

    .line 2562
    const-string v7, "testing emergency call, notify ECM Registrants"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2563
    iget-object v7, p0, Lcom/android/internal/telephony/qc/QCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 2566
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 2567
    goto :goto_1

    .line 2569
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2570
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2571
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2572
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2573
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2574
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2575
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2576
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2577
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2578
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2579
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2580
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2581
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2582
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2585
    :pswitch_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2586
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2587
    :pswitch_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2588
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2590
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2591
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2592
    :pswitch_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2593
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2594
    :pswitch_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2595
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2596
    :pswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2597
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2598
    :pswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2599
    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2600
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2601
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2602
    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2603
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2604
    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2605
    :pswitch_30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2606
    :pswitch_31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2607
    :pswitch_32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2608
    :pswitch_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2609
    :pswitch_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2610
    :pswitch_35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2611
    :pswitch_36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2612
    :pswitch_37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2613
    :pswitch_38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2614
    :pswitch_39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2615
    :pswitch_3a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2616
    :pswitch_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2617
    :pswitch_3c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2618
    :pswitch_3d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2619
    :pswitch_3e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2620
    :pswitch_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2621
    :pswitch_40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2622
    :pswitch_41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2623
    :pswitch_42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2624
    :pswitch_43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2625
    :pswitch_44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2626
    :pswitch_45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2627
    :pswitch_46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2628
    :pswitch_47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2629
    :pswitch_48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2630
    :pswitch_49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2631
    :pswitch_4a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2632
    :pswitch_4b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2633
    :pswitch_4c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2634
    :pswitch_4d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2635
    :pswitch_4e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2636
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2637
    :pswitch_50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2638
    :pswitch_51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2639
    :pswitch_52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2640
    :pswitch_53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2641
    :pswitch_54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2642
    :pswitch_55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2643
    :pswitch_56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2644
    :pswitch_57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2645
    :pswitch_58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2646
    :pswitch_59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2647
    :pswitch_5a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2648
    :pswitch_5b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2649
    :pswitch_5c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2650
    :pswitch_5d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2651
    :pswitch_5e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2652
    :pswitch_5f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2653
    :pswitch_60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2654
    :pswitch_61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2655
    :pswitch_62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2656
    :pswitch_63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2657
    :pswitch_64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2658
    :pswitch_65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2659
    :pswitch_66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2660
    :pswitch_67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2661
    :pswitch_68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2662
    :pswitch_69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2663
    :pswitch_6a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2664
    :pswitch_6b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2665
    :pswitch_6c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2666
    :pswitch_6d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseGetDataCallProfile(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 2667
    .local v2, "ret":Ljava/lang/Object;
    :pswitch_6e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2668
    :pswitch_6f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2669
    :pswitch_70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2670
    :pswitch_71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2671
    :pswitch_72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 2672
    .local v2, "ret":Ljava/lang/Object;
    :pswitch_73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2673
    :pswitch_74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2674
    :pswitch_75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2675
    :pswitch_76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2676
    :pswitch_77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2677
    :pswitch_78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 2702
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_79
    iget-object v7, p0, Lcom/android/internal/telephony/qc/QCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v7, :cond_4

    .line 2704
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/qc/QCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2707
    iget-object v7, p0, Lcom/android/internal/telephony/qc/QCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 2719
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/qc/QCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_5

    .line 2721
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/qc/QCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2724
    iget-object v6, p0, Lcom/android/internal/telephony/qc/QCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_3

    .line 2732
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v8, v2}, Lcom/android/internal/telephony/qc/QCRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2735
    iget-object v7, v3, Lcom/android/internal/telephony/qc/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 2736
    iget-object v7, v3, Lcom/android/internal/telephony/qc/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2737
    iget-object v6, v3, Lcom/android/internal/telephony/qc/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_62
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_69
        :pswitch_67
        :pswitch_68
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_6d
        :pswitch_77
        :pswitch_78
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    .line 2699
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_79
        :pswitch_1
        :pswitch_79
    .end packed-switch

    .line 2713
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private processUnsolOemhookResponse(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "oemHookResponse"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 3310
    const/4 v1, 0x0

    .local v1, "responseId":I
    const/4 v2, 0x0

    .local v2, "responseSize":I
    const/4 v3, 0x0

    .line 3312
    .local v3, "responseVoiceId":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 3313
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response ID in RIL_UNSOL_OEM_HOOK_RAW is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 3316
    if-gez v2, :cond_0

    .line 3317
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Size is Invalid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :goto_0
    return-void

    .line 3321
    :cond_0
    new-array v0, v2, [B

    .line 3322
    .local v0, "responseData":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 3323
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3331
    packed-switch v1, :pswitch_data_0

    .line 3349
    :pswitch_0
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not served in this process."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3325
    :cond_1
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Size("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") doesnot match remaining bytes("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in the buffer. So, don\'t process further"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3333
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->notifyCdmaFwdBurstDtmf([B)V

    goto :goto_0

    .line 3337
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->notifyCdmaFwdContDtmfStart([B)V

    goto :goto_0

    .line 3341
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/qc/QCRIL;->notifyCdmaFwdContDtmfStop()V

    goto :goto_0

    .line 3345
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->notifyWmsReady([B)V

    goto :goto_0

    .line 3331
    nop

    :pswitch_data_0
    .packed-switch 0x803e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 27
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2812
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2814
    .local v16, "response":I
    packed-switch v16, :pswitch_data_0

    .line 2863
    :pswitch_0
    :try_start_0
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unrecognized unsol response: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2865
    :catch_0
    move-exception v21

    .line 2866
    .local v21, "tr":Ljava/lang/Throwable;
    const-string v22, "RILJ"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception processing unsol response: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "Exception:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    .end local v21    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 2821
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .line 2871
    :goto_1
    packed-switch v16, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 2874
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    .line 2875
    .local v9, "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 2877
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/qc/QCRIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 2822
    .end local v9    # "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_4
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .local v18, "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2823
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2824
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2825
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2826
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2827
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2828
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2829
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2830
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2831
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2832
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2833
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2834
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2835
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2836
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2837
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2838
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2839
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2840
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2841
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2842
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2843
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2844
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2845
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2846
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2847
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v18

    .local v18, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 2848
    .end local v18    # "ret":Ljava/util/ArrayList;
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .local v18, "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2849
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2850
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2851
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2852
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2853
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2854
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2855
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2856
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v18

    .local v18, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 2857
    .end local v18    # "ret":Ljava/util/ArrayList;
    :pswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .local v18, "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2858
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2859
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2860
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2880
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2b
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 2882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2886
    :pswitch_2c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2892
    :pswitch_2d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2898
    :pswitch_2e
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 2901
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v4, v0, [Ljava/lang/String;

    .line 2903
    .local v4, "a":[Ljava/lang/String;
    const/16 v22, 0x1

    check-cast v18, Ljava/lang/String;

    aput-object v18, v4, v22

    .line 2907
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v19

    .line 2908
    .local v19, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2915
    .end local v4    # "a":[Ljava/lang/String;
    .end local v19    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_2f
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 2917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2923
    :pswitch_30
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 2925
    check-cast v18, [I

    move-object/from16 v20, v18

    check-cast v20, [I

    .line 2927
    .local v20, "smsIndex":[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 2928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2933
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v20    # "smsIndex":[I
    :pswitch_31
    move-object/from16 v22, v18

    .line 2938
    check-cast v22, [Ljava/lang/String;

    move-object/from16 v15, v22

    check-cast v15, [Ljava/lang/String;

    .line 2940
    .local v15, "resp":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 2941
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v15, v0, [Ljava/lang/String;

    .line 2942
    const/16 v22, 0x0

    check-cast v18, [Ljava/lang/String;

    check-cast v18, [Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v23, v18, v23

    aput-object v23, v15, v22

    .line 2943
    const/16 v22, 0x1

    const/16 v23, 0x0

    aput-object v23, v15, v22

    .line 2945
    :cond_2
    const/16 v22, 0x0

    aget-object v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 2946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2952
    .end local v15    # "resp":[Ljava/lang/String;
    :pswitch_32
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 2956
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 2958
    .local v10, "nitzReceiveTime":J
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 2960
    .local v17, "result":[Ljava/lang/Object;
    const/16 v22, 0x0

    aput-object v18, v17, v22

    .line 2961
    const/16 v22, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v17, v22

    .line 2963
    const-string v22, "telephony.test.ignore.nitz"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2966
    .local v7, "ignoreNitz":Z
    if-eqz v7, :cond_3

    .line 2967
    const-string v22, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2969
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 2971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2975
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/qc/QCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2984
    .end local v7    # "ignoreNitz":Z
    .end local v10    # "nitzReceiveTime":J
    .end local v17    # "result":[Ljava/lang/Object;
    :pswitch_33
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2992
    :pswitch_34
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 2994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2998
    :pswitch_35
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3007
    :pswitch_36
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3016
    :pswitch_37
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3025
    :pswitch_38
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3034
    :pswitch_39
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3043
    :pswitch_3a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3051
    :pswitch_3b
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3060
    :pswitch_3c
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3069
    :pswitch_3d
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3077
    :pswitch_3e
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 3079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 3085
    :pswitch_3f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    move-object/from16 v19, v18

    .line 3087
    check-cast v19, Landroid/telephony/SmsMessage;

    .line 3089
    .restart local v19    # "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3096
    .end local v19    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_40
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 3098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3105
    :pswitch_41
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 3107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3113
    :pswitch_42
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLog(I)V

    .line 3115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3121
    :pswitch_43
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3130
    :pswitch_44
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3142
    :pswitch_45
    :try_start_3
    move-object/from16 v0, v18

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3148
    .local v8, "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 3149
    .local v14, "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3150
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/qc/QCRIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_2

    .line 3143
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v14    # "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_1
    move-exception v5

    .line 3144
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string v22, "RILJ"

    const-string v23, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/ClassCastException;
    :pswitch_46
    move-object/from16 v22, v18

    .line 3155
    check-cast v22, [B

    check-cast v22, [B

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogvRet(ILjava/lang/Object;)V

    move-object/from16 v22, v18

    .line 3156
    check-cast v22, [B

    check-cast v22, [B

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 3157
    .local v12, "oemHookResponse":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3158
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/qc/QCRIL;->isQcUnsolOemHookResp(Ljava/nio/ByteBuffer;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 3159
    const-string v22, "RILJ"

    const-string v23, "OEM ID check Passed"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/qc/QCRIL;->processUnsolOemhookResponse(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 3161
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3162
    const-string v22, "RILJ"

    const-string v23, "External OEM message, to be notified"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3168
    .end local v12    # "oemHookResponse":Ljava/nio/ByteBuffer;
    :pswitch_47
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3170
    check-cast v18, [I

    check-cast v18, [I

    const/16 v22, 0x0

    aget v22, v18, v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/4 v13, 0x1

    .line 3171
    .local v13, "playtone":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3170
    .end local v13    # "playtone":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 3177
    :pswitch_48
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3186
    :pswitch_49
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3195
    :pswitch_4a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3204
    :pswitch_4b
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3213
    :pswitch_4c
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3222
    :pswitch_4d
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mPreferredNetworkType:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 3227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaSubscription:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 3228
    const v22, 0x7fffffff

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 3229
    check-cast v18, [I

    check-cast v18, [I

    const/16 v22, 0x0

    aget v22, v18, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_0

    .line 3233
    :pswitch_4e
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3243
    :pswitch_4f
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSsRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSsRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3252
    :pswitch_50
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3261
    :pswitch_51
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/qc/QCRIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2814
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_15
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch

    .line 2871
    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_2
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_3d
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_49
        :pswitch_4e
        :pswitch_2b
        :pswitch_4f
        :pswitch_50
        :pswitch_51
    .end packed-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 479
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 481
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 482
    const-string v5, "RILJ"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 511
    :goto_0
    return v1

    .line 486
    :cond_1
    add-int/2addr v2, v0

    .line 487
    sub-int/2addr v3, v0

    .line 488
    if-gtz v3, :cond_0

    .line 490
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 496
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 497
    move v3, v1

    .line 499
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 501
    if-gez v0, :cond_3

    .line 502
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 504
    goto :goto_0

    .line 507
    :cond_3
    add-int/2addr v2, v0

    .line 508
    sub-int/2addr v3, v0

    .line 509
    if-gtz v3, :cond_2

    goto :goto_0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 4024
    packed-switch p0, :pswitch_data_0

    .line 4148
    const-string v0, "<unknown request>"

    :goto_0
    return-object v0

    .line 4025
    :pswitch_0
    const-string v0, "GET_SIM_STATUS"

    goto :goto_0

    .line 4026
    :pswitch_1
    const-string v0, "ENTER_SIM_PIN"

    goto :goto_0

    .line 4027
    :pswitch_2
    const-string v0, "ENTER_SIM_PUK"

    goto :goto_0

    .line 4028
    :pswitch_3
    const-string v0, "ENTER_SIM_PIN2"

    goto :goto_0

    .line 4029
    :pswitch_4
    const-string v0, "ENTER_SIM_PUK2"

    goto :goto_0

    .line 4030
    :pswitch_5
    const-string v0, "CHANGE_SIM_PIN"

    goto :goto_0

    .line 4031
    :pswitch_6
    const-string v0, "CHANGE_SIM_PIN2"

    goto :goto_0

    .line 4032
    :pswitch_7
    const-string v0, "ENTER_DEPERSONALIZATION_CODE"

    goto :goto_0

    .line 4033
    :pswitch_8
    const-string v0, "GET_CURRENT_CALLS"

    goto :goto_0

    .line 4034
    :pswitch_9
    const-string v0, "DIAL"

    goto :goto_0

    .line 4035
    :pswitch_a
    const-string v0, "GET_IMSI"

    goto :goto_0

    .line 4036
    :pswitch_b
    const-string v0, "HANGUP"

    goto :goto_0

    .line 4037
    :pswitch_c
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    goto :goto_0

    .line 4038
    :pswitch_d
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    goto :goto_0

    .line 4039
    :pswitch_e
    const-string v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    goto :goto_0

    .line 4040
    :pswitch_f
    const-string v0, "CONFERENCE"

    goto :goto_0

    .line 4041
    :pswitch_10
    const-string v0, "UDUB"

    goto :goto_0

    .line 4042
    :pswitch_11
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    goto :goto_0

    .line 4043
    :pswitch_12
    const-string v0, "SIGNAL_STRENGTH"

    goto :goto_0

    .line 4044
    :pswitch_13
    const-string v0, "VOICE_REGISTRATION_STATE"

    goto :goto_0

    .line 4045
    :pswitch_14
    const-string v0, "DATA_REGISTRATION_STATE"

    goto :goto_0

    .line 4046
    :pswitch_15
    const-string v0, "OPERATOR"

    goto :goto_0

    .line 4047
    :pswitch_16
    const-string v0, "RADIO_POWER"

    goto :goto_0

    .line 4048
    :pswitch_17
    const-string v0, "DTMF"

    goto :goto_0

    .line 4049
    :pswitch_18
    const-string v0, "SEND_SMS"

    goto :goto_0

    .line 4050
    :pswitch_19
    const-string v0, "SEND_SMS_EXPECT_MORE"

    goto :goto_0

    .line 4051
    :pswitch_1a
    const-string v0, "SETUP_DATA_CALL"

    goto :goto_0

    .line 4052
    :pswitch_1b
    const-string v0, "SIM_IO"

    goto :goto_0

    .line 4055
    :pswitch_1c
    const-string v0, "SIM_TRANSMIT_BASIC"

    goto :goto_0

    .line 4056
    :pswitch_1d
    const-string v0, "SIM_OPEN_CHANNEL"

    goto :goto_0

    .line 4057
    :pswitch_1e
    const-string v0, "SIM_CLOSE_CHANNEL"

    goto :goto_0

    .line 4058
    :pswitch_1f
    const-string v0, "SIM_TRANSMIT_CHANNEL"

    goto :goto_0

    .line 4060
    :pswitch_20
    const-string v0, "SEND_USSD"

    goto :goto_0

    .line 4061
    :pswitch_21
    const-string v0, "CANCEL_USSD"

    goto :goto_0

    .line 4062
    :pswitch_22
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 4063
    :pswitch_23
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 4064
    :pswitch_24
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    goto :goto_0

    .line 4065
    :pswitch_25
    const-string v0, "SET_CALL_FORWARD"

    goto :goto_0

    .line 4066
    :pswitch_26
    const-string v0, "QUERY_CALL_WAITING"

    goto :goto_0

    .line 4067
    :pswitch_27
    const-string v0, "SET_CALL_WAITING"

    goto :goto_0

    .line 4068
    :pswitch_28
    const-string v0, "SMS_ACKNOWLEDGE"

    goto :goto_0

    .line 4069
    :pswitch_29
    const-string v0, "GET_IMEI"

    goto :goto_0

    .line 4070
    :pswitch_2a
    const-string v0, "GET_IMEISV"

    goto/16 :goto_0

    .line 4071
    :pswitch_2b
    const-string v0, "ANSWER"

    goto/16 :goto_0

    .line 4072
    :pswitch_2c
    const-string v0, "DEACTIVATE_DATA_CALL"

    goto/16 :goto_0

    .line 4073
    :pswitch_2d
    const-string v0, "QUERY_FACILITY_LOCK"

    goto/16 :goto_0

    .line 4074
    :pswitch_2e
    const-string v0, "SET_FACILITY_LOCK"

    goto/16 :goto_0

    .line 4075
    :pswitch_2f
    const-string v0, "CHANGE_BARRING_PASSWORD"

    goto/16 :goto_0

    .line 4076
    :pswitch_30
    const-string v0, "QUERY_NETWORK_SELECTION_MODE"

    goto/16 :goto_0

    .line 4077
    :pswitch_31
    const-string v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    goto/16 :goto_0

    .line 4078
    :pswitch_32
    const-string v0, "SET_NETWORK_SELECTION_MANUAL"

    goto/16 :goto_0

    .line 4079
    :pswitch_33
    const-string v0, "QUERY_AVAILABLE_NETWORKS "

    goto/16 :goto_0

    .line 4080
    :pswitch_34
    const-string v0, "DTMF_START"

    goto/16 :goto_0

    .line 4081
    :pswitch_35
    const-string v0, "DTMF_STOP"

    goto/16 :goto_0

    .line 4082
    :pswitch_36
    const-string v0, "BASEBAND_VERSION"

    goto/16 :goto_0

    .line 4083
    :pswitch_37
    const-string v0, "SEPARATE_CONNECTION"

    goto/16 :goto_0

    .line 4084
    :pswitch_38
    const-string v0, "SET_MUTE"

    goto/16 :goto_0

    .line 4085
    :pswitch_39
    const-string v0, "GET_MUTE"

    goto/16 :goto_0

    .line 4086
    :pswitch_3a
    const-string v0, "QUERY_CLIP"

    goto/16 :goto_0

    .line 4087
    :pswitch_3b
    const-string v0, "LAST_DATA_CALL_FAIL_CAUSE"

    goto/16 :goto_0

    .line 4088
    :pswitch_3c
    const-string v0, "DATA_CALL_LIST"

    goto/16 :goto_0

    .line 4089
    :pswitch_3d
    const-string v0, "RESET_RADIO"

    goto/16 :goto_0

    .line 4090
    :pswitch_3e
    const-string v0, "OEM_HOOK_RAW"

    goto/16 :goto_0

    .line 4091
    :pswitch_3f
    const-string v0, "OEM_HOOK_STRINGS"

    goto/16 :goto_0

    .line 4092
    :pswitch_40
    const-string v0, "SCREEN_STATE"

    goto/16 :goto_0

    .line 4093
    :pswitch_41
    const-string v0, "SET_SUPP_SVC_NOTIFICATION"

    goto/16 :goto_0

    .line 4094
    :pswitch_42
    const-string v0, "WRITE_SMS_TO_SIM"

    goto/16 :goto_0

    .line 4095
    :pswitch_43
    const-string v0, "DELETE_SMS_ON_SIM"

    goto/16 :goto_0

    .line 4096
    :pswitch_44
    const-string v0, "SET_BAND_MODE"

    goto/16 :goto_0

    .line 4097
    :pswitch_45
    const-string v0, "QUERY_AVAILABLE_BAND_MODE"

    goto/16 :goto_0

    .line 4098
    :pswitch_46
    const-string v0, "REQUEST_STK_GET_PROFILE"

    goto/16 :goto_0

    .line 4099
    :pswitch_47
    const-string v0, "REQUEST_STK_SET_PROFILE"

    goto/16 :goto_0

    .line 4100
    :pswitch_48
    const-string v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    goto/16 :goto_0

    .line 4101
    :pswitch_49
    const-string v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    goto/16 :goto_0

    .line 4102
    :pswitch_4a
    const-string v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    goto/16 :goto_0

    .line 4103
    :pswitch_4b
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    goto/16 :goto_0

    .line 4104
    :pswitch_4c
    const-string v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 4105
    :pswitch_4d
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 4106
    :pswitch_4e
    const-string v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    goto/16 :goto_0

    .line 4107
    :pswitch_4f
    const-string v0, "REQUEST_SET_LOCATION_UPDATES"

    goto/16 :goto_0

    .line 4108
    :pswitch_50
    const-string v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 4109
    :pswitch_51
    const-string v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 4110
    :pswitch_52
    const-string v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 4111
    :pswitch_53
    const-string v0, "RIL_REQUEST_SET_TTY_MODE"

    goto/16 :goto_0

    .line 4112
    :pswitch_54
    const-string v0, "RIL_REQUEST_QUERY_TTY_MODE"

    goto/16 :goto_0

    .line 4113
    :pswitch_55
    const-string v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 4114
    :pswitch_56
    const-string v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 4115
    :pswitch_57
    const-string v0, "RIL_REQUEST_CDMA_FLASH"

    goto/16 :goto_0

    .line 4116
    :pswitch_58
    const-string v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    goto/16 :goto_0

    .line 4117
    :pswitch_59
    const-string v0, "RIL_REQUEST_CDMA_SEND_SMS"

    goto/16 :goto_0

    .line 4118
    :pswitch_5a
    const-string v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    goto/16 :goto_0

    .line 4119
    :pswitch_5b
    const-string v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4120
    :pswitch_5c
    const-string v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4121
    :pswitch_5d
    const-string v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4122
    :pswitch_5e
    const-string v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4123
    :pswitch_5f
    const-string v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 4124
    :pswitch_60
    const-string v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    goto/16 :goto_0

    .line 4125
    :pswitch_61
    const-string v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 4126
    :pswitch_62
    const-string v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    goto/16 :goto_0

    .line 4127
    :pswitch_63
    const-string v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    goto/16 :goto_0

    .line 4128
    :pswitch_64
    const-string v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    goto/16 :goto_0

    .line 4129
    :pswitch_65
    const-string v0, "RIL_REQUEST_DEVICE_IDENTITY"

    goto/16 :goto_0

    .line 4130
    :pswitch_66
    const-string v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 4131
    :pswitch_67
    const-string v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 4132
    :pswitch_68
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    goto/16 :goto_0

    .line 4133
    :pswitch_69
    const-string v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    goto/16 :goto_0

    .line 4134
    :pswitch_6a
    const-string v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    goto/16 :goto_0

    .line 4135
    :pswitch_6b
    const-string v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 4136
    :pswitch_6c
    const-string v0, "RIL_REQUEST_GET_DATA_CALL_PROFILE"

    goto/16 :goto_0

    .line 4137
    :pswitch_6d
    const-string v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 4138
    :pswitch_6e
    const-string v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    goto/16 :goto_0

    .line 4139
    :pswitch_6f
    const-string v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    goto/16 :goto_0

    .line 4140
    :pswitch_70
    const-string v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    goto/16 :goto_0

    .line 4141
    :pswitch_71
    const-string v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    goto/16 :goto_0

    .line 4142
    :pswitch_72
    const-string v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    goto/16 :goto_0

    .line 4143
    :pswitch_73
    const-string v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    goto/16 :goto_0

    .line 4144
    :pswitch_74
    const-string v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    goto/16 :goto_0

    .line 4145
    :pswitch_75
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS"

    goto/16 :goto_0

    .line 4146
    :pswitch_76
    const-string v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    goto/16 :goto_0

    .line 4147
    :pswitch_77
    const-string v0, "RIL_REQUEST_SET_DATA_SUBSCRIPTION"

    goto/16 :goto_0

    .line 4024
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_60
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5f
        :pswitch_5d
        :pswitch_5e
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_68
        :pswitch_66
        :pswitch_67
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_6c
        :pswitch_76
        :pswitch_77
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method private responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3409
    .local v2, "numInfos":I
    new-array v1, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 3411
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3412
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v0

    .line 3414
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 3415
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 3416
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 3417
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 3418
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 3419
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 3411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3422
    :cond_0
    return-object v1
.end method

.method private responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3558
    .local v3, "num":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3565
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 3566
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 3568
    .local v0, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 3569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 3570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 3571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 3572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 3573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 3574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3575
    .local v7, "voiceSettings":I
    if-nez v7, :cond_2

    move v8, v10

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 3576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 3577
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3579
    .local v2, "np":I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 3580
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 3581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 3582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3583
    .local v6, "uusInfoPresent":I
    if-ne v6, v9, :cond_4

    .line 3584
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 3585
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 3586
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 3587
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 3588
    .local v5, "userData":[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 3589
    const-string v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v12, 0x2

    iget-object v13, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLogv(Ljava/lang/String;)V

    .line 3592
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (string)="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLogv(Ljava/lang/String;)V

    .line 3594
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (hex): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLogv(Ljava/lang/String;)V

    .line 3601
    .end local v5    # "userData":[B
    :goto_5
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3603
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3605
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_5

    .line 3606
    iget-object v8, p0, Lcom/android/internal/telephony/qc/QCRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3607
    const-string v8, "InCall VoicePrivacy is enabled"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 3565
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_0
    move v8, v10

    .line 3571
    goto/16 :goto_1

    :cond_1
    move v8, v10

    .line 3572
    goto/16 :goto_2

    .restart local v7    # "voiceSettings":I
    :cond_2
    move v8, v9

    .line 3575
    goto/16 :goto_3

    :cond_3
    move v8, v10

    .line 3576
    goto/16 :goto_4

    .line 3597
    .restart local v2    # "np":I
    .restart local v6    # "uusInfoPresent":I
    :cond_4
    const-string v8, "Incoming UUS : NOT present!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 3609
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/qc/QCRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3610
    const-string v8, "InCall VoicePrivacy is disabled"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_6

    .line 3614
    .end local v0    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3616
    if-nez v3, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/qc/QCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3617
    iget-object v8, p0, Lcom/android/internal/telephony/qc/QCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v8, :cond_7

    .line 3618
    const-string v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 3620
    iget-object v8, p0, Lcom/android/internal/telephony/qc/QCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 3624
    :cond_7
    return-object v4
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3918
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 3920
    .local v0, "response":[C
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 3921
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 3922
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 3923
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 3925
    return-object v0
.end method

.method private responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 3835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3837
    .local v2, "numServiceCategories":I
    if-nez v2, :cond_0

    .line 3842
    const/16 v1, 0x5e

    .line 3843
    .local v1, "numInts":I
    new-array v3, v1, [I

    .line 3846
    .local v3, "response":[I
    const/16 v4, 0x1f

    aput v4, v3, v6

    .line 3850
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3851
    add-int/lit8 v4, v0, 0x0

    div-int/lit8 v5, v0, 0x3

    aput v5, v3, v4

    .line 3852
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 3853
    add-int/lit8 v4, v0, 0x2

    aput v6, v3, v4

    .line 3850
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 3857
    .end local v0    # "i":I
    .end local v1    # "numInts":I
    .end local v3    # "response":[I
    :cond_0
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 3858
    .restart local v1    # "numInts":I
    new-array v3, v1, [I

    .line 3860
    .restart local v3    # "response":[I
    aput v2, v3, v6

    .line 3861
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 3862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 3861
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3866
    :cond_1
    return-object v3
.end method

.method private responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3899
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 3901
    .local v0, "notification":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 3902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 3904
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 3905
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 3906
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 3907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 3908
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 3909
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 3910
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    .line 3911
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    .line 3913
    return-object v0
.end method

.method private responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3887
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3889
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3890
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Landroid/os/Parcel;)V

    .line 3891
    .local v0, "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3889
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3894
    .end local v0    # "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_0
    return-object v3
.end method

.method private responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3441
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3443
    .local v0, "sms":Landroid/telephony/SmsMessage;
    return-object v0
.end method

.method private responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4007
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4009
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4010
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 4011
    .local v0, "InfoRec":Landroid/telephony/CellInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4009
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4014
    .end local v0    # "InfoRec":Landroid/telephony/CellInfo;
    :cond_0
    return-object v3
.end method

.method private responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3762
    .local v3, "num":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3765
    .local v6, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const-string v8, "gsm.network.type"

    const-string v9, "unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3768
    .local v4, "radioString":Ljava/lang/String;
    const-string v8, "GPRS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3769
    const/4 v5, 0x1

    .line 3785
    .local v5, "radioType":I
    :goto_0
    if-eqz v5, :cond_6

    .line 3786
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 3787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3788
    .local v7, "rssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3789
    .local v2, "location":Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0, v7, v2, v5}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 3790
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3786
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3770
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "i":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v5    # "radioType":I
    .end local v7    # "rssi":I
    :cond_0
    const-string v8, "EDGE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3771
    const/4 v5, 0x2

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 3772
    .end local v5    # "radioType":I
    :cond_1
    const-string v8, "UMTS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3773
    const/4 v5, 0x3

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 3774
    .end local v5    # "radioType":I
    :cond_2
    const-string v8, "HSDPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3775
    const/16 v5, 0x8

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 3776
    .end local v5    # "radioType":I
    :cond_3
    const-string v8, "HSUPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3777
    const/16 v5, 0x9

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 3778
    .end local v5    # "radioType":I
    :cond_4
    const-string v8, "HSPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3779
    const/16 v5, 0xa

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 3781
    .end local v5    # "radioType":I
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 3793
    :cond_6
    return-object v6
.end method

.method private responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3671
    .local v3, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3672
    .local v1, "num":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseDataCallList ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 3674
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3675
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3676
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/qc/QCRIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3679
    :cond_0
    return-object v2
.end method

.method private responseGetDataCallProfile(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3929
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3930
    .local v1, "nProfiles":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# data call profiles:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 3932
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3934
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/4 v4, 0x0

    .line 3935
    .local v4, "profileId":I
    const/4 v2, 0x0

    .line 3936
    .local v2, "priority":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3937
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3938
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3939
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;-><init>(II)V

    .line 3941
    .local v3, "profile":Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseGetDataCallProfile()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getProfileId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getPriority()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 3944
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3936
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3947
    .end local v3    # "profile":Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
    :cond_0
    return-object v5
.end method

.method private responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3797
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 3799
    .local v0, "response":[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 3803
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mPreferredNetworkType:I

    .line 3805
    :cond_0
    return-object v0
.end method

.method private responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    .line 3813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3814
    .local v7, "num":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 3816
    .local v8, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 3817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3818
    .local v1, "fromId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3819
    .local v2, "toId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3820
    .local v3, "fromScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3821
    .local v4, "toScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v9, :cond_0

    move v5, v9

    .line 3823
    .local v5, "selected":Z
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 3825
    .local v0, "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3816
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3821
    .end local v0    # "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5    # "selected":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 3827
    .end local v1    # "fromId":I
    .end local v2    # "toId":I
    .end local v3    # "fromScheme":I
    .end local v4    # "toScheme":I
    :cond_1
    return-object v8
.end method

.method private responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3496
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3498
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3505
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    return-object v3
.end method

.method private responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3512
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 3513
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 3514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 3515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 3516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 3517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 3518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3521
    .local v3, "numApplications":I
    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 3522
    const/16 v3, 0x8

    .line 3524
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 3525
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3526
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 3527
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 3528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 3529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 3530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 3531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 3532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 3533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 3534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 3535
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v4, v2

    .line 3525
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3537
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3387
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 3389
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 3389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3393
    :cond_0
    return-object v2
.end method

.method private responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3731
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 3734
    .local v2, "strings":[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 3735
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings, expected multible of 4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3740
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3742
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3743
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    add-int/lit8 v4, v0, 0x0

    aget-object v4, v2, v4

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    add-int/lit8 v6, v0, 0x2

    aget-object v6, v2, v6

    add-int/lit8 v7, v0, 0x3

    aget-object v7, v2, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3742
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 3751
    :cond_1
    return-object v1
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3470
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3472
    .local v0, "response":[B
    return-object v0
.end method

.method private responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3481
    .local v2, "messageRef":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3482
    .local v0, "ackPDU":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3484
    .local v1, "errorCode":I
    new-instance v3, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 3486
    .local v3, "response":Lcom/android/internal/telephony/SmsResponse;
    return-object v3
.end method

.method private responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x5

    .line 3684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3685
    .local v5, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3690
    .local v4, "num":I
    if-ge v5, v8, :cond_4

    .line 3691
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 3692
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 3693
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3694
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 3695
    iget-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3696
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3699
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3700
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3701
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3703
    :cond_1
    const/4 v6, 0x4

    if-lt v4, v6, :cond_2

    .line 3704
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3705
    .local v2, "dnses":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseSetupDataCall got dnses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 3706
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3707
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 3710
    .end local v2    # "dnses":Ljava/lang/String;
    :cond_2
    if-lt v4, v8, :cond_3

    .line 3711
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3712
    .local v3, "gateways":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseSetupDataCall got gateways="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 3713
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3714
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 3726
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v3    # "gateways":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1

    .line 3718
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_4
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 3719
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RIL_REQUEST_SETUP_DATA_CALL response expecting 1 RIL_Data_Call_response_v5 got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3723
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/qc/QCRIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v1

    .restart local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    goto :goto_0
.end method

.method private responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3873
    invoke-static {p1}, Landroid/telephony/SignalStrength;->makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 3874
    .local v0, "signalStrength":Landroid/telephony/SignalStrength;
    return-object v0
.end method

.method private responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3542
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 3544
    .local v0, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 3545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 3546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 3547
    return-object v0
.end method

.method private responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4235
    new-instance v2, Lcom/android/internal/telephony/gsm/SsData;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    .line 4237
    .local v2, "ssData":Lcom/android/internal/telephony/gsm/SsData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 4238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 4239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 4240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 4241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 4242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4244
    .local v1, "num":I
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4246
    new-array v3, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 4248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4249
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v4, v3, v0

    .line 4251
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 4252
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 4253
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 4254
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 4255
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 4256
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 4258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SS Data] CF Info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4261
    .end local v0    # "i":I
    :cond_0
    new-array v3, v1, [I

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    .line 4262
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 4263
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 4264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SS Data] SS Info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4268
    :cond_1
    return-object v2
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3452
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3460
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 3462
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3427
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 3429
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 3430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 3431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 3432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 3433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 3435
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 4160
    packed-switch p0, :pswitch_data_0

    .line 4204
    const-string v0, "<unknown response>"

    :goto_0
    return-object v0

    .line 4161
    :pswitch_0
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    goto :goto_0

    .line 4162
    :pswitch_1
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    goto :goto_0

    .line 4163
    :pswitch_2
    const-string v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 4164
    :pswitch_3
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    goto :goto_0

    .line 4165
    :pswitch_4
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    goto :goto_0

    .line 4166
    :pswitch_5
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    goto :goto_0

    .line 4167
    :pswitch_6
    const-string v0, "UNSOL_ON_USSD"

    goto :goto_0

    .line 4168
    :pswitch_7
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    goto :goto_0

    .line 4169
    :pswitch_8
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    goto :goto_0

    .line 4170
    :pswitch_9
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    goto :goto_0

    .line 4171
    :pswitch_a
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    goto :goto_0

    .line 4172
    :pswitch_b
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    goto :goto_0

    .line 4173
    :pswitch_c
    const-string v0, "UNSOL_STK_SESSION_END"

    goto :goto_0

    .line 4174
    :pswitch_d
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    goto :goto_0

    .line 4175
    :pswitch_e
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    goto :goto_0

    .line 4176
    :pswitch_f
    const-string v0, "UNSOL_STK_CALL_SETUP"

    goto :goto_0

    .line 4177
    :pswitch_10
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 4178
    :pswitch_11
    const-string v0, "UNSOL_SIM_REFRESH"

    goto :goto_0

    .line 4179
    :pswitch_12
    const-string v0, "UNSOL_CALL_RING"

    goto :goto_0

    .line 4180
    :pswitch_13
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    goto :goto_0

    .line 4181
    :pswitch_14
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    goto :goto_0

    .line 4182
    :pswitch_15
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    goto :goto_0

    .line 4183
    :pswitch_16
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 4184
    :pswitch_17
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    goto :goto_0

    .line 4185
    :pswitch_18
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 4186
    :pswitch_19
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    goto :goto_0

    .line 4187
    :pswitch_1a
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    goto :goto_0

    .line 4188
    :pswitch_1b
    const-string v0, "UNSOL_CDMA_INFO_REC"

    goto :goto_0

    .line 4189
    :pswitch_1c
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 4190
    :pswitch_1d
    const-string v0, "UNSOL_RINGBACK_TONE"

    goto :goto_0

    .line 4191
    :pswitch_1e
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    goto :goto_0

    .line 4192
    :pswitch_1f
    const-string v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    goto :goto_0

    .line 4193
    :pswitch_20
    const-string v0, "UNSOL_CDMA_PRL_CHANGED"

    goto :goto_0

    .line 4194
    :pswitch_21
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 4195
    :pswitch_22
    const-string v0, "UNSOL_RIL_CONNECTED"

    goto :goto_0

    .line 4196
    :pswitch_23
    const-string v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    goto :goto_0

    .line 4197
    :pswitch_24
    const-string v0, "UNSOL_CELL_INFO_LIST"

    goto :goto_0

    .line 4199
    :pswitch_25
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 4200
    :pswitch_26
    const-string v0, "UNSOL_ON_SS"

    goto :goto_0

    .line 4201
    :pswitch_27
    const-string v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    goto :goto_0

    .line 4203
    :pswitch_28
    const-string v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    goto :goto_0

    .line 4160
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3399
    const/4 v0, 0x0

    return-object v0
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 14
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .prologue
    .line 2745
    if-nez p1, :cond_0

    const-string v9, ""

    .line 2804
    .end local p1    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 2746
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 2760
    instance-of v12, p1, [I

    if-eqz v12, :cond_2

    .line 2761
    check-cast p1, [I

    .end local p1    # "ret":Ljava/lang/Object;
    move-object v7, p1

    check-cast v7, [I

    .line 2762
    .local v7, "intArray":[I
    array-length v8, v7

    .line 2763
    .local v8, "length":I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "{"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2764
    .local v10, "sb":Ljava/lang/StringBuilder;
    if-lez v8, :cond_1

    .line 2765
    const/4 v4, 0x0

    .line 2766
    .local v4, "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v12, v7, v4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2767
    :goto_1
    if-ge v5, v8, :cond_1

    .line 2768
    const-string v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget v13, v7, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 2753
    .end local v5    # "i":I
    .end local v7    # "intArray":[I
    .end local v8    # "length":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "ret":Ljava/lang/Object;
    :sswitch_0
    const-string v9, ""

    goto :goto_0

    .line 2771
    .end local p1    # "ret":Ljava/lang/Object;
    .restart local v7    # "intArray":[I
    .restart local v8    # "length":I
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v12, "}"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2773
    .local v9, "s":Ljava/lang/String;
    goto :goto_0

    .end local v7    # "intArray":[I
    .end local v8    # "length":I
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_2
    instance-of v12, p1, [Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 2774
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "ret":Ljava/lang/Object;
    move-object v11, p1

    check-cast v11, [Ljava/lang/String;

    .line 2775
    .local v11, "strings":[Ljava/lang/String;
    array-length v8, v11

    .line 2776
    .restart local v8    # "length":I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "{"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2777
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    if-lez v8, :cond_3

    .line 2778
    const/4 v4, 0x0

    .line 2779
    .restart local v4    # "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget-object v12, v11, v4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    :goto_2
    if-ge v5, v8, :cond_3

    .line 2781
    const-string v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v13, v11, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 2784
    .end local v5    # "i":I
    :cond_3
    const-string v12, "}"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2786
    .restart local v9    # "s":Ljava/lang/String;
    goto :goto_0

    .end local v8    # "length":I
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "strings":[Ljava/lang/String;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_4
    const/16 v12, 0x9

    if-ne p0, v12, :cond_6

    move-object v0, p1

    .line 2787
    check-cast v0, Ljava/util/ArrayList;

    .line 2788
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2789
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DriverCall;

    .line 2790
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    const-string v12, "["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2792
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2793
    .restart local v9    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .end local v0    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v12, 0x4b

    if-ne p0, v12, :cond_8

    move-object v2, p1

    .line 2795
    check-cast v2, Ljava/util/ArrayList;

    .line 2796
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2797
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    .line 2798
    .local v1, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2800
    .end local v1    # "cell":Landroid/telephony/NeighboringCellInfo;
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2801
    .restart local v9    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 2802
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 2746
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4209
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    return-void
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4213
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    return-void
.end method

.method private send(Lcom/android/internal/telephony/qc/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/qc/RILRequest;

    .prologue
    const/4 v2, 0x1

    .line 2447
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 2448
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/qc/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2449
    invoke-virtual {p1}, Lcom/android/internal/telephony/qc/RILRequest;->release()V

    .line 2458
    :goto_0
    return-void

    .line 2453
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/qc/QCRIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2455
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCRIL;->acquireWakeLock()V

    .line 2457
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendOemRilRequestRaw(II[BLandroid/os/Message;)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "numPayload"    # I
    .param p3, "payload"    # [B
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2010
    iget v6, p0, Lcom/android/internal/telephony/qc/QCRIL;->mHeaderSize:I

    mul-int/lit8 v7, p2, 0x1

    add-int/2addr v6, v7

    new-array v5, v6, [B

    .line 2012
    .local v5, "request":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2013
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2016
    const-string v6, "QOEMHOOK"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2018
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2019
    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    .line 2021
    mul-int/lit8 v6, p2, 0x1

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2022
    move-object v0, p3

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 2023
    .local v1, "b":B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2022
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2027
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-virtual {p0, v5, p4}, Lcom/android/internal/telephony/qc/QCRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2028
    return-void
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2356
    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2357
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2358
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2363
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2364
    return-void

    .line 2358
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 2393
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 2394
    return-void
.end method

.method private translateStatus(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 1512
    and-int/lit8 v1, p1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 1524
    :goto_0
    :pswitch_0
    return v0

    .line 1516
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1518
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1520
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 4217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4218
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 4221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4222
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 4225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/qc/QCRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4226
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 4229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/qc/QCRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/qc/QCRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->riljLogv(Ljava/lang/String;)V

    .line 4230
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1109
    const/16 v1, 0x28

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1112
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1114
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1115
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1635
    const/16 v1, 0x6a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1638
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1640
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1645
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1646
    return-void

    .line 1639
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1619
    const/16 v1, 0x58

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1622
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1629
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1630
    return-void

    .line 1622
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1603
    const/16 v1, 0x25

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1606
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1613
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1614
    return-void

    .line 1607
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1941
    const/16 v1, 0x1e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1944
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1947
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1948
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 887
    const/16 v1, 0x2c

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 889
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 891
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 896
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 897
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/qc/QCRIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 845
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/qc/QCRIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 866
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 872
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 874
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 876
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 879
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 881
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 882
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 851
    const/4 v1, 0x6

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 853
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 855
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 857
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 858
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 861
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1064
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1067
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1070
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1556
    const/16 v1, 0x29

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1559
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1561
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1566
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1567
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1428
    const/16 v1, 0x61

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1431
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1439
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1413
    const/16 v1, 0x40

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1416
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1424
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 943
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/qc/QCRIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 944
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 949
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 951
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    if-nez p3, :cond_0

    .line 955
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 965
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 966
    return-void

    .line 957
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSenderThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSender:Lcom/android/internal/telephony/qc/QCRIL$RILSender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiverThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mReceiver:Lcom/android/internal/telephony/qc/QCRIL$RILReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4548
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 4549
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4550
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mWakeLockCount="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWakeLockCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4551
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4552
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4553
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mRequestList count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4554
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4555
    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/qc/RILRequest;

    .line 4556
    .local v2, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/qc/RILRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4551
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "rr":Lcom/android/internal/telephony/qc/RILRequest;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 4558
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mLastNITZTimeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4561
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4464
    const/16 v1, 0x63

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4466
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4468
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4469
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1131
    const/16 v1, 0x48

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1134
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1136
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1137
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1785
    const/16 v1, 0x30

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1789
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1791
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1792
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1850
    const/16 v1, 0x33

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1853
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1855
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1856
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4286
    const/16 v1, 0x5f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4288
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4290
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4291
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1687
    const/16 v1, 0x1f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1690
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1692
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1693
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4407
    const/16 v1, 0x5c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4409
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4410
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4351
    const/16 v1, 0x68

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4354
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4356
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4357
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4487
    const/16 v1, 0x6d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4489
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4491
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4492
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 917
    const/16 v1, 0x9

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 919
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 921
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 922
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 933
    const/16 v1, 0x39

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 935
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 938
    return-void
.end method

.method public getDataCallProfile(ILandroid/os/Message;)V
    .locals 3
    .param p1, "appType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 724
    const/16 v1, 0x72

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 728
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 736
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1225
    const/16 v1, 0x15

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1228
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1230
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1231
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4276
    const/16 v1, 0x62

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4278
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4280
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4281
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2302
    const/16 v1, 0x59

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2304
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2306
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2307
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 992
    const/16 v1, 0x26

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 994
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 996
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 997
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1002
    const/16 v1, 0x27

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1004
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1007
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 971
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 972
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 977
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 979
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 986
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 987
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 715
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 717
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 720
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 689
    const/16 v1, 0x70

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 692
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 694
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 695
    return-void
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 4565
    iget v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    return v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1142
    const/16 v1, 0x12

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1145
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1147
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1148
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1166
    const/16 v1, 0x38

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1169
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1172
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->getLastDataCallFailCause(Landroid/os/Message;)V

    .line 1158
    return-void
.end method

.method public getModemCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1963
    const-string v0, "RILJ"

    const-string v1, "GetModemCapability"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const v0, 0x80023

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/telephony/qc/QCRIL;->sendOemRilRequestRaw(II[BLandroid/os/Message;)V

    .line 1965
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1192
    const/16 v1, 0x36

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1195
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1197
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1198
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2220
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2223
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2225
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2226
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1773
    const/16 v1, 0x2d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1777
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1779
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1780
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1236
    const/16 v1, 0x16

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1239
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1241
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1242
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 927
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->getDataCallList(Landroid/os/Message;)V

    .line 928
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2207
    const/16 v1, 0x4a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2210
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2212
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2213
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1086
    const/16 v1, 0x53

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1088
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1089
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1203
    const/16 v1, 0x13

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1206
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1208
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1209
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2248
    const/16 v1, 0x64

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2250
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2252
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2253
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 680
    const/16 v1, 0x6c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 682
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 685
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1214
    const/16 v1, 0x14

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1217
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1219
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1220
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2144
    const/16 v4, 0x47

    invoke-static {v4, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v1

    .line 2148
    .local v1, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2150
    new-array v0, v2, [I

    .line 2151
    .local v0, "param":[I
    if-eqz p1, :cond_0

    :goto_0
    aput v2, v0, v3

    .line 2152
    iget-object v2, v1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2153
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2154
    return-void

    :cond_0
    move v2, v3

    .line 2151
    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupConnection: gsmIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1015
    const/16 v1, 0xc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1017
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1020
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1024
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1040
    const/16 v1, 0xe

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1044
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1046
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1047
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1029
    const/16 v1, 0xd

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1032
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1034
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1035
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4617
    const/16 v1, 0x77

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4620
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4621
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccCloseChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4626
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4627
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 4574
    if-nez p3, :cond_0

    .line 4575
    const/16 v1, 0x75

    invoke-static {v1, p8}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4580
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4581
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4582
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4583
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4584
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4585
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4586
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4587
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4588
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccExchangeAPDU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Channel 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4599
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4600
    return-void

    .line 4577
    .end local v0    # "rr":Lcom/android/internal/telephony/qc/RILRequest;
    :cond_0
    const/16 v1, 0x78

    invoke-static {v1, p8}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .restart local v0    # "rr":Lcom/android/internal/telephony/qc/RILRequest;
    goto/16 :goto_0
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 1652
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/qc/QCRIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1653
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 1660
    const/16 v1, 0x1c

    invoke-static {v1, p10}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1663
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1666
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1670
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1671
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1681
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1682
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4604
    const/16 v1, 0x76

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4607
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccOpenChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4612
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4613
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2032
    const/16 v1, 0x3b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2035
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2038
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2040
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2042
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2046
    const/16 v1, 0x3c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2049
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2051
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2053
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2054
    return-void
.end method

.method protected notifyCdmaFwdBurstDtmf([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3357
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3358
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaFwdBurstDtmfRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3359
    return-void
.end method

.method protected notifyCdmaFwdContDtmfStart([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3363
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3364
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaFwdContDtmfStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3365
    return-void
.end method

.method protected notifyCdmaFwdContDtmfStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3369
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3370
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mCdmaFwdContDtmfStopRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3371
    return-void
.end method

.method protected notifyWmsReady([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3375
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3376
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mWmsReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3377
    const-string v1, "RILJ"

    const-string v2, "WMS_READY notified to registrants"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    .line 2372
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2373
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->sendScreenState(Z)V

    .line 2374
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2085
    const/16 v1, 0x42

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2089
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2091
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2092
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1838
    const/16 v1, 0x37

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1841
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1843
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1844
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1819
    const/16 v1, 0x21

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1822
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1825
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1827
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1832
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1833
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1715
    const/16 v1, 0x23

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1718
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1724
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1725
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4304
    const/16 v1, 0x4f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4307
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4310
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1862
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/qc/QCRIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1863
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1869
    const/16 v1, 0x2a

    invoke-static {v1, p5}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1871
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1876
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1879
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1881
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1882
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1884
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1885
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4364
    const/16 v1, 0x51

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4367
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4369
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4370
    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4632
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4633
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4634
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1120
    const/16 v1, 0x11

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1123
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1126
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2275
    const/16 v2, 0x66

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2276
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2277
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2282
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2283
    return-void

    .line 2277
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2290
    const/16 v1, 0x67

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2292
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2294
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2295
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4473
    const/16 v1, 0x69

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4475
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4479
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4480
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1953
    const/16 v1, 0x3a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1956
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1958
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1959
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1284
    const/16 v1, 0x55

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1286
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1288
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1289
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1294
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1295
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4395
    const/16 v1, 0x54

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4397
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4402
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4403
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1370
    const/16 v1, 0x57

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1373
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/qc/RILRequest;[B)V

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1377
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1378
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1247
    const/16 v1, 0x18

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1250
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1252
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1255
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2113
    const/16 v1, 0x45

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2116
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2118
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2119
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2120
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2127
    const/16 v1, 0x6b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2130
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2133
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2134
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2135
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1398
    const/16 v1, 0x71

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1400
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1402
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/qc/RILRequest;[B)V

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1408
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1409
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 1383
    const/16 v1, 0x71

    invoke-static {v1, p5}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1385
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v2, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1387
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/qc/QCRIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/qc/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1394
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1306
    const/16 v1, 0x19

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1309
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/qc/QCRIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/qc/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1314
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1318
    const/16 v1, 0x1a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1321
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/qc/QCRIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/qc/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1326
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2099
    const/16 v1, 0x46

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2102
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2104
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2105
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2106
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1923
    const/16 v2, 0x1d

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v1

    .line 1927
    .local v1, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    const-string v0, "*******"

    .line 1929
    .local v0, "logUssdString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1933
    iget-object v2, v1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1935
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1936
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1094
    const/16 v1, 0x34

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1097
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1100
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1104
    return-void
.end method

.method public setAsMaster(ZZ)V
    .locals 6
    .param p1, "isMaster"    # Z
    .param p2, "restoreDefaultNetworkMode"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4661
    if-eqz p1, :cond_2

    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4664
    .local v0, "networkMode":I
    :goto_0
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/TelephonyCapabilities;->isX5All()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4665
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getProxyPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->isCdmaApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4666
    const/16 v0, 0x8

    .line 4672
    :cond_0
    :goto_1
    if-nez p2, :cond_5

    .line 4673
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4683
    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/TelephonyCapabilities;->isX5All()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4684
    invoke-static {}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->getInstance()Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/qc/QCRIL;->getInstanceId()I

    move-result v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 4689
    :goto_4
    return-void

    .line 4661
    .end local v0    # "networkMode":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 4667
    .restart local v0    # "networkMode":I
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getProxyPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->isGsmApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4668
    const/16 v0, 0x14

    goto :goto_1

    .line 4673
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 4677
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/TelephonyCapabilities;->isX5All()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4678
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 4687
    :cond_7
    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/qc/QCRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_4
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2064
    const/16 v1, 0x41

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2067
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2073
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2074
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1698
    const/16 v1, 0x20

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1702
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1709
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1710
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1798
    const/16 v1, 0x22

    invoke-static {v1, p6}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1801
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1805
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1806
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1812
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1813
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1730
    const/16 v1, 0x24

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1733
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1740
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1741
    return-void

    .line 1734
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4449
    const/16 v2, 0x5e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4451
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4452
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4456
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4457
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 11
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4414
    const/16 v8, 0x5d

    invoke-static {v8, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v7

    .line 4417
    .local v7, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4419
    .local v5, "processedConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 4420
    .local v1, "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getToServiceCategory()I

    move-result v8

    if-gt v2, v8, :cond_0

    .line 4421
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v10

    invoke-direct {v8, v2, v2, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;-><init>(IIIZ)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4420
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4419
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4428
    .end local v1    # "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .line 4429
    .local v6, "rilConfigs":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    iget-object v8, v7, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    array-length v9, v6

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4430
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 4431
    iget-object v8, v7, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4432
    iget-object v8, v7, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4433
    iget-object v9, v7, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4430
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4433
    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 4437
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " configs : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4439
    const/4 v2, 0x0

    :goto_4
    array-length v8, v6

    if-ge v2, v8, :cond_4

    .line 4440
    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4439
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4444
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4445
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4317
    const/16 v1, 0x4e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4320
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4321
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4326
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4327
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4334
    const/16 v1, 0x4d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4337
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4338
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4344
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 3
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellInfoListRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4500
    const/16 v1, 0x6e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4502
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4503
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4507
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4508
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 4

    .prologue
    .line 2162
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    if-nez v1, :cond_0

    .line 2163
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSetPreferredNetworkType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPreferredNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSetPreferredNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2178
    iget v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSetPreferredNetworkType:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/qc/QCRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2179
    return-void

    .line 2168
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSetPreferredNetworkType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2173
    :catch_0
    move-exception v0

    .line 2174
    .local v0, "snfe":Ljava/lang/Exception;
    const-string v1, "Could not find PREFERRED_NETWORK_MODE!!! in database"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2175
    iget v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mPreferredNetworkType:I

    iput v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSetPreferredNetworkType:I

    goto :goto_0
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 755
    const/16 v1, 0x74

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 756
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 758
    return-void
.end method

.method public setDefaultVoiceSub(ILandroid/os/Message;)V
    .locals 5
    .param p1, "subIndex"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1994
    new-array v0, v4, [B

    const/4 v1, 0x0

    and-int/lit8 v2, p1, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1995
    .local v0, "payload":[B
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultVoiceSub: subIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    const v1, 0x8000c

    invoke-direct {p0, v1, v4, v0, p2}, Lcom/android/internal/telephony/qc/QCRIL;->sendOemRilRequestRaw(II[BLandroid/os/Message;)V

    .line 1998
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1891
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/qc/QCRIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1892
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1899
    const/16 v2, 0x2b

    invoke-static {v2, p6}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v1

    .line 1902
    .local v1, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1907
    iget-object v2, v1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    iget-object v2, v1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1910
    if-eqz p2, :cond_0

    const-string v0, "1"

    .line 1911
    .local v0, "lockString":Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1912
    iget-object v2, v1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1913
    iget-object v2, v1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1914
    iget-object v2, v1, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1916
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1918
    return-void

    .line 1910
    .end local v0    # "lockString":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2343
    const/16 v2, 0x5b

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2345
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2346
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2350
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2351
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2314
    const/16 v3, 0x5a

    invoke-static {v3, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v2

    .line 2316
    .local v2, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    array-length v1, p1

    .line 2317
    .local v1, "numOfConfig":I
    iget-object v3, v2, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2320
    iget-object v3, v2, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    iget-object v3, v2, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    iget-object v3, v2, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    iget-object v3, v2, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2324
    iget-object v4, v2, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2324
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2328
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2330
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2331
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2330
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2335
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2336
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 4512
    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4514
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    const-string v1, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4516
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4517
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4518
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4519
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4520
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", protocol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4526
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4527
    return-void
.end method

.method public setLocalCallHold(ILandroid/os/Message;)V
    .locals 5
    .param p1, "lchStatus"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 2002
    new-array v0, v4, [B

    const/4 v1, 0x0

    and-int/lit8 v2, p1, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2003
    .local v0, "payload":[B
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocalCallHold: lchStatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const v1, 0x8000d

    invoke-direct {p0, v1, v4, v0, p2}, Lcom/android/internal/telephony/qc/QCRIL;->sendOemRilRequestRaw(II[BLandroid/os/Message;)V

    .line 2006
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2233
    const/16 v2, 0x4c

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2234
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2240
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2241
    return-void

    .line 2235
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1177
    const/16 v2, 0x35

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1180
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1183
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1187
    return-void

    .line 1184
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1746
    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1750
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1752
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1753
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1758
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1762
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1765
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1767
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1768
    return-void
.end method

.method public setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4641
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    .line 4642
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 699
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/qc/QCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 706
    iput-object v3, p0, Lcom/android/internal/telephony/qc/QCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    .line 708
    :cond_0
    return-void
.end method

.method public setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4651
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSsRegistrant:Landroid/os/Registrant;

    .line 4652
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 4295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4296
    iput p1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mPhoneType:I

    .line 4297
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2187
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2190
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2191
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    iput p1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSetPreferredNetworkType:I

    .line 2194
    iput p1, p0, Lcom/android/internal/telephony/qc/QCRIL;->mPreferredNetworkType:I

    .line 2196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2199
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2200
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1075
    const/16 v2, 0x52

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1078
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1082
    return-void

    .line 1079
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPrioritySub(ILandroid/os/Message;)V
    .locals 5
    .param p1, "subIndex"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1986
    new-array v0, v4, [B

    const/4 v1, 0x0

    and-int/lit8 v2, p1, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1987
    .local v0, "payload":[B
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrioritySub: subIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    const v1, 0x80007

    invoke-direct {p0, v1, v4, v0, p2}, Lcom/android/internal/telephony/qc/QCRIL;->sendOemRilRequestRaw(II[BLandroid/os/Message;)V

    .line 1990
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1572
    const/16 v2, 0x17

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1574
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, " on"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1582
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1583
    return-void

    .line 1575
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1578
    :cond_1
    const-string v1, " off"

    goto :goto_1
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2260
    const/16 v1, 0x65

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 2262
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 2267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 2268
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1588
    const/16 v2, 0x3e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1591
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    iget-object v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1597
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1598
    return-void

    .line 1592
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4377
    const/16 v1, 0x50

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 4380
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4381
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4386
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 4387
    return-void
.end method

.method public setTuneAway(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "tuneAway"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1978
    new-array v0, v2, [B

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 1980
    .local v0, "payload":[B
    const-string v1, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTuneAway: TuneAway flag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const v1, 0x80005

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/internal/telephony/qc/QCRIL;->sendOemRilRequestRaw(II[BLandroid/os/Message;)V

    .line 1982
    return-void

    .end local v0    # "payload":[B
    :cond_0
    move v1, v3

    .line 1978
    goto :goto_0
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 740
    const/16 v1, 0x73

    invoke-static {v1, p5}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 742
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 746
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 752
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 1532
    const/16 v1, 0x1b

    invoke-static {v1, p8}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1535
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1538
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1540
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1541
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1542
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1543
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1550
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1551
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1260
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1263
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1265
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1268
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1273
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1276
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1278
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1279
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 902
    const/16 v1, 0x8

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 904
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 907
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 909
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 911
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 912
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/qc/QCRIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 763
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/qc/QCRIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 804
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 810
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 812
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 814
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 816
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 819
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    .line 769
    invoke-static {v3, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 771
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 773
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 778
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/qc/QCRIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 783
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/qc/QCRIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 824
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 830
    const/4 v1, 0x5

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 832
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 834
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 836
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 837
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 840
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    .line 789
    invoke-static {v3, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 791
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 793
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 795
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 799
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1052
    const/16 v1, 0xf

    invoke-static {v1, p1}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1056
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/qc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/qc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/qc/QCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 1058
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1059
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    .prologue
    .line 4534
    const-string v0, "testingEmergencyCall"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->riljLog(Ljava/lang/String;)V

    .line 4535
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4536
    return-void
.end method

.method public unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 4646
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 4647
    return-void
.end method

.method public unSetOnSs(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 4656
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 4657
    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 4637
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCRIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4638
    return-void
.end method

.method public updateStackBinding(IILandroid/os/Message;)V
    .locals 5
    .param p1, "stack"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    .line 1969
    new-array v0, v4, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 1970
    .local v0, "payload":[B
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateStackBinding: on Stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable/disable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const v1, 0x80024

    invoke-direct {p0, v1, v4, v0, p3}, Lcom/android/internal/telephony/qc/QCRIL;->sendOemRilRequestRaw(II[BLandroid/os/Message;)V

    .line 1974
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1461
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->translateStatus(I)I

    move-result p1

    .line 1463
    const/16 v8, 0x60

    invoke-static {v8, p3}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v6

    .line 1466
    .local v6, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 1469
    .local v5, "pduBytes":[B
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1472
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1474
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 1480
    .local v4, "numberOfDigits":B
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 1481
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1482
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1481
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1484
    :cond_0
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1486
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 1487
    .local v7, "subaddr_nbr_of_digits":B
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 1488
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_1

    .line 1489
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1488
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1491
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1492
    .local v2, "encodedBearerDataLength":I
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 1494
    iget-object v8, v6, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1496
    .end local v2    # "encodedBearerDataLength":I
    .end local v3    # "i":I
    .end local v4    # "numberOfDigits":B
    .end local v7    # "subaddr_nbr_of_digits":B
    :catch_0
    move-exception v1

    .line 1497
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1504
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1505
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1443
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCRIL;->translateStatus(I)I

    move-result p1

    .line 1445
    const/16 v1, 0x3f

    invoke-static {v1, p4}, Lcom/android/internal/telephony/qc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/qc/RILRequest;

    move-result-object v0

    .line 1448
    .local v0, "rr":Lcom/android/internal/telephony/qc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1450
    iget-object v1, v0, Lcom/android/internal/telephony/qc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1456
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCRIL;->send(Lcom/android/internal/telephony/qc/RILRequest;)V

    .line 1457
    return-void
.end method
