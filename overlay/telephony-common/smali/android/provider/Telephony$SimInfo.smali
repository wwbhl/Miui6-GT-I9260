.class public final Landroid/provider/Telephony$SimInfo;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimInfo"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final ACTIVE_STATE:Ljava/lang/String; = "active_state"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INACTIVE:I = 0x0

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SLOT:Ljava/lang/String; = "slot"

.field public static final SLOT_NONE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2748
    const-string v0, "content://siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
