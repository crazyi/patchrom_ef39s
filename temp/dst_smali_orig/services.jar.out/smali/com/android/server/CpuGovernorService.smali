.class Lcom/android/server/CpuGovernorService;
.super Ljava/lang/Object;
.source "CpuGovernorService.java"


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;

.field private final mUseIOBusyFeature:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CpuGovernorService"

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/CpuGovernorService;->DBG:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/CpuGovernorService;->mUseIOBusyFeature:Z

    new-instance v1, Lcom/android/server/SamplingRateChangeProcessor;

    invoke-direct {v1}, Lcom/android/server/SamplingRateChangeProcessor;-><init>()V

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

    new-instance v1, Lcom/android/server/CpuGovernorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/CpuGovernorService$1;-><init>(Lcom/android/server/CpuGovernorService;)V

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/CpuGovernorService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/IOBusyVoteProcessor;

    invoke-direct {v1}, Lcom/android/server/IOBusyVoteProcessor;-><init>()V

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/server/CpuGovernorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/CpuGovernorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

    return-object v0
.end method
