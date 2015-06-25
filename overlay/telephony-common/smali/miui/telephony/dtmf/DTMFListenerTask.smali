.class public Lmiui/telephony/dtmf/DTMFListenerTask;
.super Landroid/os/AsyncTask;
.source "DTMFListenerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTMFListenerTask"

.field private static final audioEncoding:I = 0x2

.field private static final bucketSize:I = 0x4

.field private static final channelConfiguration:I = 0x2

.field private static final frequency:I = 0x1f40

.field private static mIsRecord:Z


# instance fields
.field private mAudioSource:I

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


# direct methods
.method public constructor <init>(ILjava/util/concurrent/BlockingQueue;)V
    .locals 0
    .param p1, "audioSource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lmiui/telephony/dtmf/DataBlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lmiui/telephony/dtmf/DataBlock;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput p1, p0, Lmiui/telephony/dtmf/DTMFListenerTask;->mAudioSource:I

    .line 25
    iput-object p2, p0, Lmiui/telephony/dtmf/DTMFListenerTask;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    .line 26
    return-void
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lmiui/telephony/dtmf/DTMFListenerTask;->mIsRecord:Z

    return v0
.end method

.method public static stopRecord()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/telephony/dtmf/DTMFListenerTask;->mIsRecord:Z

    .line 76
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/dtmf/DTMFListenerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/16 v2, 0x1f40

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x2

    .line 30
    invoke-static {v2, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 31
    .local v5, "bufferSize":I
    const-string v1, "DTMFListenerTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "record started, buffer size:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " mAudioSource:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, p0, Lmiui/telephony/dtmf/DTMFListenerTask;->mAudioSource:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/telephony/dtmf/DTMFListenerTask;->mAudioSource:I

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 33
    .local v0, "mAudioRecord":Landroid/media/AudioRecord;
    const-string v1, "DTMFListenerTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioRecord state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sput-boolean v13, Lmiui/telephony/dtmf/DTMFListenerTask;->mIsRecord:Z

    .line 36
    :try_start_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 37
    .local v6, "buffer":[B
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 38
    const/4 v8, 0x0

    .line 39
    .local v8, "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    const/4 v10, 0x0

    .line 40
    .local v10, "readCount":I
    :goto_0
    sget-boolean v1, Lmiui/telephony/dtmf/DTMFListenerTask;->mIsRecord:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFListenerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v7

    .line 42
    .local v7, "bufferReadSize":I
    if-gez v7, :cond_1

    .line 43
    const-string v1, "DTMFListenerTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio read error, bufferReadSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v6    # "buffer":[B
    .end local v7    # "bufferReadSize":I
    .end local v8    # "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    .end local v10    # "readCount":I
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 65
    const-string v1, "DTMFListenerTask"

    const-string v2, "AudioRecord stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput-boolean v12, Lmiui/telephony/dtmf/DTMFListenerTask;->mIsRecord:Z

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 46
    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferReadSize":I
    .restart local v8    # "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    .restart local v10    # "readCount":I
    :cond_1
    :try_start_1
    rem-int/lit8 v1, v10, 0x4

    if-nez v1, :cond_4

    .line 47
    if-le v10, v13, :cond_2

    .line 48
    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFListenerTask;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v8}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 50
    :cond_2
    new-instance v8, Lmiui/telephony/dtmf/DataBlock;

    .end local v8    # "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    const/4 v1, 0x4

    invoke-direct {v8, v5, v1}, Lmiui/telephony/dtmf/DataBlock;-><init>(II)V

    .line 51
    .restart local v8    # "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    const/4 v1, 0x0

    invoke-virtual {v8, v6, v1}, Lmiui/telephony/dtmf/DataBlock;->put([BI)V

    .line 58
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 59
    goto :goto_0

    .line 53
    :cond_4
    if-eqz v8, :cond_3

    .line 54
    rem-int/lit8 v1, v10, 0x4

    invoke-virtual {v8, v6, v1}, Lmiui/telephony/dtmf/DataBlock;->put([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 60
    .end local v6    # "buffer":[B
    .end local v7    # "bufferReadSize":I
    .end local v8    # "dataBlock":Lmiui/telephony/dtmf/DataBlock;
    .end local v10    # "readCount":I
    :catch_0
    move-exception v9

    .line 61
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 63
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    throw v1
.end method
