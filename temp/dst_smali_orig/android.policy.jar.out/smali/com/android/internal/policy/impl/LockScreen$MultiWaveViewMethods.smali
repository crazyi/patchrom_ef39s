.class Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWaveViewMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private mIsScreenLarge:Z

.field private final mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

.field private mStoredTargets:[Ljava/lang/String;

.field private mTargetOffset:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 4
    .parameter
    .parameter "multiWaveView"

    .prologue
    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreen;->access$600(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .local v0, cameraDisabled:Z
    if-eqz v0, :cond_0

    const-string v2, "LockScreen"

    const-string v3, "Camera disabled by Device Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetResourceId()I

    move-result v2

    const v3, 0x1070010

    if-eq v2, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 13
    .parameter "back"
    .parameter "front"
    .parameter "inset"
    .parameter "frontBlank"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .local v10, res:Landroid/content/res/Resources;
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/graphics/drawable/InsetDrawable;

    .local v9, inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/graphics/drawable/InsetDrawable;

    .local v7, activelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v12, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const v1, 0x10802ff

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v9, v12

    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v9, v12

    const/4 v12, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v12

    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p4, :cond_0

    const v1, 0x106000d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v12

    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v11, states:Landroid/graphics/drawable/StateListDrawable;
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v8, inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v6, activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v11, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v11, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v11

    .end local v6           #activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v8           #inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    move-object v1, p2

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method public isScreenLarge()Z
    .locals 3

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .local v1, screenSize:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .local v0, isScreenLarge:Z
    :goto_0
    return v0

    .end local v0           #isScreenLarge:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 7
    .parameter "v"
    .parameter "target"

    .prologue
    const/high16 v6, 0x1000

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mStoredTargets:[Ljava/lang/String;

    if-nez v4, :cond_5

    if-eqz p2, :cond_0

    if-ne p2, v1, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq p2, v5, :cond_3

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-nez v3, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)I

    move-result v4

    if-ne v4, v5, :cond_8

    .local v1, isLand:Z
    :goto_1
    if-nez p2, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mIsScreenLarge:Z

    if-nez v3, :cond_7

    if-eqz v1, :cond_7

    :cond_6
    if-ne p2, v5, :cond_9

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mIsScreenLarge:Z

    if-nez v3, :cond_9

    if-eqz v1, :cond_9

    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .end local v1           #isLand:Z
    :cond_8
    move v1, v3

    goto :goto_1

    .restart local v1       #isLand:Z
    :cond_9
    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mTargetOffset:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mStoredTargets:[Ljava/lang/String;

    array-length v3, v3

    if-ge p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v3, v3, p2

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .local v2, tIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$1300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .end local v2           #tIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public ping()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    return-void
.end method

.method public updateResources()V
    .locals 30

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_targets"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, storedVal:Ljava/lang/String;
    if-nez v26, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mStoredTargets:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v24, 0x107000b

    .local v24, resId:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .end local v24           #resId:I
    :goto_1
    return-void

    :cond_0
    const v24, 0x107000e

    goto :goto_0

    :cond_1
    const v24, 0x1070010

    .restart local v24       #resId:I
    goto :goto_0

    .end local v24           #resId:I
    :cond_2
    const-string v4, "\\|"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mStoredTargets:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->isScreenLarge()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mIsScreenLarge:Z

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .local v25, storedDraw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .local v23, res:Landroid/content/res/Resources;
    const v4, 0x105004a

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .local v27, targetInset:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .local v19, packMan:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    const/16 v18, 0x1

    .local v18, isLandscape:Z
    :goto_2
    const v4, 0x108031b

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .local v2, activeBack:Landroid/graphics/drawable/InsetDrawable;
    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mIsScreenLarge:Z

    if-nez v4, :cond_8

    const/4 v4, 0x2

    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mTargetOffset:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mTargetOffset:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v5, 0x1080321

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mTargetOffset:I

    rsub-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, -0x1

    if-ge v15, v4, :cond_e

    move/from16 v28, v27

    .local v28, tmpInset:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mStoredTargets:[Ljava/lang/String;

    array-length v4, v4

    if-ge v15, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v29, v4, v15

    .local v29, uri:Ljava/lang/String;
    const-string v4, "empty"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v29

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    .local v17, in:Landroid/content/Intent;
    const/4 v13, 0x0

    .local v13, front:Landroid/graphics/drawable/Drawable;
    move-object v9, v2

    .local v9, back:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .local v14, frontBlank:Z
    const-string v4, "icon_file"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "icon_file"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, fSource:Ljava/lang/String;
    if-eqz v12, :cond_4

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, fPath:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13           #front:Landroid/graphics/drawable/Drawable;
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v13, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v11           #fPath:Ljava/io/File;
    .end local v12           #fSource:Ljava/lang/String;
    .restart local v13       #front:Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_5
    if-eqz v13, :cond_5

    if-nez v9, :cond_6

    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .local v8, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_b

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .end local v8           #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_6
    :goto_6
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v9, v13, v1, v14}, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v9           #back:Landroid/graphics/drawable/Drawable;
    .end local v13           #front:Landroid/graphics/drawable/Drawable;
    .end local v14           #frontBlank:Z
    .end local v17           #in:Landroid/content/Intent;
    .end local v29           #uri:Ljava/lang/String;
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .end local v2           #activeBack:Landroid/graphics/drawable/InsetDrawable;
    .end local v3           #blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    .end local v15           #i:I
    .end local v18           #isLandscape:Z
    .end local v28           #tmpInset:I
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_2

    .restart local v2       #activeBack:Landroid/graphics/drawable/InsetDrawable;
    .restart local v3       #blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v18       #isLandscape:Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_3

    .restart local v9       #back:Landroid/graphics/drawable/Drawable;
    .restart local v13       #front:Landroid/graphics/drawable/Drawable;
    .restart local v14       #frontBlank:Z
    .restart local v15       #i:I
    .restart local v17       #in:Landroid/content/Intent;
    .restart local v28       #tmpInset:I
    .restart local v29       #uri:Ljava/lang/String;
    :cond_9
    const-string v4, "icon_resource"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "icon_resource"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, rSource:Ljava/lang/String;
    const-string v4, "icon_package"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .local v21, rPackage:Ljava/lang/String;
    if-eqz v22, :cond_4

    if-eqz v21, :cond_a

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v20

    .local v20, rContext:Landroid/content/Context;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .local v16, id:I
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "_normal"

    const-string v6, "_activated"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    const/16 v28, 0x0

    const/4 v14, 0x1

    goto/16 :goto_5

    .end local v16           #id:I
    .end local v20           #rContext:Landroid/content/Context;
    :catch_0
    move-exception v10

    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .end local v9           #back:Landroid/graphics/drawable/Drawable;
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13           #front:Landroid/graphics/drawable/Drawable;
    .end local v14           #frontBlank:Z
    .end local v17           #in:Landroid/content/Intent;
    .end local v21           #rPackage:Ljava/lang/String;
    .end local v22           #rSource:Ljava/lang/String;
    :catch_1
    move-exception v10

    .local v10, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #back:Landroid/graphics/drawable/Drawable;
    .restart local v13       #front:Landroid/graphics/drawable/Drawable;
    .restart local v14       #frontBlank:Z
    .restart local v17       #in:Landroid/content/Intent;
    .restart local v21       #rPackage:Ljava/lang/String;
    .restart local v22       #rSource:Ljava/lang/String;
    :catch_2
    move-exception v10

    .local v10, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    invoke-virtual {v10}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .end local v10           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_a
    const-string v4, "drawable"

    const-string v5, "android"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const-string v4, "_normal"

    const-string v5, "_activated"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "android"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v28, 0x0

    const/4 v14, 0x1

    goto/16 :goto_5

    .end local v21           #rPackage:Ljava/lang/String;
    .end local v22           #rSource:Ljava/lang/String;
    .restart local v8       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_b
    const v4, 0x1080093

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v13

    goto/16 :goto_6

    .end local v8           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v9           #back:Landroid/graphics/drawable/Drawable;
    .end local v13           #front:Landroid/graphics/drawable/Drawable;
    .end local v14           #frontBlank:Z
    .end local v17           #in:Landroid/content/Intent;
    :cond_c
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .end local v29           #uri:Ljava/lang/String;
    :cond_d
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .end local v28           #tmpInset:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method
