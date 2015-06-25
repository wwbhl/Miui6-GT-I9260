.class Lmiui/telephony/SimInfoAdapter$1;
.super Landroid/database/ContentObserver;
.source "SimInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SimInfoAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SimInfoAdapter;


# direct methods
.method constructor <init>(Lmiui/telephony/SimInfoAdapter;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 44
    iput-object p1, p0, Lmiui/telephony/SimInfoAdapter$1;->this$0:Lmiui/telephony/SimInfoAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 47
    new-instance v0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;

    iget-object v1, p0, Lmiui/telephony/SimInfoAdapter$1;->this$0:Lmiui/telephony/SimInfoAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;-><init>(Lmiui/telephony/SimInfoAdapter;Lmiui/telephony/SimInfoAdapter$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method
