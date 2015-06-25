.class public Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;
.super Ljava/lang/Object;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeaurora/telephony/msim/ModemStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModemCapabilityInfo"
.end annotation


# instance fields
.field private mStackId:I

.field private mSupportedRatBitMask:I

.field final synthetic this$0:Lcom/codeaurora/telephony/msim/ModemStackController;


# direct methods
.method public constructor <init>(Lcom/codeaurora/telephony/msim/ModemStackController;II)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "supportedRatBitMask"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p2, p0, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->mStackId:I

    .line 95
    iput p3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->mSupportedRatBitMask:I

    .line 96
    return-void
.end method


# virtual methods
.method public getStackId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->mStackId:I

    return v0
.end method

.method public getSupportedRatBitMask()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->mSupportedRatBitMask:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[stack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SuppRatBitMask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->mSupportedRatBitMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
