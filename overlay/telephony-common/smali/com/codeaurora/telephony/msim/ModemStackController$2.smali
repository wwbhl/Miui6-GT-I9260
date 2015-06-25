.class Lcom/codeaurora/telephony/msim/ModemStackController$2;
.super Ljava/lang/Object;
.source "ModemStackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeaurora/telephony/msim/ModemStackController;->deactivateAllSubscriptions()V
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
    .line 645
    iput-object p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController$2;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 648
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$2;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->forceNetworkSelectionModeAuto()V
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$200(Lcom/codeaurora/telephony/msim/ModemStackController;)V

    .line 649
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$2;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # setter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivedSubCount:I
    invoke-static {v3, v6}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$302(Lcom/codeaurora/telephony/msim/ModemStackController;I)I

    .line 650
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$2;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    const/4 v4, 0x1

    # setter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivateAllSubscriptionFlag:Z
    invoke-static {v3, v4}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$402(Lcom/codeaurora/telephony/msim/ModemStackController;Z)Z

    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 652
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$2;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # getter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$500(Lcom/codeaurora/telephony/msim/ModemStackController;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, v0

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$600(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/PhoneBase;->setIccCardActivate(Z)Z

    move-result v2

    .line 653
    .local v2, "success":Z
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$2;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # getter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$500(Lcom/codeaurora/telephony/msim/ModemStackController;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 654
    const/4 v2, 0x1

    .line 656
    :cond_0
    if-nez v2, :cond_1

    .line 658
    const-string v3, "ModemStackController"

    const-string v4, "deactivateAllSubscriptions try again"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$2;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # getter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$500(Lcom/codeaurora/telephony/msim/ModemStackController;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, v0

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$600(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/PhoneBase;->setIccCardActivate(Z)Z

    move-result v2

    .line 661
    :cond_1
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController$2;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/codeaurora/telephony/msim/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 662
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 663
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "success":Z
    :cond_2
    return-void
.end method
