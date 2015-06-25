.class public final Lcom/android/internal/telephony/lc/LCRIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "LCRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lc/LCRIL$RILReceiver;,
        Lcom/android/internal/telephony/lc/LCRIL$RILSender;
    }
.end annotation


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field private static final RILJ_LOG_TAG_PRE:Ljava/lang/String; = "RILJ"

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0


# instance fields
.field private RILJ_LOG_TAG:Ljava/lang/String;

.field private SOCKET_NAME_RIL:Ljava/lang/String;

.field private mHasSendExistState:Z

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field mLinkId:I

.field private mNotReleasePsResListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPSResControlToggle:Z

.field private mPSStateChangeEventToggle:Z

.field private mPSStateChangeListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field mReceiver:Lcom/android/internal/telephony/lc/LCRIL$RILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/lc/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field private mSetPreferredNetworkType:I

.field mSocket:Landroid/net/LocalSocket;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 725
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 242
    const-string v4, "RILJ"

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    .line 243
    iput v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    .line 267
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    .line 272
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 274
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 275
    iput-boolean v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeEventToggle:Z

    .line 277
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mNotReleasePsResListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 278
    iput-boolean v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSResControlToggle:Z

    .line 294
    const-string v4, "rild"

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->SOCKET_NAME_RIL:Ljava/lang/String;

    .line 306
    iput-boolean v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mHasSendExistState:Z

    .line 310
    new-instance v4, Lcom/android/internal/telephony/lc/LCRIL$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/lc/LCRIL$1;-><init>(Lcom/android/internal/telephony/lc/LCRIL;)V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 726
    const-string v4, "RILJ"

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    .line 728
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

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/lc/LCRIL;->SOCKET_NAME_RIL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->SOCKET_NAME_RIL:Ljava/lang/String;

    .line 740
    :cond_0
    iput p3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mCdmaSubscription:I

    .line 741
    iput p2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPreferredNetworkType:I

    .line 742
    iput v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPhoneType:I

    .line 744
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 745
    .local v3, "pm":Landroid/os/PowerManager;
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 746
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 747
    const-string v4, "ro.ril.wake_lock_timeout"

    const v5, 0xea60

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockTimeout:I

    .line 749
    iput v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    .line 751
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "RILSender"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSenderThread:Landroid/os/HandlerThread;

    .line 752
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 754
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 755
    .local v2, "looper":Landroid/os/Looper;
    new-instance v4, Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/telephony/lc/LCRIL$RILSender;-><init>(Lcom/android/internal/telephony/lc/LCRIL;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    .line 757
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 759
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 760
    const-string v4, "Not starting RILReceiver: wifi-only"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 778
    :goto_0
    return-void

    .line 762
    :cond_1
    const-string v4, "Starting RILReceiver"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 763
    new-instance v4, Lcom/android/internal/telephony/lc/LCRIL$RILReceiver;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/lc/LCRIL$RILReceiver;-><init>(Lcom/android/internal/telephony/lc/LCRIL;)V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mReceiver:Lcom/android/internal/telephony/lc/LCRIL$RILReceiver;

    .line 764
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/internal/telephony/lc/LCRIL;->mReceiver:Lcom/android/internal/telephony/lc/LCRIL$RILReceiver;

    const-string v6, "RILReceiver"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mReceiverThread:Ljava/lang/Thread;

    .line 768
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v4

    if-nez v4, :cond_2

    .line 769
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 773
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 774
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "linkId"    # I

    .prologue
    .line 782
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/lc/LCRIL;-><init>(Landroid/content/Context;II)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    .line 784
    iput p4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL(), mLinkId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->SOCKET_NAME_RIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->SOCKET_NAME_RIL:Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 793
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/lc/LCRIL;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;
    .param p1, "x1"    # Z

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->sendScreenState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/lc/LCRIL;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/lc/LCRIL;Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/lc/LCRIL;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/lc/LCRIL;->clearRequestList(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/lc/LCRIL;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;
    .param p1, "x1"    # I

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/lc/LCRIL;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;
    .param p1, "x1"    # Z

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->updatePSResControlEvent(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/lc/LCRIL;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;
    .param p1, "x1"    # Z

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->updatePSStateChangeEvent(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/lc/LCRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/lc/LCRIL;->decrementWakeLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/lc/LCRIL;I)Lcom/android/internal/telephony/lc/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;
    .param p1, "x1"    # I

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/lc/LCRIL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/lc/LCRIL;->clearWakeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/lc/LCRIL;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->SOCKET_NAME_RIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/lc/LCRIL;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lc/LCRIL;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .prologue
    .line 2608
    iget-object v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2609
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2610
    iget v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    .line 2612
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/lc/LCRIL$RILSender;->removeMessages(I)V

    .line 2613
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/lc/LCRIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2614
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    iget v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/lc/LCRIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2615
    monitor-exit v2

    .line 2616
    return-void

    .line 2615
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSimStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1752
    const/16 v1, 0x14c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1754
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1756
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1757
    return-void
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    .line 2685
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2686
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2687
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 2688
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearRequestList  mWakeLockCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

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

    .line 2693
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2694
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/lc/RILRequest;

    .line 2695
    .local v2, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    if-eqz p2, :cond_1

    .line 2696
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/lc/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/lc/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2700
    invoke-virtual {v2}, Lcom/android/internal/telephony/lc/RILRequest;->release()V

    .line 2701
    invoke-direct {p0}, Lcom/android/internal/telephony/lc/LCRIL;->decrementWakeLock()V

    .line 2693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2703
    .end local v2    # "rr":Lcom/android/internal/telephony/lc/RILRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2704
    monitor-exit v4

    .line 2705
    return-void

    .line 2704
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

    .line 2634
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2635
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    .line 2640
    :goto_0
    return v0

    .line 2636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "at time of clearing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    .line 2638
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2639
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lc/LCRIL$RILSender;->removeMessages(I)V

    .line 2640
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 2641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/lc/RILRequest;[B)V
    .locals 9
    .param p1, "rr"    # Lcom/android/internal/telephony/lc/RILRequest;
    .param p2, "pdu"    # [B

    .prologue
    .line 1499
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1500
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1503
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1504
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1505
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v0, v7

    .line 1511
    .local v0, "address_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v8, v0

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1512
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1513
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1512
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1515
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1517
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v6, v7

    .line 1518
    .local v6, "subaddr_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v8, v6

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1519
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    .line 1520
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1519
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1523
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 1524
    .local v2, "bearerDataLength":I
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    .line 1526
    iget-object v7, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1525
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1528
    .end local v0    # "address_nbr_of_digits":I
    .end local v2    # "bearerDataLength":I
    .end local v5    # "i":I
    .end local v6    # "subaddr_nbr_of_digits":I
    :catch_0
    move-exception v4

    .line 1529
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

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1532
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method private constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/lc/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/lc/RILRequest;
    .param p2, "smscPDU"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;

    .prologue
    .line 1477
    iget-object v0, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    iget-object v0, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1480
    return-void
.end method

.method private decrementWakeLock()V
    .locals 3

    .prologue
    .line 2620
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2621
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 2622
    iget v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    .line 2628
    :goto_0
    monitor-exit v1

    .line 2629
    return-void

    .line 2624
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    .line 2625
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2626
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lc/LCRIL$RILSender;->removeMessages(I)V

    goto :goto_0

    .line 2628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/lc/RILRequest;
    .locals 4
    .param p1, "serial"    # I

    .prologue
    .line 2708
    const/4 v1, 0x0

    .line 2709
    .local v1, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2710
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/lc/RILRequest;

    move-object v1, v0

    .line 2711
    if-eqz v1, :cond_0

    .line 2712
    iget-object v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2714
    :cond_0
    monitor-exit v3

    .line 2716
    return-object v1

    .line 2714
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 3917
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 3919
    .local v2, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput p2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 3920
    const/4 v6, 0x5

    if-ge p2, v6, :cond_1

    .line 3921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 3923
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 3924
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3925
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3926
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3958
    :cond_0
    :goto_0
    return-object v2

    .line 3929
    .end local v0    # "addresses":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 3930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 3931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3932
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 3935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3936
    .local v5, "react":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 3937
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 3940
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3941
    .local v1, "apn":Ljava/lang/String;
    iget v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3943
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "getDataCallResponse, no ifname"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3945
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3946
    .restart local v0    # "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3947
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3949
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3950
    .local v3, "dnses":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3951
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 3953
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3954
    .local v4, "gateways":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3955
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 4
    .param p1, "stateInt"    # I

    .prologue
    .line 2581
    sparse-switch p1, :sswitch_data_0

    .line 2587
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

    .line 2582
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 2590
    .local v0, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v0

    .line 2583
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2584
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2581
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .param p1, "infoRec"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .prologue
    const/4 v4, 0x0

    .line 4490
    const/16 v0, 0x403

    .line 4491
    .local v0, "response":I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    if-eqz v1, :cond_1

    .line 4492
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4493
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4494
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4534
    :cond_0
    :goto_0
    return-void

    .line 4497
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_2

    .line 4498
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4499
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4500
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4503
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v1, :cond_3

    .line 4504
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4505
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4506
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4509
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v1, :cond_4

    .line 4510
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4511
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4512
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4515
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v1, :cond_5

    .line 4516
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4517
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4518
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4521
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v1, :cond_6

    .line 4522
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4523
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4524
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4527
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v1, :cond_0

    .line 4528
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4529
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4530
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

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

    .line 3578
    iput p1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRilVersion:I

    .line 3579
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 3580
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3583
    :cond_0
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2667
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2668
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 2676
    :cond_0
    :goto_0
    return-void

    .line 2669
    :cond_1
    if-nez v1, :cond_0

    .line 2670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2671
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    if-eqz v0, :cond_0

    .line 2672
    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->release()V

    .line 2673
    invoke-direct {p0}, Lcom/android/internal/telephony/lc/LCRIL;->decrementWakeLock()V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/lc/RILRequest;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 2722
    const/4 v1, 0x0

    .line 2724
    .local v1, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2725
    .local v4, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2729
    .local v0, "error":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v3

    .line 2731
    .local v3, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    if-nez v3, :cond_1

    .line 2732
    iget-object v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

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

    .line 2972
    .end local v3    # "rr":Lcom/android/internal/telephony/lc/RILRequest;
    :cond_0
    :goto_0
    return-object v3

    .line 2737
    .restart local v3    # "rr":Lcom/android/internal/telephony/lc/RILRequest;
    :cond_1
    const/4 v2, 0x0

    .line 2739
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_3

    .line 2741
    :cond_2
    :try_start_0
    iget v7, v3, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    sparse-switch v7, :sswitch_data_0

    .line 2911
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2913
    :catch_0
    move-exception v5

    .line 2916
    .local v5, "tr":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, possible invalid RIL response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2920
    iget-object v7, v3, Lcom/android/internal/telephony/lc/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 2921
    iget-object v7, v3, Lcom/android/internal/telephony/lc/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v6, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2922
    iget-object v6, v3, Lcom/android/internal/telephony/lc/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2747
    .end local v5    # "tr":Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 2931
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_1
    iget v7, v3, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    packed-switch v7, :pswitch_data_0

    .line 2944
    :cond_4
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_7

    .line 2945
    iget v6, v3, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_1

    .line 2961
    :cond_5
    :goto_3
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/lc/RILRequest;->onError(ILjava/lang/Object;)V

    goto :goto_0

    .line 2748
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2749
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2750
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2751
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2752
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2753
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2754
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2755
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2756
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2757
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2758
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2759
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2761
    :sswitch_d
    iget-object v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2762
    iget-object v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_6

    .line 2763
    const-string v7, "testing emergency call, notify ECM Registrants"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2764
    iget-object v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 2767
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 2768
    goto :goto_1

    .line 2770
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2771
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2772
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2773
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2774
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2775
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2776
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2777
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2778
    :sswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2779
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2780
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2781
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2782
    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2783
    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSetupDataCallFake(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2784
    :sswitch_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2785
    :sswitch_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2786
    :sswitch_1e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2787
    :sswitch_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2788
    :sswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2789
    :sswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2790
    :sswitch_22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2791
    :sswitch_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2792
    :sswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2793
    :sswitch_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2794
    :sswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2795
    :sswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2796
    :sswitch_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2797
    :sswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2798
    :sswitch_2a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2799
    :sswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2800
    :sswitch_2c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2801
    :sswitch_2d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2802
    :sswitch_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2803
    :sswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2804
    :sswitch_30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2805
    :sswitch_31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2806
    :sswitch_32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2807
    :sswitch_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2808
    :sswitch_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2809
    :sswitch_35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2810
    :sswitch_36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2811
    :sswitch_37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2812
    :sswitch_38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2813
    :sswitch_39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2814
    :sswitch_3a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2815
    :sswitch_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2816
    :sswitch_3c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2817
    :sswitch_3d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2818
    :sswitch_3e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2819
    :sswitch_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2820
    :sswitch_40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2821
    :sswitch_41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2822
    :sswitch_42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2823
    :sswitch_43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2824
    :sswitch_44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2825
    :sswitch_45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2826
    :sswitch_46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2827
    :sswitch_47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2828
    :sswitch_48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2829
    :sswitch_49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2830
    :sswitch_4a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2831
    :sswitch_4b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2832
    :sswitch_4c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2833
    :sswitch_4d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2834
    :sswitch_4e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2835
    :sswitch_4f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2836
    :sswitch_50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2837
    :sswitch_51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2838
    :sswitch_52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2839
    :sswitch_53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2840
    :sswitch_54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2841
    :sswitch_55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2842
    :sswitch_56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2843
    :sswitch_57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2844
    :sswitch_58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2845
    :sswitch_59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2846
    :sswitch_5a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2847
    :sswitch_5b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2848
    :sswitch_5c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2849
    :sswitch_5d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2850
    :sswitch_5e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2851
    :sswitch_5f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2852
    :sswitch_60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2853
    :sswitch_61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2854
    :sswitch_62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2855
    :sswitch_63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2856
    :sswitch_64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2857
    :sswitch_65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2858
    :sswitch_66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2859
    :sswitch_67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2860
    :sswitch_68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2861
    :sswitch_69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2862
    :sswitch_6a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2867
    :sswitch_6b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2870
    :sswitch_6c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2871
    :sswitch_6d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2872
    :sswitch_6e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2873
    :sswitch_6f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2874
    :sswitch_70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 2875
    .local v2, "ret":Ljava/lang/Object;
    :sswitch_71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2876
    :sswitch_72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2877
    :sswitch_73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2878
    :sswitch_74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2880
    :sswitch_75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2882
    :sswitch_76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2884
    :sswitch_77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2885
    :sswitch_78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2886
    :sswitch_79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2889
    :sswitch_7a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2892
    :sswitch_7b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2898
    :sswitch_7c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseMBMSAuth(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2899
    :sswitch_7d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseMBMSUICCAuth(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2901
    :sswitch_7e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2902
    :sswitch_7f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2904
    :sswitch_80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2906
    :sswitch_81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responsePinRemainAttempt(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2907
    :sswitch_82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2908
    :sswitch_83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 2934
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v7, :cond_4

    .line 2936
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lc/LCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2939
    iget-object v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 2951
    :sswitch_84
    iget-object v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_5

    .line 2953
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/lc/LCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2956
    iget-object v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_3

    .line 2964
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-direct {p0, v8, v2}, Lcom/android/internal/telephony/lc/LCRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2967
    iget-object v7, v3, Lcom/android/internal/telephony/lc/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 2968
    iget-object v7, v3, Lcom/android/internal/telephony/lc/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2969
    iget-object v6, v3, Lcom/android/internal/telephony/lc/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2741
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1d
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_20
        0x20 -> :sswitch_21
        0x21 -> :sswitch_22
        0x22 -> :sswitch_23
        0x23 -> :sswitch_24
        0x24 -> :sswitch_25
        0x25 -> :sswitch_26
        0x26 -> :sswitch_27
        0x27 -> :sswitch_28
        0x28 -> :sswitch_29
        0x29 -> :sswitch_2a
        0x2a -> :sswitch_2b
        0x2b -> :sswitch_2c
        0x2c -> :sswitch_2d
        0x2d -> :sswitch_2e
        0x2e -> :sswitch_2f
        0x2f -> :sswitch_30
        0x30 -> :sswitch_31
        0x31 -> :sswitch_32
        0x32 -> :sswitch_33
        0x33 -> :sswitch_34
        0x34 -> :sswitch_35
        0x35 -> :sswitch_36
        0x36 -> :sswitch_37
        0x37 -> :sswitch_38
        0x38 -> :sswitch_39
        0x39 -> :sswitch_3b
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_3e
        0x3d -> :sswitch_3f
        0x3e -> :sswitch_40
        0x3f -> :sswitch_41
        0x40 -> :sswitch_42
        0x41 -> :sswitch_43
        0x42 -> :sswitch_44
        0x43 -> :sswitch_45
        0x44 -> :sswitch_46
        0x45 -> :sswitch_47
        0x46 -> :sswitch_48
        0x47 -> :sswitch_49
        0x48 -> :sswitch_4a
        0x49 -> :sswitch_4b
        0x4a -> :sswitch_4c
        0x4b -> :sswitch_4d
        0x4c -> :sswitch_4e
        0x4d -> :sswitch_4f
        0x4e -> :sswitch_50
        0x4f -> :sswitch_51
        0x50 -> :sswitch_52
        0x51 -> :sswitch_53
        0x52 -> :sswitch_54
        0x53 -> :sswitch_55
        0x54 -> :sswitch_56
        0x55 -> :sswitch_57
        0x56 -> :sswitch_60
        0x57 -> :sswitch_58
        0x58 -> :sswitch_59
        0x59 -> :sswitch_5a
        0x5a -> :sswitch_5b
        0x5b -> :sswitch_5c
        0x5c -> :sswitch_5d
        0x5d -> :sswitch_5e
        0x5e -> :sswitch_5f
        0x5f -> :sswitch_61
        0x60 -> :sswitch_62
        0x61 -> :sswitch_63
        0x62 -> :sswitch_64
        0x63 -> :sswitch_67
        0x64 -> :sswitch_65
        0x65 -> :sswitch_66
        0x66 -> :sswitch_68
        0x67 -> :sswitch_69
        0x68 -> :sswitch_6a
        0x69 -> :sswitch_6c
        0x6a -> :sswitch_6d
        0x6b -> :sswitch_6e
        0x6c -> :sswitch_6f
        0x6d -> :sswitch_70
        0x6e -> :sswitch_71
        0x6f -> :sswitch_72
        0x70 -> :sswitch_73
        0x71 -> :sswitch_74
        0x12d -> :sswitch_7b
        0x131 -> :sswitch_7a
        0x135 -> :sswitch_6b
        0x136 -> :sswitch_76
        0x137 -> :sswitch_81
        0x13d -> :sswitch_79
        0x13e -> :sswitch_77
        0x13f -> :sswitch_78
        0x140 -> :sswitch_80
        0x141 -> :sswitch_7c
        0x142 -> :sswitch_7c
        0x143 -> :sswitch_7d
        0x144 -> :sswitch_7e
        0x145 -> :sswitch_75
        0x147 -> :sswitch_7f
        0x148 -> :sswitch_3a
        0x149 -> :sswitch_82
        0x14a -> :sswitch_1b
        0x14b -> :sswitch_1c
        0x14c -> :sswitch_83
    .end sparse-switch

    .line 2931
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2945
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_84
        0x4 -> :sswitch_84
        0x6 -> :sswitch_84
        0x7 -> :sswitch_84
        0x2b -> :sswitch_84
    .end sparse-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 26
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3044
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3046
    .local v15, "response":I
    packed-switch v15, :pswitch_data_0

    .line 3104
    :pswitch_0
    :try_start_0
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unrecognized unsol response: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3106
    :catch_0
    move-exception v20

    .line 3107
    .local v20, "tr":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception processing unsol response: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    .end local v20    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3053
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 3112
    :goto_1
    packed-switch v15, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 3115
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    .line 3116
    .local v9, "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 3118
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/lc/LCRIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 3054
    .end local v9    # "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_4
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .local v17, "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3055
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3056
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3057
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3058
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3059
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3060
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3061
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3062
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3063
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3064
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3065
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3066
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3067
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3068
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3069
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3070
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3071
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3072
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3073
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3074
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3075
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3076
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3077
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3078
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3079
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 3080
    .end local v17    # "ret":Ljava/util/ArrayList;
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .local v17, "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3081
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3082
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3083
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3084
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3085
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3086
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3087
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3088
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3090
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3092
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3093
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseUSIMExist(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3094
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3095
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 3096
    .end local v17    # "ret":Ljava/util/ArrayList;
    :pswitch_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .local v17, "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3097
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3098
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3099
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3100
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_30
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseMovePsAway(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3101
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_31
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseRegisterComplete(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3102
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_32
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseCampStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3121
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_33
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3127
    :pswitch_34
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3133
    :pswitch_35
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3139
    :pswitch_36
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3142
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v4, v0, [Ljava/lang/String;

    .line 3144
    .local v4, "a":[Ljava/lang/String;
    const/16 v21, 0x1

    check-cast v17, Ljava/lang/String;

    aput-object v17, v4, v21

    .line 3148
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v18

    .line 3149
    .local v18, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3156
    .end local v4    # "a":[Ljava/lang/String;
    .end local v18    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3164
    :pswitch_38
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3166
    check-cast v17, [I

    move-object/from16 v19, v17

    check-cast v19, [I

    .line 3168
    .local v19, "smsIndex":[I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 3169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3174
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v19    # "smsIndex":[I
    :pswitch_39
    move-object/from16 v21, v17

    .line 3179
    check-cast v21, [Ljava/lang/String;

    move-object/from16 v14, v21

    check-cast v14, [Ljava/lang/String;

    .line 3181
    .local v14, "resp":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 3182
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v14, v0, [Ljava/lang/String;

    .line 3183
    const/16 v21, 0x0

    check-cast v17, [Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v22, v17, v22

    aput-object v22, v14, v21

    .line 3184
    const/16 v21, 0x1

    const/16 v22, 0x0

    aput-object v22, v14, v21

    .line 3186
    :cond_2
    const/16 v21, 0x0

    aget-object v21, v14, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 3187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v14, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3193
    .end local v14    # "resp":[Ljava/lang/String;
    :pswitch_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3197
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 3199
    .local v10, "nitzReceiveTime":J
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 3201
    .local v16, "result":[Ljava/lang/Object;
    const/16 v21, 0x0

    aput-object v17, v16, v21

    .line 3202
    const/16 v21, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v16, v21

    .line 3204
    const-string v21, "telephony.test.ignore.nitz"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 3207
    .local v7, "ignoreNitz":Z
    if-eqz v7, :cond_3

    .line 3208
    const-string v21, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3210
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 3212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3216
    :cond_4
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/lc/LCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3226
    .end local v7    # "ignoreNitz":Z
    .end local v10    # "nitzReceiveTime":J
    .end local v16    # "result":[Ljava/lang/Object;
    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3232
    :pswitch_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3238
    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3247
    :pswitch_3e
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3256
    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3265
    :pswitch_40
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3274
    :pswitch_41
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3283
    :pswitch_42
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3291
    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3300
    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3309
    :pswitch_45
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3317
    :pswitch_46
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 3325
    :pswitch_47
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    move-object/from16 v18, v17

    .line 3327
    check-cast v18, Landroid/telephony/SmsMessage;

    .line 3329
    .restart local v18    # "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3336
    .end local v18    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_48
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3345
    :pswitch_49
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3353
    :pswitch_4a
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    .line 3355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3361
    :pswitch_4b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3370
    :pswitch_4c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3382
    :pswitch_4d
    :try_start_3
    move-object/from16 v0, v17

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3388
    .local v8, "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 3389
    .local v13, "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3390
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/lc/LCRIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_2

    .line 3383
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v13    # "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_1
    move-exception v5

    .line 3384
    .local v5, "e":Ljava/lang/ClassCastException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/ClassCastException;
    :pswitch_4e
    move-object/from16 v21, v17

    .line 3395
    check-cast v21, [B

    check-cast v21, [B

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3402
    :pswitch_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3404
    check-cast v17, [I

    check-cast v17, [I

    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/4 v12, 0x1

    .line 3405
    .local v12, "playtone":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3404
    .end local v12    # "playtone":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 3411
    :pswitch_50
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3420
    :pswitch_51
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3429
    :pswitch_52
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3438
    :pswitch_53
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3448
    :pswitch_54
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3469
    :pswitch_55
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3470
    const-class v21, Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    .line 3478
    .local v17, "ret":[Ljava/lang/Object;
    goto/16 :goto_0

    .line 3481
    .end local v17    # "ret":[Ljava/lang/Object;
    :pswitch_56
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3496
    :pswitch_57
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3505
    :pswitch_58
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3508
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/lc/LCRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 3509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mPreferredNetworkType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/lc/LCRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 3510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mCdmaSubscription:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/lc/LCRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 3511
    const v21, 0x7fffffff

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/lc/LCRIL;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 3512
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->checkSimStatus(Landroid/os/Message;)V

    .line 3513
    check-cast v17, [I

    check-cast v17, [I

    const/16 v21, 0x0

    aget v21, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_0

    .line 3517
    :pswitch_59
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3527
    :pswitch_5a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3536
    :pswitch_5b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLog(I)V

    goto/16 :goto_0

    .line 3546
    :pswitch_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3558
    :pswitch_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/lc/LCRIL;->unsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3046
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
        :pswitch_2b
        :pswitch_2c
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_2f
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    .line 3112
    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_2
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
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_45
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_52
        :pswitch_53
        :pswitch_57
        :pswitch_58
        :pswitch_51
        :pswitch_5a
        :pswitch_33
        :pswitch_59
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_54
        :pswitch_5b
        :pswitch_55
        :pswitch_2
        :pswitch_56
        :pswitch_5c
        :pswitch_5d
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

    .line 566
    const/4 v2, 0x0

    .line 567
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 569
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 571
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 572
    const-string v5, "RILJ"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 601
    :goto_0
    return v1

    .line 576
    :cond_1
    add-int/2addr v2, v0

    .line 577
    sub-int/2addr v3, v0

    .line 578
    if-gtz v3, :cond_0

    .line 580
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

    .line 586
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 587
    move v3, v1

    .line 589
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 591
    if-gez v0, :cond_3

    .line 592
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

    .line 594
    goto :goto_0

    .line 597
    :cond_3
    add-int/2addr v2, v0

    .line 598
    sub-int/2addr v3, v0

    .line 599
    if-gtz v3, :cond_2

    goto :goto_0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 4562
    packed-switch p0, :pswitch_data_0

    .line 4715
    :pswitch_0
    const-string v0, "<unknown request>"

    :goto_0
    return-object v0

    .line 4563
    :pswitch_1
    const-string v0, "GET_SIM_STATUS"

    goto :goto_0

    .line 4564
    :pswitch_2
    const-string v0, "ENTER_SIM_PIN"

    goto :goto_0

    .line 4565
    :pswitch_3
    const-string v0, "ENTER_SIM_PUK"

    goto :goto_0

    .line 4566
    :pswitch_4
    const-string v0, "ENTER_SIM_PIN2"

    goto :goto_0

    .line 4567
    :pswitch_5
    const-string v0, "ENTER_SIM_PUK2"

    goto :goto_0

    .line 4568
    :pswitch_6
    const-string v0, "CHANGE_SIM_PIN"

    goto :goto_0

    .line 4569
    :pswitch_7
    const-string v0, "CHANGE_SIM_PIN2"

    goto :goto_0

    .line 4570
    :pswitch_8
    const-string v0, "ENTER_NETWORK_DEPERSONALIZATION"

    goto :goto_0

    .line 4571
    :pswitch_9
    const-string v0, "GET_CURRENT_CALLS"

    goto :goto_0

    .line 4572
    :pswitch_a
    const-string v0, "DIAL"

    goto :goto_0

    .line 4573
    :pswitch_b
    const-string v0, "GET_IMSI"

    goto :goto_0

    .line 4574
    :pswitch_c
    const-string v0, "HANGUP"

    goto :goto_0

    .line 4575
    :pswitch_d
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    goto :goto_0

    .line 4576
    :pswitch_e
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    goto :goto_0

    .line 4577
    :pswitch_f
    const-string v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    goto :goto_0

    .line 4578
    :pswitch_10
    const-string v0, "CONFERENCE"

    goto :goto_0

    .line 4579
    :pswitch_11
    const-string v0, "UDUB"

    goto :goto_0

    .line 4580
    :pswitch_12
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    goto :goto_0

    .line 4581
    :pswitch_13
    const-string v0, "SIGNAL_STRENGTH"

    goto :goto_0

    .line 4582
    :pswitch_14
    const-string v0, "VOICE_REGISTRATION_STATE"

    goto :goto_0

    .line 4583
    :pswitch_15
    const-string v0, "DATA_REGISTRATION_STATE"

    goto :goto_0

    .line 4584
    :pswitch_16
    const-string v0, "OPERATOR"

    goto :goto_0

    .line 4585
    :pswitch_17
    const-string v0, "RADIO_POWER"

    goto :goto_0

    .line 4586
    :pswitch_18
    const-string v0, "DTMF"

    goto :goto_0

    .line 4587
    :pswitch_19
    const-string v0, "SEND_SMS"

    goto :goto_0

    .line 4588
    :pswitch_1a
    const-string v0, "SEND_SMS_EXPECT_MORE"

    goto :goto_0

    .line 4589
    :pswitch_1b
    const-string v0, "SETUP_DATA_CALL"

    goto :goto_0

    .line 4590
    :pswitch_1c
    const-string v0, "SETUP_DATA_CALL_FAKE"

    goto :goto_0

    .line 4591
    :pswitch_1d
    const-string v0, "REQUEST_ENABLE_PS_DOMAIN"

    goto :goto_0

    .line 4592
    :pswitch_1e
    const-string v0, "SIM_IO"

    goto :goto_0

    .line 4593
    :pswitch_1f
    const-string v0, "SEND_USSD"

    goto :goto_0

    .line 4594
    :pswitch_20
    const-string v0, "CANCEL_USSD"

    goto :goto_0

    .line 4595
    :pswitch_21
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 4596
    :pswitch_22
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 4597
    :pswitch_23
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    goto :goto_0

    .line 4598
    :pswitch_24
    const-string v0, "SET_CALL_FORWARD"

    goto :goto_0

    .line 4599
    :pswitch_25
    const-string v0, "QUERY_CALL_WAITING"

    goto :goto_0

    .line 4600
    :pswitch_26
    const-string v0, "SET_CALL_WAITING"

    goto :goto_0

    .line 4601
    :pswitch_27
    const-string v0, "SMS_ACKNOWLEDGE"

    goto :goto_0

    .line 4602
    :pswitch_28
    const-string v0, "GET_IMEI"

    goto :goto_0

    .line 4603
    :pswitch_29
    const-string v0, "GET_IMEISV"

    goto :goto_0

    .line 4604
    :pswitch_2a
    const-string v0, "ANSWER"

    goto :goto_0

    .line 4605
    :pswitch_2b
    const-string v0, "DEACTIVATE_DATA_CALL"

    goto/16 :goto_0

    .line 4606
    :pswitch_2c
    const-string v0, "QUERY_FACILITY_LOCK"

    goto/16 :goto_0

    .line 4607
    :pswitch_2d
    const-string v0, "SET_FACILITY_LOCK"

    goto/16 :goto_0

    .line 4608
    :pswitch_2e
    const-string v0, "CHANGE_BARRING_PASSWORD"

    goto/16 :goto_0

    .line 4609
    :pswitch_2f
    const-string v0, "QUERY_NETWORK_SELECTION_MODE"

    goto/16 :goto_0

    .line 4610
    :pswitch_30
    const-string v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    goto/16 :goto_0

    .line 4611
    :pswitch_31
    const-string v0, "SET_NETWORK_SELECTION_MANUAL"

    goto/16 :goto_0

    .line 4612
    :pswitch_32
    const-string v0, "QUERY_AVAILABLE_NETWORKS "

    goto/16 :goto_0

    .line 4613
    :pswitch_33
    const-string v0, "DTMF_START"

    goto/16 :goto_0

    .line 4614
    :pswitch_34
    const-string v0, "DTMF_STOP"

    goto/16 :goto_0

    .line 4615
    :pswitch_35
    const-string v0, "BASEBAND_VERSION"

    goto/16 :goto_0

    .line 4616
    :pswitch_36
    const-string v0, "SEPARATE_CONNECTION"

    goto/16 :goto_0

    .line 4617
    :pswitch_37
    const-string v0, "SET_MUTE"

    goto/16 :goto_0

    .line 4618
    :pswitch_38
    const-string v0, "GET_MUTE"

    goto/16 :goto_0

    .line 4619
    :pswitch_39
    const-string v0, "QUERY_CLIP"

    goto/16 :goto_0

    .line 4620
    :pswitch_3a
    const-string v0, "LAST_DATA_CALL_FAIL_CAUSE"

    goto/16 :goto_0

    .line 4621
    :pswitch_3b
    const-string v0, "DATA_CALL_LIST"

    goto/16 :goto_0

    .line 4622
    :pswitch_3c
    const-string v0, "FAKE_IPV4_ADDR_FOR_BIH"

    goto/16 :goto_0

    .line 4623
    :pswitch_3d
    const-string v0, "RESET_RADIO"

    goto/16 :goto_0

    .line 4624
    :pswitch_3e
    const-string v0, "OEM_HOOK_RAW"

    goto/16 :goto_0

    .line 4625
    :pswitch_3f
    const-string v0, "OEM_HOOK_STRINGS"

    goto/16 :goto_0

    .line 4626
    :pswitch_40
    const-string v0, "SCREEN_STATE"

    goto/16 :goto_0

    .line 4627
    :pswitch_41
    const-string v0, "SET_SUPP_SVC_NOTIFICATION"

    goto/16 :goto_0

    .line 4628
    :pswitch_42
    const-string v0, "WRITE_SMS_TO_SIM"

    goto/16 :goto_0

    .line 4629
    :pswitch_43
    const-string v0, "DELETE_SMS_ON_SIM"

    goto/16 :goto_0

    .line 4630
    :pswitch_44
    const-string v0, "SET_BAND_MODE"

    goto/16 :goto_0

    .line 4631
    :pswitch_45
    const-string v0, "QUERY_AVAILABLE_BAND_MODE"

    goto/16 :goto_0

    .line 4632
    :pswitch_46
    const-string v0, "REQUEST_STK_GET_PROFILE"

    goto/16 :goto_0

    .line 4633
    :pswitch_47
    const-string v0, "REQUEST_STK_SET_PROFILE"

    goto/16 :goto_0

    .line 4634
    :pswitch_48
    const-string v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    goto/16 :goto_0

    .line 4635
    :pswitch_49
    const-string v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    goto/16 :goto_0

    .line 4636
    :pswitch_4a
    const-string v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    goto/16 :goto_0

    .line 4637
    :pswitch_4b
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    goto/16 :goto_0

    .line 4638
    :pswitch_4c
    const-string v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 4639
    :pswitch_4d
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 4640
    :pswitch_4e
    const-string v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    goto/16 :goto_0

    .line 4641
    :pswitch_4f
    const-string v0, "REQUEST_SET_LOCATION_UPDATES"

    goto/16 :goto_0

    .line 4642
    :pswitch_50
    const-string v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 4643
    :pswitch_51
    const-string v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 4644
    :pswitch_52
    const-string v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 4645
    :pswitch_53
    const-string v0, "RIL_REQUEST_SET_TTY_MODE"

    goto/16 :goto_0

    .line 4646
    :pswitch_54
    const-string v0, "RIL_REQUEST_QUERY_TTY_MODE"

    goto/16 :goto_0

    .line 4647
    :pswitch_55
    const-string v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 4648
    :pswitch_56
    const-string v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 4649
    :pswitch_57
    const-string v0, "RIL_REQUEST_CDMA_FLASH"

    goto/16 :goto_0

    .line 4650
    :pswitch_58
    const-string v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    goto/16 :goto_0

    .line 4651
    :pswitch_59
    const-string v0, "RIL_REQUEST_CDMA_SEND_SMS"

    goto/16 :goto_0

    .line 4652
    :pswitch_5a
    const-string v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    goto/16 :goto_0

    .line 4653
    :pswitch_5b
    const-string v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4654
    :pswitch_5c
    const-string v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4655
    :pswitch_5d
    const-string v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4656
    :pswitch_5e
    const-string v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4657
    :pswitch_5f
    const-string v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 4658
    :pswitch_60
    const-string v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    goto/16 :goto_0

    .line 4659
    :pswitch_61
    const-string v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 4660
    :pswitch_62
    const-string v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    goto/16 :goto_0

    .line 4661
    :pswitch_63
    const-string v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    goto/16 :goto_0

    .line 4662
    :pswitch_64
    const-string v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    goto/16 :goto_0

    .line 4663
    :pswitch_65
    const-string v0, "RIL_REQUEST_DEVICE_IDENTITY"

    goto/16 :goto_0

    .line 4664
    :pswitch_66
    const-string v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 4665
    :pswitch_67
    const-string v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 4666
    :pswitch_68
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    goto/16 :goto_0

    .line 4667
    :pswitch_69
    const-string v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    goto/16 :goto_0

    .line 4668
    :pswitch_6a
    const-string v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    goto/16 :goto_0

    .line 4669
    :pswitch_6b
    const-string v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 4670
    :pswitch_6c
    const-string v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 4671
    :pswitch_6d
    const-string v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    goto/16 :goto_0

    .line 4672
    :pswitch_6e
    const-string v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    goto/16 :goto_0

    .line 4673
    :pswitch_6f
    const-string v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    goto/16 :goto_0

    .line 4674
    :pswitch_70
    const-string v0, "RIL_REQUEST_READ_ICC_CARD_RECORD"

    goto/16 :goto_0

    .line 4675
    :pswitch_71
    const-string v0, "RIL_REQUEST_WRITE_ICC_CARD_RECORD"

    goto/16 :goto_0

    .line 4676
    :pswitch_72
    const-string v0, "RIL_REQUEST_GET_RECORD_NUM"

    goto/16 :goto_0

    .line 4677
    :pswitch_73
    const-string v0, "RIL_REQUEST_GET_ICC_PHONEBOOK_RECORD_INFO"

    goto/16 :goto_0

    .line 4678
    :pswitch_74
    const-string v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    goto/16 :goto_0

    .line 4679
    :pswitch_75
    const-string v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    goto/16 :goto_0

    .line 4680
    :pswitch_76
    const-string v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    goto/16 :goto_0

    .line 4681
    :pswitch_77
    const-string v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    goto/16 :goto_0

    .line 4683
    :pswitch_78
    const-string v0, "RIL_REQUEST_GET_PHONEBOOK_ERROR_CODE"

    goto/16 :goto_0

    .line 4685
    :pswitch_79
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS"

    goto/16 :goto_0

    .line 4686
    :pswitch_7a
    const-string v0, "RIL_REQUEST_COMFIRM_INCOMMING_CALL"

    goto/16 :goto_0

    .line 4688
    :pswitch_7b
    const-string v0, "GET_COLR"

    goto/16 :goto_0

    .line 4689
    :pswitch_7c
    const-string v0, "GET_COLP"

    goto/16 :goto_0

    .line 4690
    :pswitch_7d
    const-string v0, "SET_COLP"

    goto/16 :goto_0

    .line 4693
    :pswitch_7e
    const-string v0, "RIL_REQUEST_SHUT_DOWN_RADIO"

    goto/16 :goto_0

    .line 4696
    :pswitch_7f
    const-string v0, "RIL_REQUEST_SET_PREFERRED_PLMN_LIST"

    goto/16 :goto_0

    .line 4697
    :pswitch_80
    const-string v0, "RIL_REQUEST_GET_PREFERRED_PLMN_LIST"

    goto/16 :goto_0

    .line 4700
    :pswitch_81
    const-string v0, "RIL_REQUEST_MBMS_SEND_AUTH"

    goto/16 :goto_0

    .line 4701
    :pswitch_82
    const-string v0, "RIL_REQUEST_MBMS_GET_CELLID"

    goto/16 :goto_0

    .line 4702
    :pswitch_83
    const-string v0, "RIL_REQUEST_MBMS_UICC_AUTN"

    goto/16 :goto_0

    .line 4705
    :pswitch_84
    const-string v0, "RIL_REQUEST_PLAY_CALLWAIT_TONE"

    goto/16 :goto_0

    .line 4707
    :pswitch_85
    const-string v0, "RIL_REQUEST_PS_STATE_CHANGE_EVENT_TOGGLE"

    goto/16 :goto_0

    .line 4708
    :pswitch_86
    const-string v0, "RIL_REQUEST_PS_RES_CONTROL_EVENT_TOGGLE"

    goto/16 :goto_0

    .line 4710
    :pswitch_87
    const-string v0, "RIL_REQUEST_SET_STANDBY_ID_PLAY_VOICE"

    goto/16 :goto_0

    .line 4712
    :pswitch_88
    const-string v0, "RIL_REQUEST_QUERY_PIN_REMAIN_ATTEMPT"

    goto/16 :goto_0

    .line 4713
    :pswitch_89
    const-string v0, "RIL_REQUEST_SCPBS_STRUCTURE"

    goto/16 :goto_0

    .line 4714
    :pswitch_8a
    const-string v0, "RIL_REQUEST_CHECK_SIM_STATUS"

    goto/16 :goto_0

    .line 4562
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_79
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7f
        :pswitch_80
        :pswitch_72
        :pswitch_0
        :pswitch_7e
        :pswitch_73
        :pswitch_84
        :pswitch_70
        :pswitch_71
        :pswitch_7a
        :pswitch_88
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7d
        :pswitch_7b
        :pswitch_7c
        :pswitch_87
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_85
        :pswitch_78
        :pswitch_0
        :pswitch_86
        :pswitch_3c
        :pswitch_89
        :pswitch_1c
        :pswitch_1d
        :pswitch_8a
    .end packed-switch
.end method

.method private responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3614
    .local v2, "numInfos":I
    new-array v1, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 3616
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3617
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v0

    .line 3619
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 3620
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 3621
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 3622
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 3623
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 3624
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 3616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3627
    :cond_0
    return-object v1
.end method

.method private responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3847
    .local v3, "num":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3854
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 3855
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 3857
    .local v0, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 3858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 3859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 3860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 3861
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 3862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 3863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3864
    .local v7, "voiceSettings":I
    if-nez v7, :cond_2

    move v8, v10

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 3865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 3866
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3868
    .local v2, "np":I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 3869
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 3870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 3871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3872
    .local v6, "uusInfoPresent":I
    if-ne v6, v9, :cond_4

    .line 3873
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 3874
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 3875
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 3876
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 3877
    .local v5, "userData":[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 3878
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

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLogv(Ljava/lang/String;)V

    .line 3881
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

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLogv(Ljava/lang/String;)V

    .line 3883
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

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLogv(Ljava/lang/String;)V

    .line 3890
    .end local v5    # "userData":[B
    :goto_5
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3892
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3894
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_5

    .line 3895
    iget-object v8, p0, Lcom/android/internal/telephony/lc/LCRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3896
    const-string v8, "InCall VoicePrivacy is enabled"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 3854
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_0
    move v8, v10

    .line 3860
    goto/16 :goto_1

    :cond_1
    move v8, v10

    .line 3861
    goto/16 :goto_2

    .restart local v7    # "voiceSettings":I
    :cond_2
    move v8, v9

    .line 3864
    goto/16 :goto_3

    :cond_3
    move v8, v10

    .line 3865
    goto/16 :goto_4

    .line 3886
    .restart local v2    # "np":I
    .restart local v6    # "uusInfoPresent":I
    :cond_4
    const-string v8, "Incoming UUS : NOT present!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 3898
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/lc/LCRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3899
    const-string v8, "InCall VoicePrivacy is disabled"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_6

    .line 3903
    .end local v0    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3905
    if-nez v3, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/lc/LCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3906
    iget-object v8, p0, Lcom/android/internal/telephony/lc/LCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v8, :cond_7

    .line 3907
    const-string v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 3909
    iget-object v8, p0, Lcom/android/internal/telephony/lc/LCRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 3913
    :cond_7
    return-object v4
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4324
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 4326
    .local v0, "response":[C
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 4327
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 4328
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 4329
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 4331
    return-object v0
.end method

.method private responseCampStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4447
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 4449
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 4449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4452
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseCampStatus: numInts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4455
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    const-string v4, "responseCampStatus: send ACTION_REPORT_CAMP_STATUS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4463
    return-object v2
.end method

.method private responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 4240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4242
    .local v2, "numServiceCategories":I
    if-nez v2, :cond_0

    .line 4247
    const/16 v1, 0x5e

    .line 4248
    .local v1, "numInts":I
    new-array v3, v1, [I

    .line 4251
    .local v3, "response":[I
    const/16 v4, 0x1f

    aput v4, v3, v6

    .line 4255
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4256
    add-int/lit8 v4, v0, 0x0

    div-int/lit8 v5, v0, 0x3

    aput v5, v3, v4

    .line 4257
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 4258
    add-int/lit8 v4, v0, 0x2

    aput v6, v3, v4

    .line 4255
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 4262
    .end local v0    # "i":I
    .end local v1    # "numInts":I
    .end local v3    # "response":[I
    :cond_0
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 4263
    .restart local v1    # "numInts":I
    new-array v3, v1, [I

    .line 4265
    .restart local v3    # "response":[I
    aput v2, v3, v6

    .line 4266
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 4267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 4266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4271
    :cond_1
    return-object v3
.end method

.method private responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4305
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 4307
    .local v0, "notification":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 4308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 4310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 4311
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 4312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 4313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 4314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 4315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 4316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    .line 4317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    .line 4319
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
    .line 4292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4293
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4295
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4296
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Landroid/os/Parcel;)V

    .line 4297
    .local v0, "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4300
    .end local v0    # "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_0
    return-object v3
.end method

.method private responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3646
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3648
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
    .line 4544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4545
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4547
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4548
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 4549
    .local v0, "InfoRec":Landroid/telephony/CellInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4552
    .end local v0    # "InfoRec":Landroid/telephony/CellInfo;
    :cond_0
    return-object v3
.end method

.method private responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4167
    .local v3, "num":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4170
    .local v6, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const-string v8, "gsm.network.type"

    const-string v9, "unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4173
    .local v4, "radioString":Ljava/lang/String;
    const-string v8, "GPRS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4174
    const/4 v5, 0x1

    .line 4190
    .local v5, "radioType":I
    :goto_0
    if-eqz v5, :cond_6

    .line 4191
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 4192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4193
    .local v7, "rssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4194
    .local v2, "location":Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0, v7, v2, v5}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 4195
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4191
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4175
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

    .line 4176
    const/4 v5, 0x2

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 4177
    .end local v5    # "radioType":I
    :cond_1
    const-string v8, "UMTS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4178
    const/4 v5, 0x3

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 4179
    .end local v5    # "radioType":I
    :cond_2
    const-string v8, "HSDPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4180
    const/16 v5, 0x8

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 4181
    .end local v5    # "radioType":I
    :cond_3
    const-string v8, "HSUPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4182
    const/16 v5, 0x9

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 4183
    .end local v5    # "radioType":I
    :cond_4
    const-string v8, "HSPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4184
    const/16 v5, 0xa

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 4186
    .end local v5    # "radioType":I
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "radioType":I
    goto :goto_0

    .line 4198
    :cond_6
    return-object v6
.end method

.method private responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3965
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3966
    .local v3, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3967
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

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 3969
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3970
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3971
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/lc/LCRIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3974
    :cond_0
    return-object v2
.end method

.method private responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4202
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 4204
    .local v0, "response":[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 4208
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPreferredNetworkType:I

    .line 4210
    :cond_0
    return-object v0
.end method

.method private responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    .line 4218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4219
    .local v7, "num":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4221
    .local v8, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 4222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4223
    .local v1, "fromId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4224
    .local v2, "toId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4225
    .local v3, "fromScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4226
    .local v4, "toScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v9, :cond_0

    move v5, v9

    .line 4228
    .local v5, "selected":Z
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 4230
    .local v0, "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4221
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4226
    .end local v0    # "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5    # "selected":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 4232
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
    .line 3700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3701
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3703
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3710
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    return-object v3
.end method

.method private responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3717
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 3718
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 3719
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 3720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 3721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 3722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 3723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3726
    .local v3, "numApplications":I
    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 3727
    const/16 v3, 0x8

    .line 3729
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 3730
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3731
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 3732
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 3733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 3734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 3735
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 3736
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 3737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 3738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 3739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 3740
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v4, v2

    .line 3730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3742
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3592
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 3594
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 3594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3598
    :cond_0
    return-object v2
.end method

.method private responseMBMSAuth(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4470
    .local v1, "retValue":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4475
    .local v0, "retStr":Ljava/lang/String;
    const/4 v2, 0x0

    return-object v2
.end method

.method private responseMBMSUICCAuth(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4484
    const/4 v0, 0x0

    return-object v0
.end method

.method private responseMovePsAway(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4421
    const-string v0, "responseMovePsAway: send ACTION_MOVE_PS_AWAY "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4428
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 4131
    .local v2, "strings":[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_0

    .line 4132
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings, expected multible of 5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4137
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    div-int/lit8 v3, v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4139
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 4140
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

    .line 4139
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 4155
    :cond_1
    return-object v1
.end method

.method private responsePinRemainAttempt(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x4

    .line 3760
    new-array v1, v3, [I

    .line 3761
    .local v1, "remainAttempt":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 3762
    const-string v2, "responsePinRemainAttempt:error!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 3763
    const/4 v1, 0x0

    .line 3768
    .end local v1    # "remainAttempt":[I
    :cond_0
    return-object v1

    .line 3765
    .restart local v1    # "remainAttempt":[I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 3766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 3765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3675
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3677
    .local v0, "response":[B
    return-object v0
.end method

.method private responseRegisterComplete(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4432
    const-string v0, "responseRegisterComplete: send ACTION_MODEM_REGISTER_COMPLETE "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4438
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3686
    .local v2, "messageRef":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3687
    .local v0, "ackPDU":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3689
    .local v1, "errorCode":I
    new-instance v3, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 3691
    .local v3, "response":Lcom/android/internal/telephony/SmsResponse;
    return-object v3
.end method

.method private responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x5

    .line 3979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3980
    .local v5, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3985
    .local v4, "num":I
    if-ge v5, v8, :cond_4

    .line 3986
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 3987
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 3988
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 3989
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 3990
    iget-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3991
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3994
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3995
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3996
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 3998
    :cond_1
    const/4 v6, 0x4

    if-lt v4, v6, :cond_2

    .line 3999
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4000
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

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4001
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4002
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 4005
    .end local v2    # "dnses":Ljava/lang/String;
    :cond_2
    if-lt v4, v8, :cond_3

    .line 4006
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4007
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

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4008
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4009
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 4021
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v3    # "gateways":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1

    .line 4013
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_4
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 4014
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

    .line 4018
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/lc/LCRIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v1

    .restart local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    goto :goto_0
.end method

.method private responseSetupDataCallFake(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x5

    .line 4026
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4027
    .local v5, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4032
    .local v4, "num":I
    if-ge v5, v8, :cond_4

    .line 4033
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 4034
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 4035
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 4036
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 4037
    iget-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4038
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4041
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4042
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4043
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 4045
    :cond_1
    const/4 v6, 0x4

    if-lt v4, v6, :cond_2

    .line 4046
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4047
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

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4048
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4049
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 4052
    .end local v2    # "dnses":Ljava/lang/String;
    :cond_2
    if-lt v4, v8, :cond_3

    .line 4053
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4054
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

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4055
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4056
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 4068
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v3    # "gateways":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1

    .line 4060
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_4
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 4061
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

    .line 4065
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/lc/LCRIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v1

    .restart local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    goto :goto_0
.end method

.method private responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4278
    invoke-static {p1}, Landroid/telephony/SignalStrength;->makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 4279
    .local v0, "signalStrength":Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_____responseSignalStrength(), signalStrength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    return-object v0
.end method

.method private responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3747
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 3749
    .local v0, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 3750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 3751
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 3752
    return-object v0
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3655
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3657
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3665
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 3667
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3632
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 3634
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 3635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 3636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 3637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 3638
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 3640
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 4727
    packed-switch p0, :pswitch_data_0

    .line 4780
    :pswitch_0
    const-string v0, "<unknown response>"

    :goto_0
    return-object v0

    .line 4728
    :pswitch_1
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    goto :goto_0

    .line 4729
    :pswitch_2
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    goto :goto_0

    .line 4730
    :pswitch_3
    const-string v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 4731
    :pswitch_4
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    goto :goto_0

    .line 4732
    :pswitch_5
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    goto :goto_0

    .line 4733
    :pswitch_6
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    goto :goto_0

    .line 4734
    :pswitch_7
    const-string v0, "UNSOL_ON_USSD"

    goto :goto_0

    .line 4735
    :pswitch_8
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    goto :goto_0

    .line 4736
    :pswitch_9
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    goto :goto_0

    .line 4737
    :pswitch_a
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    goto :goto_0

    .line 4738
    :pswitch_b
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    goto :goto_0

    .line 4739
    :pswitch_c
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    goto :goto_0

    .line 4740
    :pswitch_d
    const-string v0, "UNSOL_STK_SESSION_END"

    goto :goto_0

    .line 4741
    :pswitch_e
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    goto :goto_0

    .line 4742
    :pswitch_f
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    goto :goto_0

    .line 4743
    :pswitch_10
    const-string v0, "UNSOL_STK_CALL_SETUP"

    goto :goto_0

    .line 4744
    :pswitch_11
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 4745
    :pswitch_12
    const-string v0, "UNSOL_SIM_REFRESH"

    goto :goto_0

    .line 4746
    :pswitch_13
    const-string v0, "UNSOL_CALL_RING"

    goto :goto_0

    .line 4747
    :pswitch_14
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    goto :goto_0

    .line 4748
    :pswitch_15
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    goto :goto_0

    .line 4749
    :pswitch_16
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    goto :goto_0

    .line 4750
    :pswitch_17
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 4751
    :pswitch_18
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    goto :goto_0

    .line 4752
    :pswitch_19
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 4753
    :pswitch_1a
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    goto :goto_0

    .line 4754
    :pswitch_1b
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    goto :goto_0

    .line 4755
    :pswitch_1c
    const-string v0, "UNSOL_CDMA_INFO_REC"

    goto :goto_0

    .line 4756
    :pswitch_1d
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 4757
    :pswitch_1e
    const-string v0, "UNSOL_RINGBACK_TONE"

    goto :goto_0

    .line 4758
    :pswitch_1f
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    goto :goto_0

    .line 4759
    :pswitch_20
    const-string v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    goto :goto_0

    .line 4760
    :pswitch_21
    const-string v0, "UNSOL_CDMA_PRL_CHANGED"

    goto :goto_0

    .line 4761
    :pswitch_22
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 4762
    :pswitch_23
    const-string v0, "UNSOL_RIL_CONNECTED"

    goto :goto_0

    .line 4763
    :pswitch_24
    const-string v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    goto :goto_0

    .line 4764
    :pswitch_25
    const-string v0, "RIL_UNSOL_RESPONSE_SIM_TYPE"

    goto :goto_0

    .line 4766
    :pswitch_26
    const-string v0, "RIL_UNSOL_USIM_EXIT"

    goto :goto_0

    .line 4767
    :pswitch_27
    const-string v0, "RIL_UNSOL_USIM_RECORD_NOT_READY"

    goto :goto_0

    .line 4768
    :pswitch_28
    const-string v0, "RIL_UNSOL_USIM_RECORD_READY"

    goto :goto_0

    .line 4770
    :pswitch_29
    const-string v0, "RIL_UNSOL_INCOMING_MT_CALL"

    goto :goto_0

    .line 4771
    :pswitch_2a
    const-string v0, "UNSOL_CELL_INFO_LIST"

    goto :goto_0

    .line 4773
    :pswitch_2b
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    goto/16 :goto_0

    .line 4774
    :pswitch_2c
    const-string v0, "RIL_UNSOL_CALL_HOLD"

    goto/16 :goto_0

    .line 4775
    :pswitch_2d
    const-string v0, "RIL_UNSOL_PS_SERVICE_STATE_CHANGED"

    goto/16 :goto_0

    .line 4776
    :pswitch_2e
    const-string v0, "RIL_UNSOL_SIM_SMS_STORAGE_AVAILABLE"

    goto/16 :goto_0

    .line 4777
    :pswitch_2f
    const-string v0, "UNSOL_RESPONSE_MOVE_PS"

    goto/16 :goto_0

    .line 4778
    :pswitch_30
    const-string v0, "RIL_UNSOL_MODEM_POWER_ON_REGISTER_COMPLETE"

    goto/16 :goto_0

    .line 4779
    :pswitch_31
    const-string v0, "UNSOL_RESPONSE_CAMP_STATUS"

    goto/16 :goto_0

    .line 4727
    :pswitch_data_0
    .packed-switch 0x3e8
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
        :pswitch_2a
        :pswitch_2b
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_2e
        :pswitch_29
        :pswitch_26
        :pswitch_27
        :pswitch_2d
        :pswitch_2c
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method private responseUSIMExist(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4385
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 4387
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 4387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4390
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simstatus numInts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " response[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " response[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    return-object v2
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3604
    const/4 v0, 0x0

    return-object v0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 15
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 2977
    if-nez p2, :cond_0

    const-string v10, ""

    .line 3036
    .end local p2    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 2978
    .restart local p2    # "ret":Ljava/lang/Object;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2992
    move-object/from16 v0, p2

    instance-of v13, v0, [I

    if-eqz v13, :cond_2

    .line 2993
    check-cast p2, [I

    .end local p2    # "ret":Ljava/lang/Object;
    move-object/from16 v8, p2

    check-cast v8, [I

    .line 2994
    .local v8, "intArray":[I
    array-length v9, v8

    .line 2995
    .local v9, "length":I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "{"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2996
    .local v11, "sb":Ljava/lang/StringBuilder;
    if-lez v9, :cond_1

    .line 2997
    const/4 v5, 0x0

    .line 2998
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v13, v8, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2999
    :goto_1
    if-ge v6, v9, :cond_1

    .line 3000
    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget v14, v8, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 2985
    .end local v6    # "i":I
    .end local v8    # "intArray":[I
    .end local v9    # "length":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local p2    # "ret":Ljava/lang/Object;
    :sswitch_0
    const-string v10, ""

    goto :goto_0

    .line 3003
    .end local p2    # "ret":Ljava/lang/Object;
    .restart local v8    # "intArray":[I
    .restart local v9    # "length":I
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3005
    .local v10, "s":Ljava/lang/String;
    goto :goto_0

    .end local v8    # "intArray":[I
    .end local v9    # "length":I
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local p2    # "ret":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p2

    instance-of v13, v0, [Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 3006
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "ret":Ljava/lang/Object;
    move-object/from16 v12, p2

    check-cast v12, [Ljava/lang/String;

    .line 3007
    .local v12, "strings":[Ljava/lang/String;
    array-length v9, v12

    .line 3008
    .restart local v9    # "length":I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "{"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3009
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    if-lez v9, :cond_3

    .line 3010
    const/4 v5, 0x0

    .line 3011
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v13, v12, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    :goto_2
    if-ge v6, v9, :cond_3

    .line 3013
    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget-object v14, v12, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 3016
    .end local v6    # "i":I
    :cond_3
    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3018
    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_0

    .end local v9    # "length":I
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "strings":[Ljava/lang/String;
    .restart local p2    # "ret":Ljava/lang/Object;
    :cond_4
    const/16 v13, 0x9

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    move-object/from16 v1, p2

    .line 3019
    check-cast v1, Ljava/util/ArrayList;

    .line 3020
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3021
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DriverCall;

    .line 3022
    .local v4, "dc":Lcom/android/internal/telephony/DriverCall;
    const-string v13, "["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3024
    .end local v4    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3025
    .restart local v10    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v13, 0x4b

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    move-object/from16 v3, p2

    .line 3027
    check-cast v3, Ljava/util/ArrayList;

    .line 3028
    .local v3, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3029
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    .line 3030
    .local v2, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3032
    .end local v2    # "cell":Landroid/telephony/NeighboringCellInfo;
    :cond_7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3033
    .restart local v10    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 3034
    .end local v3    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 2978
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4785
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4786
    return-void
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4789
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    return-void
.end method

.method private send(Lcom/android/internal/telephony/lc/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/lc/RILRequest;

    .prologue
    const/4 v2, 0x1

    .line 2648
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 2649
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/lc/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2650
    invoke-virtual {p1}, Lcom/android/internal/telephony/lc/RILRequest;->release()V

    .line 2659
    :goto_0
    return-void

    .line 2654
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/lc/LCRIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2656
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/lc/LCRIL;->acquireWakeLock()V

    .line 2658
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2557
    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2558
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2559
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2564
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2565
    return-void

    .line 2559
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 2594
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 2595
    return-void
.end method

.method private translateStatus(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 1647
    and-int/lit8 v1, p1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 1659
    :goto_0
    :pswitch_0
    return v0

    .line 1651
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1653
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1655
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1647
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
    .line 4793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4794
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 4797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4798
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 4801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/lc/LCRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4802
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 4805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/lc/LCRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/lc/LCRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLogv(Ljava/lang/String;)V

    .line 4806
    return-void
.end method

.method private updatePSResControlEvent(Z)V
    .locals 7
    .param p1, "isScreenOn"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 401
    const/4 v0, 0x0

    .line 404
    .local v0, "isUpdateNeeded":Z
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePSResControlEvent, mNotReleasePsResListenerCounter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mNotReleasePsResListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mNotReleasePsResListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gtz v4, :cond_2

    if-nez p1, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSResControlToggle:Z

    if-nez v4, :cond_2

    .line 409
    iput-boolean v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSResControlToggle:Z

    .line 410
    const/4 v0, 0x1

    .line 417
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 418
    const/16 v4, 0x147

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v1

    .line 419
    .local v1, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v4, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v4, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-boolean v5, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSResControlToggle:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSResControlToggle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 427
    .end local v1    # "rr":Lcom/android/internal/telephony/lc/RILRequest;
    :cond_1
    return-void

    .line 411
    :cond_2
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSResControlToggle:Z

    if-eqz v4, :cond_0

    .line 413
    iput-boolean v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSResControlToggle:Z

    .line 414
    const/4 v0, 0x1

    goto :goto_0

    .restart local v1    # "rr":Lcom/android/internal/telephony/lc/RILRequest;
    :cond_3
    move v2, v3

    .line 420
    goto :goto_1
.end method

.method private updatePSStateChangeEvent(Z)V
    .locals 6
    .param p1, "isScreenOn"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 364
    const/4 v0, 0x0

    .line 369
    .local v0, "isUpdateNeeded":Z
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gtz v4, :cond_2

    if-nez p1, :cond_2

    .line 371
    iput-boolean v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeEventToggle:Z

    .line 372
    const/4 v0, 0x1

    .line 378
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 379
    const/16 v4, 0x144

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v1

    .line 380
    .local v1, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v4, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-object v4, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-boolean v5, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeEventToggle:Z

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeEventToggle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 388
    .end local v1    # "rr":Lcom/android/internal/telephony/lc/RILRequest;
    :cond_1
    return-void

    .line 373
    :cond_2
    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_0

    .line 375
    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeEventToggle:Z

    .line 376
    const/4 v0, 0x1

    goto :goto_0

    .restart local v1    # "rr":Lcom/android/internal/telephony/lc/RILRequest;
    :cond_4
    move v2, v3

    .line 381
    goto :goto_1
.end method


# virtual methods
.method public WriteIccCardRecord(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "num1"    # Ljava/lang/String;
    .param p3, "type1"    # I
    .param p4, "num2"    # Ljava/lang/String;
    .param p5, "type2"    # I
    .param p6, "num3"    # Ljava/lang/String;
    .param p7, "type3"    # I
    .param p8, "num4"    # Ljava/lang/String;
    .param p9, "type4"    # I
    .param p10, "name"    # Ljava/lang/String;
    .param p11, "dcs"    # I
    .param p12, "email"    # Ljava/lang/String;
    .param p13, "result"    # Landroid/os/Message;

    .prologue
    .line 865
    const/16 v2, 0x135

    move-object/from16 v0, p13

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v1

    .line 867
    .local v1, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 869
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 879
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p11}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 882
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 883
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1274
    const/16 v1, 0x28

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1277
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1279
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1280
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1824
    const/16 v1, 0x6a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1827
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1829
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1834
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1835
    return-void

    .line 1828
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
    .line 1808
    const/16 v1, 0x58

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1811
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1818
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1819
    return-void

    .line 1811
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
    .line 1792
    const/16 v1, 0x25

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1795
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1796
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1797
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1802
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1803
    return-void

    .line 1796
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2221
    const/16 v1, 0x1e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2224
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2227
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2228
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1039
    const/16 v1, 0x2c

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1041
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1043
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1045
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1046
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1049
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 992
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/lc/LCRIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 993
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1015
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/lc/LCRIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1016
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1022
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1024
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1027
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1029
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1034
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 999
    const/4 v1, 0x6

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1001
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1004
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1006
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1010
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1011
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1229
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1232
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1234
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1235
    return-void
.end method

.method public confirmCall(IZLandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "confirm"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1284
    const/16 v1, 0x136

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1287
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "confirm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1289
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1293
    return-void

    .line 1291
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1738
    const/16 v1, 0x29

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1741
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1743
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1748
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1749
    return-void
.end method

.method public decreaseNotReleasePsResListenerCounter()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    const-string v1, "decreaseNotReleasePsResListenerCounter, E:"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mNotReleasePsResListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 398
    return-void
.end method

.method public decreasePSStateChangeListenerCounter()V
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    const-string v1, "decreasePSStateChangeListenerCounter, E:"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 361
    :cond_0
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1594
    const/16 v1, 0x61

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1597
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1605
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1579
    const/16 v1, 0x40

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1582
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1590
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/lc/LCRIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1109
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1114
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1116
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1117
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    if-nez p3, :cond_0

    .line 1120
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1130
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1131
    return-void

    .line 1122
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

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
    .line 5085
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

    .line 5086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSenderThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSender:Lcom/android/internal/telephony/lc/LCRIL$RILSender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiverThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mReceiver:Lcom/android/internal/telephony/lc/LCRIL$RILReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 5094
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5095
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mWakeLockCount="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/internal/telephony/lc/LCRIL;->mWakeLockCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5096
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5097
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5098
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

    .line 5099
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5100
    iget-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/lc/RILRequest;

    .line 5101
    .local v2, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/lc/RILRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5099
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5096
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "rr":Lcom/android/internal/telephony/lc/RILRequest;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 5103
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

    .line 5104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mLastNITZTimeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lc/LCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5106
    return-void
.end method

.method public enablePsDomain()V
    .locals 3

    .prologue
    .line 5068
    const/16 v1, 0x14b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5070
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5072
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5073
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5001
    const/16 v1, 0x63

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5003
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5005
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5006
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1309
    const/16 v1, 0x48

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1312
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1314
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1315
    return-void
.end method

.method public getAdnStorageInfo(IILandroid/os/Message;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2202
    const/16 v1, 0x149

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2205
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2209
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2214
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2028
    const/16 v1, 0x30

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2032
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2034
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2035
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2093
    const/16 v1, 0x33

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2096
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2098
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2099
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4823
    const/16 v1, 0x5f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4825
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4827
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4828
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1887
    const/16 v1, 0x1f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1890
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1892
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1893
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1925
    const/16 v1, 0x13f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1928
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1931
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1915
    const/16 v1, 0x13e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1918
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1920
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1921
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4944
    const/16 v1, 0x5c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4946
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4947
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4888
    const/16 v1, 0x68

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4891
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4893
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4894
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 5024
    const/16 v1, 0x6d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5026
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5028
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5029
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1067
    const/16 v1, 0x9

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1069
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1071
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1072
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1083
    const/16 v1, 0x39

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1085
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1088
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1403
    const/16 v1, 0x15

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1406
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1408
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1409
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4813
    const/16 v1, 0x62

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4815
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4817
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4818
    return-void
.end method

.method public getGPBErrNoType(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1875
    const/16 v1, 0x145

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1878
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1880
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1881
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2503
    const/16 v1, 0x59

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2505
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2507
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2508
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1157
    const/16 v1, 0x26

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1159
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1161
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1162
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1167
    const/16 v1, 0x27

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1169
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1172
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1136
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1137
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1142
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1144
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1152
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 835
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 836
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 838
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 839
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 809
    const/16 v1, 0x70

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 812
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 814
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 815
    return-void
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    return v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1320
    const/16 v1, 0x12

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1323
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1326
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1344
    const/16 v1, 0x38

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1347
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1349
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1350
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->getLastDataCallFailCause(Landroid/os/Message;)V

    .line 1336
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1370
    const/16 v1, 0x36

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1373
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1376
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2421
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2424
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2426
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2427
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2016
    const/16 v1, 0x2d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2020
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2022
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2023
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1414
    const/16 v1, 0x16

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1417
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1419
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1420
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1077
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->getDataCallList(Landroid/os/Message;)V

    .line 1078
    return-void
.end method

.method public getPhoneBookOperationErrCode(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 888
    const/16 v1, 0x145

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 891
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 893
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 894
    return-void
.end method

.method public getPhonebookRecordInfo(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5205
    const/16 v1, 0x132

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5208
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5210
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5211
    return-void
.end method

.method public getPinRemainAttempt(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5247
    const/16 v1, 0x137

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5250
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5252
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5253
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2408
    const/16 v1, 0x4a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2411
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2413
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2414
    return-void
.end method

.method public getPreferredPLMNList(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5146
    const/16 v1, 0x12e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5150
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5152
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5153
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1251
    const/16 v1, 0x53

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1253
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1254
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1381
    const/16 v1, 0x13

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1384
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1386
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1387
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2449
    const/16 v1, 0x64

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2451
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2453
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2454
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 800
    const/16 v1, 0x6c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 802
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 805
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1392
    const/16 v1, 0x14

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1395
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1397
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1398
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2355
    const/16 v4, 0x47

    invoke-static {v4, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v1

    .line 2359
    .local v1, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2361
    new-array v0, v2, [I

    .line 2362
    .local v0, "param":[I
    if-eqz p1, :cond_0

    :goto_0
    aput v2, v0, v3

    .line 2363
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2364
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2365
    return-void

    :cond_0
    move v2, v3

    .line 2362
    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupConnection: gsmIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1180
    const/16 v1, 0xc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1182
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1185
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1189
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1205
    const/16 v1, 0xe

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1209
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1211
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1212
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1194
    const/16 v1, 0xd

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1197
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1199
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1200
    return-void
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
    .line 1841
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

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/lc/LCRIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1842
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
    .line 1849
    const/16 v1, 0x1c

    invoke-static {v1, p10}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1852
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1853
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1855
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1859
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1860
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1870
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1871
    return-void
.end method

.method public increaseNotReleasePsResListenerCounter()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    const-string v1, "increaseNotReleasePsResListenerCounter, E:"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mNotReleasePsResListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 393
    return-void
.end method

.method public increasePSStateChangeListenerCounter()V
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;

    const-string v1, "increasePSStateChangeListenerCounter, E:"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPSStateChangeListenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->updatePSStateChangeEvent(Z)V

    .line 352
    :cond_0
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2243
    const/16 v1, 0x3b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2246
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2249
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2251
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2253
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2257
    const/16 v1, 0x3c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2260
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2262
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2264
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2265
    return-void
.end method

.method public mbmsGetCellID(ILandroid/os/Message;)V
    .locals 3
    .param p1, "BDSType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5172
    const/16 v1, 0x142

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5175
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5176
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5181
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5182
    return-void
.end method

.method public mbmsSendAuthCmd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "rand"    # Ljava/lang/String;
    .param p2, "autn"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 5158
    const/16 v1, 0x141

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5161
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5162
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5163
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5169
    return-void
.end method

.method public mbmsUiccAuth(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "rand"    # Ljava/lang/String;
    .param p2, "autn"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 5185
    const/16 v1, 0x143

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5188
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5189
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5190
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5195
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5196
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    .line 2573
    iget-object v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2574
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->sendScreenState(Z)V

    .line 2575
    return-void
.end method

.method public playCallwaitingTone(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 5272
    const/16 v1, 0x133

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5276
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5278
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5280
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5281
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2296
    const/16 v1, 0x42

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2300
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2302
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2303
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2081
    const/16 v1, 0x37

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2084
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2086
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2087
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2062
    const/16 v1, 0x21

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2065
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2066
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2067
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2070
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2075
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2076
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1952
    const/16 v1, 0x23

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1955
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1956
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1961
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1962
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4841
    const/16 v1, 0x4f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4844
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4846
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4847
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2105
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/lc/LCRIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2106
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
    .line 2112
    const/16 v1, 0x2a

    invoke-static {v1, p5}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2114
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2119
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2122
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2124
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2125
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2127
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2128
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4901
    const/16 v1, 0x51

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4904
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4906
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4907
    return-void
.end method

.method public readIccCardRecord(IILandroid/os/Message;)V
    .locals 3
    .param p1, "indexMin"    # I
    .param p2, "indexMax"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 851
    const/16 v1, 0x134

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 853
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 855
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 860
    return-void
.end method

.method public readRecordNum(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 843
    const/16 v1, 0x12f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 845
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 848
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1298
    const/16 v1, 0x11

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1301
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1304
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2476
    const/16 v2, 0x66

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2477
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2478
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2483
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2484
    return-void

    .line 2478
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2491
    const/16 v1, 0x67

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2493
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2495
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2496
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5010
    const/16 v1, 0x69

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5012
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5016
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5017
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2233
    const/16 v1, 0x3a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2236
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2238
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2239
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1462
    const/16 v1, 0x55

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1464
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1466
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1467
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1472
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1473
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4932
    const/16 v1, 0x54

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4934
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4939
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4940
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1536
    const/16 v1, 0x57

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1539
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/lc/RILRequest;[B)V

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1543
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1544
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1425
    const/16 v1, 0x18

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1428
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1430
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1432
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1433
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2324
    const/16 v1, 0x45

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2327
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2329
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2330
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2331
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2338
    const/16 v1, 0x6b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2341
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2344
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2345
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2346
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1564
    const/16 v1, 0x71

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1566
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1568
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/lc/RILRequest;[B)V

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1574
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1575
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
    .line 1549
    const/16 v1, 0x71

    invoke-static {v1, p5}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1551
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v2, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1553
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/lc/LCRIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/lc/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1559
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1560
    return-void
.end method

.method public sendRefresh(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nRefMode"    # I
    .param p2, "nLength"    # I
    .param p3, "sRefreshEfList"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 5234
    const/16 v1, 0x130

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5237
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5239
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5240
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5241
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5242
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5243
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1484
    const/16 v1, 0x19

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1487
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/lc/LCRIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/lc/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1491
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1492
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2310
    const/16 v1, 0x46

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2313
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2315
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2316
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2317
    return-void
.end method

.method public sendUSSD(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "dcs"    # I
    .param p3, "ussdString"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2185
    const/16 v1, 0x1d

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2188
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2191
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2192
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2195
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2196
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2166
    const/16 v2, 0x1d

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v1

    .line 2170
    .local v1, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    const-string v0, "*******"

    .line 2172
    .local v0, "logUssdString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2176
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2178
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2179
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1259
    const/16 v1, 0x34

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1262
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1265
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1269
    return-void
.end method

.method public setAsMaster(ZZ)V
    .locals 7
    .param p1, "isMaster"    # Z
    .param p2, "restoreDefaultNetworkMode"    # Z

    .prologue
    const/16 v6, 0x65

    .line 5286
    if-eqz p1, :cond_1

    .line 5287
    const-string v2, "persist.radio.lc.master.card"

    const-string v3, "10"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5292
    .local v0, "masterType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5293
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/LCRIL;->getInstanceId()I

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "12"

    .line 5294
    .local v1, "newType":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5295
    const-string v2, "persist.radio.lc.master.card"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5296
    const-string v2, "ril.switch.master.card"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5299
    .end local v1    # "newType":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 5300
    iget-object v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5304
    const/4 v2, 0x0

    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/lc/LCRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 5307
    .end local v0    # "masterType":Ljava/lang/String;
    :cond_1
    return-void

    .line 5293
    .restart local v0    # "masterType":Ljava/lang/String;
    :cond_2
    const-string v1, "21"

    goto :goto_0

    .line 5300
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2275
    const/16 v1, 0x41

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2278
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2284
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2285
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1898
    const/16 v1, 0x20

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1902
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1909
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1910
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colpMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1935
    const/16 v1, 0x13d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1939
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1940
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1945
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1946
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
    .line 2041
    const/16 v1, 0x22

    invoke-static {v1, p6}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2044
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2046
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2047
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2049
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2055
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2056
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1967
    const/16 v1, 0x24

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1970
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1977
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1978
    return-void

    .line 1971
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

    .line 4986
    const/16 v2, 0x5e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4988
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4989
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4993
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4994
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 11
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4951
    const/16 v8, 0x5d

    invoke-static {v8, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v7

    .line 4954
    .local v7, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4956
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

    .line 4957
    .local v1, "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getToServiceCategory()I

    move-result v8

    if-gt v2, v8, :cond_0

    .line 4958
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v10

    invoke-direct {v8, v2, v2, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;-><init>(IIIZ)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4957
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4956
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4965
    .end local v1    # "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .line 4966
    .local v6, "rilConfigs":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    iget-object v8, v7, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    array-length v9, v6

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4967
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 4968
    iget-object v8, v7, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4969
    iget-object v8, v7, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4970
    iget-object v9, v7, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4967
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4970
    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 4974
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4976
    const/4 v2, 0x0

    :goto_4
    array-length v8, v6

    if-ge v2, v8, :cond_4

    .line 4977
    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4976
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4981
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4982
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4854
    const/16 v1, 0x4e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4857
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4858
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4863
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4864
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4871
    const/16 v1, 0x4d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4874
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4875
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4880
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4881
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 3
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellInfoListRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5037
    const/16 v1, 0x6e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5039
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5040
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5044
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5045
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 2

    .prologue
    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentPreferredNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSetPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2373
    iget v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSetPreferredNetworkType:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2374
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
    .line 2134
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/lc/LCRIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2135
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
    .line 2142
    const/16 v2, 0x2b

    invoke-static {v2, p6}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v1

    .line 2145
    .local v1, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2150
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2153
    if-eqz p2, :cond_0

    const-string v0, "1"

    .line 2154
    .local v0, "lockString":Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2155
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2156
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2157
    iget-object v2, v1, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2159
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2161
    return-void

    .line 2153
    .end local v0    # "lockString":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setFakeIPv4Addr(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "fakeAddr"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1091
    const/16 v1, 0x148

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1095
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fakeAddr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1101
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1102
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2544
    const/16 v2, 0x5b

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2546
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2547
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2551
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2552
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2515
    const/16 v3, 0x5a

    invoke-static {v3, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v2

    .line 2517
    .local v2, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    array-length v1, p1

    .line 2518
    .local v1, "numOfConfig":I
    iget-object v3, v2, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2521
    iget-object v3, v2, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2522
    iget-object v3, v2, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2523
    iget-object v3, v2, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2524
    iget-object v3, v2, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2525
    iget-object v4, v2, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2525
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2529
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2531
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2532
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2531
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2536
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2537
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
    .line 5049
    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5051
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    const-string v1, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5053
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5054
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5055
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5056
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5057
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5063
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5064
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2434
    const/16 v2, 0x4c

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2435
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2436
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2441
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2442
    return-void

    .line 2436
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

    .line 1355
    const/16 v2, 0x35

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1358
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1361
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1365
    return-void

    .line 1362
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1983
    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1987
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1989
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1990
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "OperatorAlphaLong"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1997
    const/16 v1, 0x2f

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2001
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2004
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2005
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2006
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2008
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2009
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 819
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 826
    iput-object v3, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    .line 828
    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 4832
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

    iget v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4833
    iput p1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPhoneType:I

    .line 4834
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2383
    iget v1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/MultiSimManager;->getPreferredDataSlotId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2384
    const-string v1, "ignore setPreferredNetworkType as not master."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2401
    :goto_0
    return-void

    .line 2388
    :cond_0
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2391
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2392
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2394
    iput p1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mSetPreferredNetworkType:I

    .line 2395
    iput p1, p0, Lcom/android/internal/telephony/lc/LCRIL;->mPreferredNetworkType:I

    .line 2397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2400
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    goto :goto_0
.end method

.method public setPreferredPLMNList(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "format"    # I
    .param p3, "oper"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 5120
    const/16 v1, 0x12d

    invoke-static {v1, p7}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5123
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5124
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5125
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5126
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5127
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5128
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5139
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5140
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1240
    const/16 v2, 0x52

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1243
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1247
    return-void

    .line 1244
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1761
    const/16 v2, 0x17

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1763
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1771
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1772
    return-void

    .line 1764
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1767
    :cond_1
    const-string v1, " off"

    goto :goto_1
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2461
    const/16 v1, 0x65

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 2463
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 2468
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 2469
    return-void
.end method

.method public setStandbyAudioPlaying(ILandroid/os/Message;)V
    .locals 3
    .param p1, "linkID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5219
    const/16 v1, 0x140

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5221
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    const-string v1, "setStandbyAudioPlaying"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5225
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5226
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5228
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5229
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1777
    const/16 v2, 0x3e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1780
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    iget-object v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1786
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1787
    return-void

    .line 1781
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4914
    const/16 v1, 0x50

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 4917
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4918
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 4923
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 4924
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "isDefaultType"    # I
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 1667
    const/16 v1, 0x1b

    invoke-static {v1, p9}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1670
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1673
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1674
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1675
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1676
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1677
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1678
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1679
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

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

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1686
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1687
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "cid"    # I
    .param p9, "IPv4Addr"    # Ljava/lang/String;
    .param p10, "IPv6Addr"    # Ljava/lang/String;
    .param p11, "result"    # Landroid/os/Message;

    .prologue
    .line 1693
    const/4 v1, 0x0

    .line 1694
    .local v1, "argNum":I
    const/4 v2, 0x0

    .line 1695
    .local v2, "haveIPv4Addr":Z
    const/4 v3, 0x0

    .line 1697
    .local v3, "haveIPv6Addr":Z
    and-int/lit8 v5, p8, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 1698
    add-int/lit8 v1, v1, 0x1

    .line 1699
    const/4 v2, 0x1

    .line 1701
    :cond_0
    and-int/lit8 v5, p8, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 1702
    add-int/lit8 v1, v1, 0x1

    .line 1703
    const/4 v3, 0x1

    .line 1706
    :cond_1
    const/16 v5, 0x14a

    move-object/from16 v0, p11

    invoke-static {v5, v0}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v4

    .line 1709
    .local v4, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    add-int/lit8 v6, v1, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1712
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1713
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1714
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1715
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1716
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1717
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1718
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    if-eqz v2, :cond_2

    .line 1720
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1722
    :cond_2
    if-eqz v3, :cond_3

    .line 1723
    iget-object v5, v4, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1726
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1732
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1733
    return-void
.end method

.method public shutDownRadio(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5261
    const/16 v1, 0x131

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 5265
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 5268
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1438
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1441
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1443
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1445
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1446
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1451
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1454
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1456
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1457
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/lc/LCRIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 899
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/lc/LCRIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 948
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 954
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 956
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 959
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 964
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 965
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 905
    const/4 v1, 0x2

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 907
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 910
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 918
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 922
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/lc/LCRIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 923
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/lc/LCRIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 970
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 976
    const/4 v1, 0x5

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 978
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 981
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 983
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 987
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 988
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 929
    const/4 v1, 0x3

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 931
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 934
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 936
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 942
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 943
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1054
    const/16 v1, 0x8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1056
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1058
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1061
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1062
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1217
    const/16 v1, 0xf

    invoke-static {v1, p1}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1221
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/lc/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/lc/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/lc/LCRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 1223
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1224
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    .prologue
    .line 5080
    const-string v0, "testingEmergencyCall"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->riljLog(Ljava/lang/String;)V

    .line 5081
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5082
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1627
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->translateStatus(I)I

    move-result p1

    .line 1629
    const/16 v1, 0x60

    invoke-static {v1, p3}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1632
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1639
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1640
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1609
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lc/LCRIL;->translateStatus(I)I

    move-result p1

    .line 1611
    const/16 v1, 0x3f

    invoke-static {v1, p4}, Lcom/android/internal/telephony/lc/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/lc/RILRequest;

    move-result-object v0

    .line 1614
    .local v0, "rr":Lcom/android/internal/telephony/lc/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1616
    iget-object v1, v0, Lcom/android/internal/telephony/lc/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lc/LCRIL;->send(Lcom/android/internal/telephony/lc/RILRequest;)V

    .line 1623
    return-void
.end method
