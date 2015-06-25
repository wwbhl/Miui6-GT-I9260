.class public Landroid/telephony/TelephonyManager2;
.super Ljava/lang/Object;
.source "TelephonyManager2.java"


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager2;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 22
    iget-object v0, p0, Landroid/telephony/TelephonyManager2;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
