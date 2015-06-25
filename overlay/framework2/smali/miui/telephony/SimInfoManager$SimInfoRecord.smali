.class public Lmiui/telephony/SimInfoManager$SimInfoRecord;
.super Ljava/lang/Object;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SimInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimInfoRecord"
.end annotation


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mIccId:Ljava/lang/String;

.field public mIsActivte:Z

.field public mNumber:Ljava/lang/String;

.field public mSimInfoId:J

.field public mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSlotId:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mIsActivte:Z

    return-void
.end method
