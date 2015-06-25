.class public Lcom/android/internal/telephony/RILFactory;
.super Ljava/lang/Object;
.source "RILFactory.java"


# static fields
.field private static final FEATURE_VENDOR_KEY:Ljava/lang/String; = "vendor"

.field private static final FEATURE_VENDOR_LEADCORE:Ljava/lang/String; = "leadcore"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLeadcore()Z
    .locals 2

    .prologue
    .line 26
    const-string v0, "leadcore"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isQualcom()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/android/internal/telephony/RILFactory;->isLeadcore()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeRIL(Landroid/content/Context;III)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferredNetworkType"    # I
    .param p2, "cdmaSubscription"    # I
    .param p3, "instanceId"    # I

    .prologue
    .line 19
    invoke-static {}, Lcom/android/internal/telephony/RILFactory;->isLeadcore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/internal/telephony/lc/LCRIL;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/lc/LCRIL;-><init>(Landroid/content/Context;III)V

    .line 22
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/qc/QCRIL;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/qc/QCRIL;-><init>(Landroid/content/Context;III)V

    goto :goto_0
.end method
