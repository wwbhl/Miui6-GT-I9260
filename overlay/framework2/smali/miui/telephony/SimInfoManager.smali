.class public Lmiui/telephony/SimInfoManager;
.super Ljava/lang/Object;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;,
        Lmiui/telephony/SimInfoManager$SimInfoRecord;
    }
.end annotation


# static fields
.field static sSimInfoAdapter:Lmiui/telephony/ISimInfoAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getActiveSimCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getActiveSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getActiveSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "insertedSimInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "activeSimInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v2, :cond_1

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SimInfoManager$SimInfoRecord;

    .line 74
    .local v3, "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget-boolean v4, v3, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mIsActivte:Z

    if-eqz v4, :cond_0

    .line 75
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    return-object v0
.end method

.method public static getAllSimCount(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 185
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getSimInfoAdapter(Landroid/content/Context;)Lmiui/telephony/ISimInfoAdapter;

    move-result-object v0

    invoke-interface {v0}, Lmiui/telephony/ISimInfoAdapter;->getAllSimInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInsertedSimCount(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getSimInfoAdapter(Landroid/content/Context;)Lmiui/telephony/ISimInfoAdapter;

    move-result-object v0

    invoke-interface {v0}, Lmiui/telephony/ISimInfoAdapter;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSimIdBySlotId(Landroid/content/Context;I)J
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 197
    invoke-static {p0, p1}, Lmiui/telephony/SimInfoManager;->getSimInfoBySlotId(Landroid/content/Context;I)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 198
    .local v0, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 199
    const-wide/16 v1, -0x1

    .line 201
    :goto_0
    return-wide v1

    :cond_0
    iget-wide v1, v0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto :goto_0
.end method

.method private static declared-synchronized getSimInfoAdapter(Landroid/content/Context;)Lmiui/telephony/ISimInfoAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-class v1, Lmiui/telephony/SimInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/telephony/SimInfoManager;->sSimInfoAdapter:Lmiui/telephony/ISimInfoAdapter;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lmiui/telephony/SimInfoAdapter;

    invoke-direct {v0, p0}, Lmiui/telephony/SimInfoAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/telephony/SimInfoManager;->sSimInfoAdapter:Lmiui/telephony/ISimInfoAdapter;

    .line 46
    :cond_0
    sget-object v0, Lmiui/telephony/SimInfoManager;->sSimInfoAdapter:Lmiui/telephony/ISimInfoAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v1, :cond_1

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SimInfoManager$SimInfoRecord;

    .line 151
    .local v2, "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget-object v3, v2, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimInfoBySimInfoId(Landroid/content/Context;J)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simInfoId"    # J

    .prologue
    .line 110
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SimInfoManager$SimInfoRecord;

    .line 113
    .local v2, "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v3, v2, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 118
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimInfoBySlotId(Landroid/content/Context;I)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 129
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v1, :cond_1

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SimInfoManager$SimInfoRecord;

    .line 132
    .local v2, "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v2, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSlotId:I

    if-ne v3, p1, :cond_0

    .line 137
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSlotIdBySimInfoId(Landroid/content/Context;J)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simInfoId"    # J

    .prologue
    .line 189
    invoke-static {p0, p1, p2}, Lmiui/telephony/SimInfoManager;->getSimInfoBySimInfoId(Landroid/content/Context;J)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 190
    .local v0, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 191
    const/4 v1, -0x1

    .line 193
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSlotId:I

    goto :goto_0
.end method

.method public static registerChangeListener(Landroid/content/Context;Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;

    .prologue
    .line 209
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getSimInfoAdapter(Landroid/content/Context;)Lmiui/telephony/ISimInfoAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/telephony/ISimInfoAdapter;->registerChangeListener(Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V

    .line 210
    return-void
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "simInfoId"    # J

    .prologue
    .line 225
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getSimInfoAdapter(Landroid/content/Context;)Lmiui/telephony/ISimInfoAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiui/telephony/ISimInfoAdapter;->setDisplayName(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simInfoId"    # J

    .prologue
    .line 237
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getSimInfoAdapter(Landroid/content/Context;)Lmiui/telephony/ISimInfoAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiui/telephony/ISimInfoAdapter;->setNumber(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static unregisterChangeListener(Landroid/content/Context;Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;

    .prologue
    .line 213
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getSimInfoAdapter(Landroid/content/Context;)Lmiui/telephony/ISimInfoAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/telephony/ISimInfoAdapter;->unregisterChangeListener(Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V

    .line 214
    return-void
.end method
