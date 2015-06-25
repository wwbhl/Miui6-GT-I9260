.class final enum Lmiui/telephony/MultiSimManager$MultiSimVariants;
.super Ljava/lang/Enum;
.source "MultiSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/MultiSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MultiSimVariants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/telephony/MultiSimManager$MultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/telephony/MultiSimManager$MultiSimVariants;

.field public static final enum DSDA:Lmiui/telephony/MultiSimManager$MultiSimVariants;

.field public static final enum DSDS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

.field public static final enum TSTS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

.field public static final enum UNKNOWN:Lmiui/telephony/MultiSimManager$MultiSimVariants;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;

    const-string v1, "DSDS"

    invoke-direct {v0, v1, v2}, Lmiui/telephony/MultiSimManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;->DSDS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    .line 56
    new-instance v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;

    const-string v1, "DSDA"

    invoke-direct {v0, v1, v3}, Lmiui/telephony/MultiSimManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;->DSDA:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    .line 57
    new-instance v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;

    const-string v1, "TSTS"

    invoke-direct {v0, v1, v4}, Lmiui/telephony/MultiSimManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;->TSTS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    .line 58
    new-instance v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lmiui/telephony/MultiSimManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;->UNKNOWN:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/telephony/MultiSimManager$MultiSimVariants;

    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->DSDS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->DSDA:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->TSTS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->UNKNOWN:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;->$VALUES:[Lmiui/telephony/MultiSimManager$MultiSimVariants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/telephony/MultiSimManager$MultiSimVariants;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;

    return-object v0
.end method

.method public static values()[Lmiui/telephony/MultiSimManager$MultiSimVariants;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lmiui/telephony/MultiSimManager$MultiSimVariants;->$VALUES:[Lmiui/telephony/MultiSimManager$MultiSimVariants;

    invoke-virtual {v0}, [Lmiui/telephony/MultiSimManager$MultiSimVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/telephony/MultiSimManager$MultiSimVariants;

    return-object v0
.end method
