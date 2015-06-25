.class Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;
.super Landroid/os/Handler;
.source "QCSimActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/qc/QCSimActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimActivatorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/qc/QCSimActivator;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/qc/QCSimActivator;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;->this$0:Lcom/android/internal/telephony/qc/QCSimActivator;

    .line 75
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;->this$0:Lcom/android/internal/telephony/qc/QCSimActivator;

    const-string v1, "handleMessage EVENT_SET_UICC_SUBSCRIPTION"

    # invokes: Lcom/android/internal/telephony/qc/QCSimActivator;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/qc/QCSimActivator;->access$000(Lcom/android/internal/telephony/qc/QCSimActivator;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;->this$0:Lcom/android/internal/telephony/qc/QCSimActivator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    # invokes: Lcom/android/internal/telephony/qc/QCSimActivator;->setSubscriptionStatus(Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/qc/QCSimActivator;->access$100(Lcom/android/internal/telephony/qc/QCSimActivator;Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;->this$0:Lcom/android/internal/telephony/qc/QCSimActivator;

    const-string v1, "handleMessage EVENT_SET_UICC_SUBSCRIPTION_DONE"

    # invokes: Lcom/android/internal/telephony/qc/QCSimActivator;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/qc/QCSimActivator;->access$000(Lcom/android/internal/telephony/qc/QCSimActivator;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;->this$0:Lcom/android/internal/telephony/qc/QCSimActivator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/internal/telephony/qc/QCSimActivator;->handleSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/qc/QCSimActivator;->access$200(Lcom/android/internal/telephony/qc/QCSimActivator;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
