.class Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;
.super Ljava/lang/Thread;
.source "DTMFTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/dtmf/DTMFTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFTaskMonitor"
.end annotation


# instance fields
.field volatile isRunning:Z

.field final synthetic this$0:Lmiui/telephony/dtmf/DTMFTaskManager;


# direct methods
.method private constructor <init>(Lmiui/telephony/dtmf/DTMFTaskManager;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->isRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/dtmf/DTMFTaskManager;Lmiui/telephony/dtmf/DTMFTaskManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/dtmf/DTMFTaskManager;
    .param p2, "x1"    # Lmiui/telephony/dtmf/DTMFTaskManager$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;-><init>(Lmiui/telephony/dtmf/DTMFTaskManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 83
    :goto_0
    iget-boolean v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->isRunning:Z

    if-eqz v5, :cond_1

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 85
    .local v0, "currentTime":J
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    iget-wide v5, v5, Lmiui/telephony/dtmf/DTMFTaskManager;->startTime:J

    sub-long v3, v0, v5

    .line 86
    .local v3, "span":J
    const-wide/32 v5, 0x15f90

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    iget-object v5, v5, Lmiui/telephony/dtmf/DTMFTaskManager;->mConn:Lcom/android/internal/telephony/Connection;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    iget-object v5, v5, Lmiui/telephony/dtmf/DTMFTaskManager;->mConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_3

    .line 87
    :cond_0
    iput-boolean v7, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->isRunning:Z

    .line 88
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    iget-object v5, v5, Lmiui/telephony/dtmf/DTMFTaskManager;->mConn:Lcom/android/internal/telephony/Connection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    iget-object v5, v5, Lmiui/telephony/dtmf/DTMFTaskManager;->mConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    const-string v5, "DTMFTask"

    const-string v6, "time out but not recognized, so fake recognized"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lmiui/telephony/dtmf/DTMFTaskManager;->onDTMFRecognized(Z)V

    .line 103
    .end local v0    # "currentTime":J
    .end local v3    # "span":J
    :cond_1
    :goto_1
    return-void

    .line 92
    .restart local v0    # "currentTime":J
    .restart local v3    # "span":J
    :cond_2
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFTaskMonitor;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-virtual {v5, v7}, Lmiui/telephony/dtmf/DTMFTaskManager;->onDTMFRecognized(Z)V

    .line 93
    const-string v5, "DTMFTask"

    const-string v6, "not recognized DTMF or hangup call"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :cond_3
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
