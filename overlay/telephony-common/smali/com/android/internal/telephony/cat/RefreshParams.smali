.class Lcom/android/internal/telephony/cat/RefreshParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field fileList:[B

.field numFiles:I

.field refMode:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;II[B)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "refMode"    # I
    .param p3, "numFiles"    # I
    .param p4, "fileList"    # [B

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/RefreshParams;->numFiles:I

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RefreshParams;->fileList:[B

    .line 228
    iput p2, p0, Lcom/android/internal/telephony/cat/RefreshParams;->refMode:I

    .line 229
    iput p3, p0, Lcom/android/internal/telephony/cat/RefreshParams;->numFiles:I

    .line 230
    iput-object p4, p0, Lcom/android/internal/telephony/cat/RefreshParams;->fileList:[B

    .line 231
    return-void
.end method
