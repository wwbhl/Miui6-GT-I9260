.class public Lmiui/telephony/dtmf/DTMFRecognizeTask;
.super Landroid/os/AsyncTask;
.source "DTMFRecognizeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DtmfRecognize"

.field private static final audioEncoding:I = 0x10

.field private static final isSigned:Z

.field private static isStart:Z


# instance fields
.field private mBlockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lmiui/telephony/dtmf/DataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

.field private mHighFrequency:F

.field private mLowFrequency:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->isStart:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lmiui/telephony/dtmf/DTMFTaskManager;)V
    .locals 1
    .param p2, "DTMFTaskManager"    # Lmiui/telephony/dtmf/DTMFTaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lmiui/telephony/dtmf/DataBlock;",
            ">;",
            "Lmiui/telephony/dtmf/DTMFTaskManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lmiui/telephony/dtmf/DataBlock;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 23
    iput-object p2, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    .line 24
    invoke-static {}, Lmiui/telephony/dtmf/DTMFUtil;->getTargetLowFrequency()F

    move-result v0

    iput v0, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mLowFrequency:F

    .line 25
    invoke-static {}, Lmiui/telephony/dtmf/DTMFUtil;->getTargetHighFrequency()F

    move-result v0

    iput v0, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mHighFrequency:F

    .line 26
    return-void
.end method

.method public static isRecognize()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->isStart:Z

    return v0
.end method

.method public static stopRecognize()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->isStart:Z

    .line 76
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 30
    sput-boolean v4, Lmiui/telephony/dtmf/DTMFRecognizeTask;->isStart:Z

    .line 31
    :cond_0
    :goto_0
    sget-boolean v4, Lmiui/telephony/dtmf/DTMFRecognizeTask;->isStart:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFRecognizeTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 33
    :try_start_0
    iget-object v4, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/dtmf/DataBlock;

    .line 34
    .local v0, "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    const/4 v4, 0x2

    new-array v1, v4, [F

    .line 35
    .local v1, "detectedDual":[F
    new-instance v2, Lmiui/telephony/dtmf/DTMFUtil;

    invoke-direct {v2}, Lmiui/telephony/dtmf/DTMFUtil;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .local v2, "dtmf":Lmiui/telephony/dtmf/DTMFUtil;
    :try_start_1
    invoke-virtual {v0}, Lmiui/telephony/dtmf/DataBlock;->getBlock()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {v0}, Lmiui/telephony/dtmf/DataBlock;->getBlock()[B

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lmiui/telephony/dtmf/DTMFUtil;->parseFrequency([BIZ)[F
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 43
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    array-length v4, v1

    if-ne v4, v9, :cond_0

    .line 46
    const/4 v4, 0x0

    aget v4, v1, v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    const/4 v4, 0x1

    aget v4, v1, v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    .line 47
    const-string v4, "DtmfRecognize"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "final frequencies:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    const/4 v4, 0x0

    aget v4, v1, v4

    iget v5, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mLowFrequency:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const/4 v4, 0x1

    aget v4, v1, v4

    iget v5, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mHighFrequency:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 51
    const-string v4, "DtmfRecognize"

    const-string v5, "successfully detected dtmf"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v4, 0x0

    sput-boolean v4, Lmiui/telephony/dtmf/DTMFRecognizeTask;->isStart:Z

    .line 53
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 61
    .end local v0    # "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    .end local v1    # "detectedDual":[F
    .end local v2    # "dtmf":Lmiui/telephony/dtmf/DTMFUtil;
    :goto_2
    return-object v4

    .line 40
    .restart local v0    # "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    .restart local v1    # "detectedDual":[F
    .restart local v2    # "dtmf":Lmiui/telephony/dtmf/DTMFUtil;
    :catch_0
    move-exception v3

    .line 41
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 56
    .end local v0    # "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    .end local v1    # "detectedDual":[F
    .end local v2    # "dtmf":Lmiui/telephony/dtmf/DTMFUtil;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 60
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v4, "DtmfRecognize"

    const-string v5, "dtmf recognize finished"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/dtmf/DTMFRecognizeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/telephony/dtmf/DTMFTaskManager;->onDTMFRecognized(Z)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFRecognizeTask;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    .line 68
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/dtmf/DTMFRecognizeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
