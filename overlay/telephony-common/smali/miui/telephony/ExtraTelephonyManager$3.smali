.class final Lmiui/telephony/ExtraTelephonyManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ExtraTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/ExtraTelephonyManager;->waitAndGetImsi(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;


# direct methods
.method constructor <init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lmiui/telephony/ExtraTelephonyManager$3;->val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 288
    const-string v1, "IMSI"

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 292
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lmiui/telephony/ExtraTelephonyManager$3;->val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 294
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method
