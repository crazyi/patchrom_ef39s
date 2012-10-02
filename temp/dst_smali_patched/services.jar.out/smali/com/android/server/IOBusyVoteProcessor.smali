.class Lcom/android/server/IOBusyVoteProcessor;
.super Ljava/lang/Object;
.source "CpuGovernorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ACTION_IOBUSY_UNVOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

.field public static final ACTION_IOBUSY_VOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

.field private static final IO_IS_BUSY_FILE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/ondemand/io_is_busy"

.field public static final IO_IS_BUSY_UNVOTE_OFF:I = 0x4

.field public static final IO_IS_BUSY_UNVOTE_ON:I = 0x3

.field public static final IO_IS_BUSY_VOTE_OFF:I = 0x2

.field public static final IO_IS_BUSY_VOTE_ON:I = 0x1


# instance fields
.field private final MAX_IO_IS_BUSY_VALUE_LENGTH:I

.field private final TAG:Ljava/lang/String;

.field private mCurrentIOBusyValue:I

.field private mError:Z

.field private mIOBusyChanges:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPending:Z

.field private mOffVotes:I

.field private mOnVotes:I

.field private mSavedIOBusyValue:I

.field private mSynchIOBusyChanges:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IOBusyVoteProcessor"

    iput-object v0, p0, Lcom/android/server/IOBusyVoteProcessor;->TAG:Ljava/lang/String;

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->MAX_IO_IS_BUSY_VALUE_LENGTH:I

    iput-boolean v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mNotificationPending:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mIOBusyChanges:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mSynchIOBusyChanges:Ljava/lang/Object;

    iput v2, p0, Lcom/android/server/IOBusyVoteProcessor;->mSavedIOBusyValue:I

    iput v2, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    iput v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    iput v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    iput-boolean v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    return-void
.end method

.method private getCurrentIOBusyValue()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/devices/system/cpu/cpufreq/ondemand/io_is_busy"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, fileIOBusy:Ljava/io/File;
    const/4 v3, -0x1

    .local v3, ioBusyValue:I
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v4, ioBusyValueReader:Ljava/io/BufferedReader;
    const/16 v5, 0x20

    new-array v2, v5, [C

    .local v2, ioBusyContents:[C
    const/4 v5, 0x0

    const/16 v6, 0x1f

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/BufferedReader;->read([CII)I

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .end local v2           #ioBusyContents:[C
    .end local v4           #ioBusyValueReader:Ljava/io/BufferedReader;
    :goto_0
    return v3

    .restart local v2       #ioBusyContents:[C
    .restart local v4       #ioBusyValueReader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .local v0, exception:Ljava/lang/Exception;
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    const-string v5, "IOBusyVoteProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read io_is_busy. Contents: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0           #exception:Ljava/lang/Exception;
    .end local v2           #ioBusyContents:[C
    .end local v4           #ioBusyValueReader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .restart local v0       #exception:Ljava/lang/Exception;
    iput-boolean v8, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    const-string v5, "IOBusyVoteProcessor"

    const-string v6, "io_is_busy cannot be read."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #exception:Ljava/lang/Exception;
    :cond_0
    iput-boolean v8, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    const-string v5, "IOBusyVoteProcessor"

    const-string v6, "io_is_busy cannot be read."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setIOBusyValue(I)V
    .locals 7
    .parameter "ioBusyValue"

    .prologue
    const/4 v6, 0x1

    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/io_is_busy"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, fileIOBusy:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .local v2, ioBusyValueWriter:Ljava/io/PrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    const-string v3, "IOBusyVoteProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set io_is_busy to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #ioBusyValueWriter:Ljava/io/PrintWriter;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, exception:Ljava/lang/Exception;
    iput-boolean v6, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    const-string v3, "IOBusyVoteProcessor"

    const-string v4, "Unable to write to io_is_busy."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #exception:Ljava/lang/Exception;
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    const-string v3, "IOBusyVoteProcessor"

    const-string v4, "io_is_busy cannot be written to."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unvoteOff()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    if-nez v0, :cond_1

    const-string v0, "IOBusyVoteProcessor"

    const-string v1, "Off votes can\'t be negative."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mSavedIOBusyValue:I

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    invoke-direct {p0, v0}, Lcom/android/server/IOBusyVoteProcessor;->setIOBusyValue(I)V

    goto :goto_0
.end method

.method private unvoteOn()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    if-nez v0, :cond_1

    const-string v0, "IOBusyVoteProcessor"

    const-string v1, "On votes can\'t be negative."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mSavedIOBusyValue:I

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    invoke-direct {p0, v0}, Lcom/android/server/IOBusyVoteProcessor;->setIOBusyValue(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    if-lez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    invoke-direct {p0, v0}, Lcom/android/server/IOBusyVoteProcessor;->setIOBusyValue(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    const-string v0, "IOBusyVoteProcessor"

    const-string v1, "Off votes can\'t be negative."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private voteOff()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    invoke-direct {p0, v0}, Lcom/android/server/IOBusyVoteProcessor;->setIOBusyValue(I)V

    :cond_0
    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    return-void
.end method

.method private voteOn()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    invoke-direct {p0, v0}, Lcom/android/server/IOBusyVoteProcessor;->setIOBusyValue(I)V

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    return-void
.end method


# virtual methods
.method public getIOBusyChangeRequests()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mIOBusyChanges:Ljava/util/Vector;

    return-object v0
.end method

.method public getNotificationPending()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mNotificationPending:Z

    return v0
.end method

.method public getSynchObject()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mSynchIOBusyChanges:Ljava/lang/Object;

    return-object v0
.end method

.method public initializeIOBusyValue()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/IOBusyVoteProcessor;->getCurrentIOBusyValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mSavedIOBusyValue:I

    iget v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mSavedIOBusyValue:I

    iput v0, p0, Lcom/android/server/IOBusyVoteProcessor;->mCurrentIOBusyValue:I

    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    if-nez v1, :cond_7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/IOBusyVoteProcessor;->mSynchIOBusyChanges:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mNotificationPending:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mSynchIOBusyChanges:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mNotificationPending:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mIOBusyChanges:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mIOBusyChanges:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, ioBusyChangeRequestType:I
    iget v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mOnVotes:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mOffVotes:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/IOBusyVoteProcessor;->initializeIOBusyValue()V

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/IOBusyVoteProcessor;->mError:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/IOBusyVoteProcessor;->voteOn()V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0           #ioBusyChangeRequestType:I
    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    goto :goto_0

    .restart local v0       #ioBusyChangeRequestType:I
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/IOBusyVoteProcessor;->voteOff()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/IOBusyVoteProcessor;->unvoteOn()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/IOBusyVoteProcessor;->unvoteOff()V
    :try_end_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .end local v0           #ioBusyChangeRequestType:I
    :cond_7
    return-void
.end method

.method public setNotificationPending(Z)V
    .locals 0
    .parameter "notificationPending"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/IOBusyVoteProcessor;->mNotificationPending:Z

    return-void
.end method
