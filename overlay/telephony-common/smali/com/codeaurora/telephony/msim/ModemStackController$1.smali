.class Lcom/codeaurora/telephony/msim/ModemStackController$1;
.super Landroid/content/BroadcastReceiver;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeaurora/telephony/msim/ModemStackController;
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
    .line 164
    iput-object p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController$1;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 167
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "phoneinECMState"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController$1;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    const-string v1, "Device is in ECBM Mode"

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$000(Lcom/codeaurora/telephony/msim/ModemStackController;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController$1;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    const/4 v1, 0x1

    # setter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mIsPhoneInEcbmMode:Z
    invoke-static {v0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$102(Lcom/codeaurora/telephony/msim/ModemStackController;Z)Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController$1;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    const-string v1, "Device is out of ECBM Mode"

    # invokes: Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$000(Lcom/codeaurora/telephony/msim/ModemStackController;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController$1;->this$0:Lcom/codeaurora/telephony/msim/ModemStackController;

    # setter for: Lcom/codeaurora/telephony/msim/ModemStackController;->mIsPhoneInEcbmMode:Z
    invoke-static {v0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->access$102(Lcom/codeaurora/telephony/msim/ModemStackController;Z)Z

    goto :goto_0
.end method
