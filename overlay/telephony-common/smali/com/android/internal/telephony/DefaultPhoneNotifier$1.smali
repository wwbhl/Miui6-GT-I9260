.class Lcom/android/internal/telephony/DefaultPhoneNotifier$1;
.super Landroid/os/Handler;
.source "DefaultPhoneNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DefaultPhoneNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    # invokes: Lcom/android/internal/telephony/DefaultPhoneNotifier;->processNotifyCallState(ILcom/android/internal/telephony/PhoneConstants$State;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$000(Lcom/android/internal/telephony/DefaultPhoneNotifier;ILcom/android/internal/telephony/PhoneConstants$State;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
