.class Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;
.super Landroid/os/AsyncTask;
.source "SimInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SimInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSimInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SimInfoAdapter;


# direct methods
.method private constructor <init>(Lmiui/telephony/SimInfoAdapter;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/SimInfoAdapter;Lmiui/telephony/SimInfoAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/SimInfoAdapter;
    .param p2, "x1"    # Lmiui/telephony/SimInfoAdapter$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;-><init>(Lmiui/telephony/SimInfoAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 220
    iget-object v0, p0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoAdapter;

    iget-object v1, p0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoAdapter;

    iget-object v2, p0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoAdapter;

    # getter for: Lmiui/telephony/SimInfoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/telephony/SimInfoAdapter;->access$200(Lmiui/telephony/SimInfoAdapter;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lmiui/telephony/SimInfoAdapter;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v1, v2}, Lmiui/telephony/SimInfoAdapter;->access$300(Lmiui/telephony/SimInfoAdapter;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    # setter for: Lmiui/telephony/SimInfoAdapter;->mInsertedSimInfoList:Ljava/util/List;
    invoke-static {v0, v1}, Lmiui/telephony/SimInfoAdapter;->access$102(Lmiui/telephony/SimInfoAdapter;Ljava/util/List;)Ljava/util/List;

    .line 221
    iget-object v0, p0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoAdapter;

    iget-object v1, p0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoAdapter;

    iget-object v2, p0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoAdapter;

    # getter for: Lmiui/telephony/SimInfoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/telephony/SimInfoAdapter;->access$200(Lmiui/telephony/SimInfoAdapter;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lmiui/telephony/SimInfoAdapter;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v1, v2}, Lmiui/telephony/SimInfoAdapter;->access$500(Lmiui/telephony/SimInfoAdapter;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    # setter for: Lmiui/telephony/SimInfoAdapter;->mAllSimInfoList:Ljava/util/List;
    invoke-static {v0, v1}, Lmiui/telephony/SimInfoAdapter;->access$402(Lmiui/telephony/SimInfoAdapter;Ljava/util/List;)Ljava/util/List;

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 216
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 227
    sget-object v3, Lmiui/telephony/SimInfoAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v2, p0, Lmiui/telephony/SimInfoAdapter$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoAdapter;

    # getter for: Lmiui/telephony/SimInfoAdapter;->mChangeListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lmiui/telephony/SimInfoAdapter;->access$600(Lmiui/telephony/SimInfoAdapter;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;

    .line 229
    .local v1, "listener":Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;
    invoke-interface {v1}, Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;->onChange()V

    goto :goto_0

    .line 231
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    return-void
.end method
