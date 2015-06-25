.class public Lmiui/msim/MsimUtils;
.super Ljava/lang/Object;
.source "MsimUtils.java"


# static fields
.field private static final DEVICE_GEMINI2:Ljava/lang/String; = "HM2013022"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGemini2()Z
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    return v0
.end method
