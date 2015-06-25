.class Lcom/android/internal/telephony/lc/LCRIL$1;
.super Landroid/content/BroadcastReceiver;
.source "LCRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lc/LCRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lc/LCRIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lc/LCRIL;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # invokes: Lcom/android/internal/telephony/lc/LCRIL;->sendScreenState(Z)V
    invoke-static {v0, v3}, Lcom/android/internal/telephony/lc/LCRIL;->access$000(Lcom/android/internal/telephony/lc/LCRIL;Z)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # getter for: Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/lc/LCRIL;->access$100(Lcom/android/internal/telephony/lc/LCRIL;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on:toggle of protocol test is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persist.sys.install.service"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    iget v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    if-nez v0, :cond_0

    const-string v0, "persist.sys.install.service"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # invokes: Lcom/android/internal/telephony/lc/LCRIL;->updatePSResControlEvent(Z)V
    invoke-static {v0, v3}, Lcom/android/internal/telephony/lc/LCRIL;->access$200(Lcom/android/internal/telephony/lc/LCRIL;Z)V

    .line 322
    :cond_0
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # invokes: Lcom/android/internal/telephony/lc/LCRIL;->updatePSStateChangeEvent(Z)V
    invoke-static {v0, v3}, Lcom/android/internal/telephony/lc/LCRIL;->access$300(Lcom/android/internal/telephony/lc/LCRIL;Z)V

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # invokes: Lcom/android/internal/telephony/lc/LCRIL;->sendScreenState(Z)V
    invoke-static {v0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->access$000(Lcom/android/internal/telephony/lc/LCRIL;Z)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # getter for: Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/lc/LCRIL;->access$100(Lcom/android/internal/telephony/lc/LCRIL;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen off:toggle of protocol test is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persist.sys.install.service"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    iget v0, v0, Lcom/android/internal/telephony/lc/LCRIL;->mLinkId:I

    if-nez v0, :cond_3

    const-string v0, "persist.sys.install.service"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # invokes: Lcom/android/internal/telephony/lc/LCRIL;->updatePSResControlEvent(Z)V
    invoke-static {v0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->access$200(Lcom/android/internal/telephony/lc/LCRIL;Z)V

    .line 334
    :cond_3
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # invokes: Lcom/android/internal/telephony/lc/LCRIL;->updatePSStateChangeEvent(Z)V
    invoke-static {v0, v4}, Lcom/android/internal/telephony/lc/LCRIL;->access$300(Lcom/android/internal/telephony/lc/LCRIL;Z)V

    goto :goto_0

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCRIL$1;->this$0:Lcom/android/internal/telephony/lc/LCRIL;

    # getter for: Lcom/android/internal/telephony/lc/LCRIL;->RILJ_LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/lc/LCRIL;->access$100(Lcom/android/internal/telephony/lc/LCRIL;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL received unexpected Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
