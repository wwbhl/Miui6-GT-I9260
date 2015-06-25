.class public interface abstract Lmiui/telephony/ISimInfoAdapter;
.super Ljava/lang/Object;
.source "ISimInfoAdapter.java"


# virtual methods
.method public abstract getAllSimInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInsertedSimInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerChangeListener(Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V
.end method

.method public abstract setDisplayName(Ljava/lang/String;J)I
.end method

.method public abstract setNumber(Ljava/lang/String;J)I
.end method

.method public abstract unregisterChangeListener(Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V
.end method
