.class Lmiui/telephony/MultiSimManager$Holder;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/MultiSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lmiui/telephony/MultiSimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lmiui/telephony/MultiSimManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/MultiSimManager;-><init>(Lmiui/telephony/MultiSimManager$1;)V

    sput-object v0, Lmiui/telephony/MultiSimManager$Holder;->INSTANCE:Lmiui/telephony/MultiSimManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
