.class public Lmiui/telephony/dtmf/DTMFTaskManager;
.super Ljava/lang/Object;
.source "DTMFTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/dtmf/DTMFTaskManager$1;,
        Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTMFTask"


# instance fields
.field private mBlockQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lmiui/telephony/dtmf/DataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mCallTracker:Lcom/android/internal/telephony/CallTracker;

.field mConn:Lcom/android/internal/telephony/Connection;

.field private mDTMFTaskMonitor:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;

.field private mDc:Lcom/android/internal/telephony/DriverCall;

.field private mDtmfListener:Lmiui/telephony/dtmf/DTMFListenerTask;

.field private mDtmfRecognize:Lmiui/telephony/dtmf/DTMFRecognizeTask;

.field startTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 3
    .param p1, "callTracker"    # Lcom/android/internal/telephony/CallTracker;
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p3, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    .line 30
    new-instance v0, Lmiui/telephony/dtmf/DTMFListenerTask;

    const/4 v1, 0x3

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, v1, v2}, Lmiui/telephony/dtmf/DTMFListenerTask;-><init>(ILjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfListener:Lmiui/telephony/dtmf/DTMFListenerTask;

    .line 31
    new-instance v0, Lmiui/telephony/dtmf/DTMFRecognizeTask;

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, v1, p0}, Lmiui/telephony/dtmf/DTMFRecognizeTask;-><init>(Ljava/util/concurrent/BlockingQueue;Lmiui/telephony/dtmf/DTMFTaskManager;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfRecognize:Lmiui/telephony/dtmf/DTMFRecognizeTask;

    .line 32
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mCallTracker:Lcom/android/internal/telephony/CallTracker;

    .line 33
    iput-object p2, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConn:Lcom/android/internal/telephony/Connection;

    .line 34
    iput-object p3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDc:Lcom/android/internal/telephony/DriverCall;

    .line 35
    new-instance v0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;-><init>(Lmiui/telephony/dtmf/DTMFTaskManager;Lmiui/telephony/dtmf/DTMFTaskManager$1;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFTaskMonitor:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;

    .line 36
    return-void
.end method


# virtual methods
.method public onDTMFRecognized(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFTaskMonitor:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->isRunning:Z

    .line 64
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->stopDTMFRecognize()V

    .line 65
    const-string v0, "DTMFTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDTMFRecognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mCallTracker:Lcom/android/internal/telephony/CallTracker;

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConn:Lcom/android/internal/telephony/Connection;

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDc:Lcom/android/internal/telephony/DriverCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->onLiveTalkRealConnect(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 69
    :cond_0
    iput-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfRecognize:Lmiui/telephony/dtmf/DTMFRecognizeTask;

    .line 70
    iput-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfListener:Lmiui/telephony/dtmf/DTMFListenerTask;

    .line 71
    iput-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFTaskMonitor:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;

    .line 72
    iput-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mCallTracker:Lcom/android/internal/telephony/CallTracker;

    .line 73
    iput-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConn:Lcom/android/internal/telephony/Connection;

    .line 74
    iput-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDc:Lcom/android/internal/telephony/DriverCall;

    .line 75
    return-void
.end method

.method public startDTMFRecognize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfListener:Lmiui/telephony/dtmf/DTMFListenerTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/dtmf/DTMFListenerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfRecognize:Lmiui/telephony/dtmf/DTMFRecognizeTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/dtmf/DTMFRecognizeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->startTime:J

    .line 42
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFTaskMonitor:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->start()V

    .line 43
    return-void
.end method

.method public stopDTMFRecognize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfRecognize:Lmiui/telephony/dtmf/DTMFRecognizeTask;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lmiui/telephony/dtmf/DTMFRecognizeTask;->stopRecognize()V

    .line 49
    :cond_0
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfListener:Lmiui/telephony/dtmf/DTMFListenerTask;

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lmiui/telephony/dtmf/DTMFListenerTask;->stopRecord()V

    .line 52
    :cond_1
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    .line 54
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfListener:Lmiui/telephony/dtmf/DTMFListenerTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfListener:Lmiui/telephony/dtmf/DTMFListenerTask;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFListenerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 55
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfListener:Lmiui/telephony/dtmf/DTMFListenerTask;

    invoke-virtual {v0, v2}, Lmiui/telephony/dtmf/DTMFListenerTask;->cancel(Z)Z

    .line 57
    :cond_2
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfRecognize:Lmiui/telephony/dtmf/DTMFRecognizeTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfRecognize:Lmiui/telephony/dtmf/DTMFRecognizeTask;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFRecognizeTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 58
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDtmfRecognize:Lmiui/telephony/dtmf/DTMFRecognizeTask;

    invoke-virtual {v0, v2}, Lmiui/telephony/dtmf/DTMFRecognizeTask;->cancel(Z)Z

    .line 60
    :cond_3
    return-void
.end method
