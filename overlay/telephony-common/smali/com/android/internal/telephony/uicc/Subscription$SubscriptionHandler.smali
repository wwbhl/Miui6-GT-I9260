.class Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;
.super Landroid/os/Handler;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/Subscription;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/Subscription;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;->this$0:Lcom/android/internal/telephony/uicc/Subscription;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;->this$0:Lcom/android/internal/telephony/uicc/Subscription;

    const-string v1, "EVENT_ICC_CHANGED"

    # invokes: Lcom/android/internal/telephony/uicc/Subscription;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/Subscription;->access$000(Lcom/android/internal/telephony/uicc/Subscription;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;->this$0:Lcom/android/internal/telephony/uicc/Subscription;

    # invokes: Lcom/android/internal/telephony/uicc/Subscription;->handleIccChanged()V
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/Subscription;->access$100(Lcom/android/internal/telephony/uicc/Subscription;)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;->this$0:Lcom/android/internal/telephony/uicc/Subscription;

    const-string v1, "EVENT_GET_ICCID_DONE"

    # invokes: Lcom/android/internal/telephony/uicc/Subscription;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/Subscription;->access$000(Lcom/android/internal/telephony/uicc/Subscription;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;->this$0:Lcom/android/internal/telephony/uicc/Subscription;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/internal/telephony/uicc/Subscription;->handleGetIccIdDone(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/uicc/Subscription;->access$200(Lcom/android/internal/telephony/uicc/Subscription;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
