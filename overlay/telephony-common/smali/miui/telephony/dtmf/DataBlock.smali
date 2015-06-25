.class public Lmiui/telephony/dtmf/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private block:[B

.field private bucketSize:I

.field private mBlockSize:I

.field private validByteCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lmiui/telephony/dtmf/DataBlock;->validByteCount:I

    .line 7
    iput v0, p0, Lmiui/telephony/dtmf/DataBlock;->mBlockSize:I

    .line 8
    iput v0, p0, Lmiui/telephony/dtmf/DataBlock;->bucketSize:I

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "bucketSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lmiui/telephony/dtmf/DataBlock;->validByteCount:I

    .line 7
    iput v0, p0, Lmiui/telephony/dtmf/DataBlock;->mBlockSize:I

    .line 8
    iput v0, p0, Lmiui/telephony/dtmf/DataBlock;->bucketSize:I

    .line 22
    mul-int v0, p2, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/telephony/dtmf/DataBlock;->block:[B

    .line 23
    iput p2, p0, Lmiui/telephony/dtmf/DataBlock;->bucketSize:I

    .line 25
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "blockSize"    # I
    .param p3, "bufferReadSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v1, p0, Lmiui/telephony/dtmf/DataBlock;->validByteCount:I

    .line 7
    iput v1, p0, Lmiui/telephony/dtmf/DataBlock;->mBlockSize:I

    .line 8
    iput v1, p0, Lmiui/telephony/dtmf/DataBlock;->bucketSize:I

    .line 11
    new-array v1, p2, [B

    iput-object v1, p0, Lmiui/telephony/dtmf/DataBlock;->block:[B

    .line 12
    iput p2, p0, Lmiui/telephony/dtmf/DataBlock;->mBlockSize:I

    .line 13
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 14
    iget-object v1, p0, Lmiui/telephony/dtmf/DataBlock;->block:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 15
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    .line 16
    iget v1, p0, Lmiui/telephony/dtmf/DataBlock;->validByteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/telephony/dtmf/DataBlock;->validByteCount:I

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method


# virtual methods
.method public getBlock()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/telephony/dtmf/DataBlock;->block:[B

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lmiui/telephony/dtmf/DataBlock;->validByteCount:I

    iget v1, p0, Lmiui/telephony/dtmf/DataBlock;->mBlockSize:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put([BI)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "bucketIndex"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/telephony/dtmf/DataBlock;->block:[B

    array-length v2, p1

    mul-int/2addr v2, p2

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    return-void
.end method

.method public setBlock([B)V
    .locals 0
    .param p1, "block"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lmiui/telephony/dtmf/DataBlock;->block:[B

    .line 40
    return-void
.end method
