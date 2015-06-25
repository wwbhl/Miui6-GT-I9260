.class Lcom/codeaurora/telephony/msim/ModemStackController$3;
.super Ljava/lang/Object;
.source "ModemStackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeaurora/telephony/msim/ModemStackController;->activateAllSubscriptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeaurora/telephony/msim/ModemStackController;


# direct methods
.method constructor <init>(Lcom/codeaurora/telephony/msim/ModemStackController;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 679
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 680
    const/4 v2, 0x0

    .line 681
    .local v2, "reActivateCount":I
    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 682
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # getter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$500(Lcom/codeaurora/telephony/msim/ModemStackController;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, v1

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$600(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setIccCardActivate(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 679
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    :cond_1
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activate icccard error on:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reActivateCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$700(Lcom/codeaurora/telephony/msim/ModemStackController;Ljava/lang/String;)V

    .line 686
    add-int/lit8 v2, v2, 0x1

    .line 687
    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 696
    .end local v2    # "reActivateCount":I
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateAllSubscriptions error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$700(Lcom/codeaurora/telephony/msim/ModemStackController;Ljava/lang/String;)V

    .line 698
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # getter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mSubReactived:I
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$800(Lcom/codeaurora/telephony/msim/ModemStackController;)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 699
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    const/16 v4, 0x64

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendEmptyMessageDelayed(IJ)Z

    .line 701
    :cond_2
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # operator++ for: Lcom/codeaurora/telephony/msim/ModemStackController;->mSubReactived:I
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$808(Lcom/codeaurora/telephony/msim/ModemStackController;)I

    .line 703
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 691
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # getter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$500(Lcom/codeaurora/telephony/msim/ModemStackController;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/MultiSimManager;->getPreferredDataSlotId()I

    move-result v4

    aget-object v3, v3, v4

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$600(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setDataEnabled(ZZ)V

    .line 693
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    const/4 v4, 0x0

    # setter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivateAllSubscriptionFlag:Z
    invoke-static {v3, v4}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$402(Lcom/codeaurora/telephony/msim/ModemStackController;Z)Z

    .line 694
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    const/4 v4, 0x0

    # setter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mSubReactived:I
    invoke-static {v3, v4}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$802(Lcom/codeaurora/telephony/msim/ModemStackController;I)I

    .line 695
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$3;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->sendBroadcastForSimActived()V
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$900(Lcom/codeaurora/telephony/msim/ModemStackController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
