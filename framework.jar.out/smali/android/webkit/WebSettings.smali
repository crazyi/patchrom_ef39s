.class public Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$1;,
        Landroid/webkit/WebSettings$EventHandler;,
        Landroid/webkit/WebSettings$AutoFillProfile;,
        Landroid/webkit/WebSettings$PluginState;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "3.1"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEnableSmoothTransition:Z

.field private final mEventHandler:Landroid/webkit/WebSettings$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "context"
    .parameter "webview"

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 163
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 165
    iput v4, p0, Landroid/webkit/WebSettings;->mTextSize:I

    .line 166
    const-string/jumbo v2, "sans-serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 167
    const-string/jumbo v2, "monospace"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 168
    const-string/jumbo v2, "sans-serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 169
    const-string/jumbo v2, "serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 170
    const-string v2, "cursive"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 171
    const-string v2, "fantasy"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 176
    iput v3, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 177
    iput v3, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 178
    const/16 v2, 0x10

    iput v2, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 179
    const/16 v2, 0xd

    iput v2, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 180
    iput v1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 181
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 182
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 184
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 185
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    .line 186
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    .line 187
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 188
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 189
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDoubleTree:Z

    .line 190
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 191
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 192
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 193
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    .line 194
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    .line 195
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    .line 197
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 198
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 199
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 200
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 201
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 202
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    .line 204
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 205
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 206
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 209
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 210
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 214
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 215
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 216
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 217
    iput v4, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    .line 218
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 219
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    .line 220
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 221
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 222
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 223
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 224
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 225
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 226
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    .line 227
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 228
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 229
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 230
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    .line 231
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z

    .line 283
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    .line 384
    new-instance v2, Landroid/webkit/WebSettings$EventHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/webkit/WebSettings$EventHandler;-><init>(Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$1;)V

    iput-object v2, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    .line 385
    iput-object p1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    .line 386
    iput-object p2, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    .line 387
    const v2, 0x10400b9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 390
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 391
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 392
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 394
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 396
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 398
    iget-object v2, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 401
    return-void

    :cond_1
    move v0, v1

    .line 398
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 39
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 450
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 455
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 432
    if-nez p0, :cond_1

    .line 433
    const/4 p0, 0x0

    .line 445
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 435
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    const-string p0, "he"

    goto :goto_0

    .line 438
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    const-string p0, "id"

    goto :goto_0

    .line 441
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 411
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 412
    :try_start_0
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 413
    .local v1, locale:Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/webkit/WebSettings;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 417
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 419
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_0
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 413
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 13

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    sget-object v11, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 468
    :try_start_1
    sget-object v6, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 469
    .local v6, locale:Ljava/util/Locale;
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 472
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 473
    .local v9, version:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 474
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 476
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    :goto_0
    const-string v10, "; "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, language:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 489
    invoke-static {v5}, Landroid/webkit/WebSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, country:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 492
    const-string v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    .end local v3           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v10, ";"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v10, "REL"

    sget-object v11, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 502
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 503
    .local v8, model:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 504
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    .end local v8           #model:Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 509
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 510
    const-string v10, " Build/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    :cond_2
    const-string/jumbo v10, "ro.cm.version"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, cmversion:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 515
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "; CyanogenMod-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(.+?)-.*"

    const-string v12, "$1"

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    :cond_3
    iget-object v10, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040339

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, mobile:Ljava/lang/String;
    iget-object v10, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040338

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, base:Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    monitor-exit p0

    return-object v10

    .line 469
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #cmversion:Ljava/lang/String;
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v7           #mobile:Ljava/lang/String;
    .end local v9           #version:Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 467
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 480
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v6       #locale:Ljava/util/Locale;
    .restart local v9       #version:Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v10, "3.1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 484
    :cond_5
    const-string v10, "1.0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 497
    .restart local v5       #language:Ljava/lang/String;
    :cond_6
    const-string v10, "en"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2
    .parameter "size"

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1877
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1882
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1879
    .restart local p1
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1880
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 1888
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 1889
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1892
    :cond_0
    monitor-exit p0

    return-void

    .line 1888
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1248
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1249
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_0
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    return v0
.end method

.method public forceUserScalable()Z
    .locals 1

    .prologue
    .line 1762
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1631
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1632
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1633
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1634
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1635
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1637
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1638
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1637
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1631
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    .prologue
    .line 1797
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 1

    .prologue
    .line 1814
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1243
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1696
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1458
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1450
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1160
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1139
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1441
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 1818
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1076
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    .prologue
    .line 1287
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1556
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1503
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 962
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1194
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 1097
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 1118
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 538
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 1659
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1521
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1513
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1533
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 1843
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1019
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    .prologue
    .line 1307
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 9

    .prologue
    .line 763
    monitor-enter p0

    const/4 v1, 0x0

    .line 764
    .local v1, closestSize:Landroid/webkit/WebSettings$TextSize;
    const v6, 0x7fffffff

    .line 765
    .local v6, smallestDelta:I
    :try_start_0
    invoke-static {}, Landroid/webkit/WebSettings$TextSize;->values()[Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    .local v0, arr$:[Landroid/webkit/WebSettings$TextSize;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 766
    .local v5, size:Landroid/webkit/WebSettings$TextSize;
    iget v7, p0, Landroid/webkit/WebSettings;->mTextSize:I

    iget v8, v5, Landroid/webkit/WebSettings$TextSize;->value:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 767
    .local v2, delta:I
    if-nez v2, :cond_0

    .line 775
    .end local v1           #closestSize:Landroid/webkit/WebSettings$TextSize;
    .end local v2           #delta:I
    .end local v5           #size:Landroid/webkit/WebSettings$TextSize;
    :goto_1
    monitor-exit p0

    return-object v5

    .line 770
    .restart local v1       #closestSize:Landroid/webkit/WebSettings$TextSize;
    .restart local v2       #delta:I
    .restart local v5       #size:Landroid/webkit/WebSettings$TextSize;
    :cond_0
    if-ge v2, v6, :cond_1

    .line 771
    move v6, v2

    .line 772
    move-object v1, v5

    .line 765
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 775
    .end local v2           #delta:I
    .end local v5           #size:Landroid/webkit/WebSettings$TextSize;
    :cond_2
    if-eqz v1, :cond_3

    .end local v1           #closestSize:Landroid/webkit/WebSettings$TextSize;
    :goto_2
    move-object v5, v1

    goto :goto_1

    .restart local v1       #closestSize:Landroid/webkit/WebSettings$TextSize;
    :cond_3
    :try_start_1
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 763
    .end local v0           #arr$:[Landroid/webkit/WebSettings$TextSize;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 851
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    .prologue
    .line 1731
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 688
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 916
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 892
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    const/4 v0, 0x1

    .line 899
    :goto_0
    monitor-exit p0

    return v0

    .line 894
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    const/4 v0, 0x2

    goto :goto_0

    .line 896
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 897
    const/4 v0, 0x0

    goto :goto_0

    .line 899
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1607
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 1610
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1626
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1613
    :cond_1
    const/4 v1, 0x0

    .line 1614
    .local v1, doPostSync:Z
    :try_start_1
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1615
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1616
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1617
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1618
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1619
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1620
    const/4 v1, 0x1

    .line 1622
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1623
    if-eqz v1, :cond_3

    .line 1624
    :try_start_3
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1626
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1622
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1607
    .end local v1           #doPostSync:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    .prologue
    .line 1642
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1738
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 1873
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 627
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 628
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 611
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 612
    return-void
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1381
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1382
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 1383
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    :cond_0
    monitor-exit p0

    return-void

    .line 1381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2
    .parameter "appCacheMaxSize"

    .prologue
    .line 1406
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1407
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 1408
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    :cond_0
    monitor-exit p0

    return-void

    .line 1406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .parameter "appCachePath"

    .prologue
    .line 1395
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 1397
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    :cond_0
    monitor-exit p0

    return-void

    .line 1395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1786
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1787
    .local v0, autoFillEnabled:Z
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1788
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    .line 1789
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1791
    :cond_0
    monitor-exit p0

    return-void

    .line 1786
    .end local v0           #autoFillEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 1804
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    if-eq v0, p1, :cond_0

    .line 1805
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    .line 1806
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    :cond_0
    monitor-exit p0

    return-void

    .line 1804
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1207
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 1208
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    :cond_0
    monitor-exit p0

    return-void

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1230
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1231
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 1232
    invoke-direct {p0}, Landroid/webkit/WebSettings;->verifyNetworkAccess()V

    .line 1233
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    :cond_0
    monitor-exit p0

    return-void

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 575
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 576
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 577
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1685
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 1686
    iput p1, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 1687
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1689
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1046
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    iput-object p1, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 1048
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    :cond_0
    monitor-exit p0

    return-void

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1418
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1419
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 1420
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    :cond_0
    monitor-exit p0

    return-void

    .line 1418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1354
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1355
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 1356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 1357
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    :cond_0
    monitor-exit p0

    return-void

    .line 1354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1148
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1149
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 1150
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 1151
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    :cond_0
    monitor-exit p0

    return-void

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1127
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1128
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 1129
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 1130
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    :cond_0
    monitor-exit p0

    return-void

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 1564
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1566
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    :cond_0
    monitor-exit p0

    return-void

    .line 1564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 806
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 807
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 808
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->adjustDefaultZoomDensity(I)V

    .line 810
    :cond_0
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 593
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    .line 594
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 595
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1430
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1431
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 1432
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    :cond_0
    monitor-exit p0

    return-void

    .line 1430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1822
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 1823
    sput p1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1825
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    .line 1828
    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 784
    iget v0, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    .line 785
    iput p1, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    .line 786
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->updateDoubleTapZoom(I)V

    .line 788
    :cond_0
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 659
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    .line 660
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1065
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 1067
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :cond_0
    monitor-exit p0

    return-void

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 989
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 991
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_0
    monitor-exit p0

    return-void

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1771
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    monitor-exit p0

    return-void

    .line 1771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1369
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1371
    iput-object p1, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1372
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    :cond_0
    monitor-exit p0

    return-void

    .line 1369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1480
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1481
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 1482
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    :cond_0
    monitor-exit p0

    return-void

    .line 1480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1276
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    .line 1277
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    .line 1278
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    :cond_0
    monitor-exit p0

    return-void

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1543
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1544
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1545
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    :cond_0
    monitor-exit p0

    return-void

    .line 1543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1264
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1265
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 1266
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :cond_0
    monitor-exit p0

    return-void

    .line 1264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 949
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_0

    .line 950
    iput-object p1, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 951
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :cond_0
    monitor-exit p0

    return-void

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 826
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 827
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .parameter "overview"

    .prologue
    .line 641
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 642
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1182
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1183
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 1184
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :cond_0
    monitor-exit p0

    return-void

    .line 1182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 1720
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 1721
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    .line 1722
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1724
    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1085
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1086
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 1087
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 1088
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    :cond_0
    monitor-exit p0

    return-void

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1106
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1107
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 1108
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 1109
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    :cond_0
    monitor-exit p0

    return-void

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 529
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 530
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1652
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 1653
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 1655
    :cond_0
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1169
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1170
    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 1171
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    .line 1172
    iput p1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 1173
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_2
    monitor-exit p0

    return-void

    .line 1169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1330
    iput-object p1, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1331
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    :cond_0
    monitor-exit p0

    return-void

    .line 1329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1318
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    monitor-exit p0

    return-void

    .line 1318
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1344
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1746
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1747
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    .line 1751
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAutoFillEnabled(Z)V

    .line 1753
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    :cond_0
    monitor-exit p0

    return-void

    .line 1746
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1834
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->contentInvalidateAll()V

    .line 1837
    :cond_0
    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 1669
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 1670
    iput-object p1, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 1671
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    :cond_0
    monitor-exit p0

    return-void

    .line 1669
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1008
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 1010
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    :cond_0
    monitor-exit p0

    return-void

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 696
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 710
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 711
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 1027
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 1029
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    :cond_0
    monitor-exit p0

    return-void

    .line 1027
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1296
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    .line 1297
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    .line 1298
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    :cond_0
    monitor-exit p0

    return-void

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1
    .parameter "shrink"

    .prologue
    .line 1707
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 1708
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 1709
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1711
    :cond_0
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 970
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    iput-object p1, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 972
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    :cond_0
    monitor-exit p0

    return-void

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 925
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 926
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 927
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    :cond_0
    monitor-exit p0

    return-void

    .line 925
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2
    .parameter "support"

    .prologue
    .line 560
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 561
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 562
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1775
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1776
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    .line 1777
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    :cond_0
    monitor-exit p0

    return-void

    .line 1775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    monitor-exit p0

    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 4
    .parameter "textZoom"

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mTextSize:I

    if-eq v0, p1, :cond_1

    .line 726
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_0

    .line 727
    const v0, 0x11207

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkit/WebSettings;->mTextSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 730
    :cond_0
    iput p1, p0, Landroid/webkit/WebSettings;->mTextSize:I

    .line 731
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    :cond_1
    monitor-exit p0

    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 842
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 678
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    .line 679
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 906
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 907
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 908
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    :cond_0
    monitor-exit p0

    return-void

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 863
    monitor-enter p0

    const/4 v0, 0x0

    .line 864
    .local v0, uaString:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 865
    :try_start_0
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 868
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 879
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 863
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 870
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 871
    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 874
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 876
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .parameter "ua"

    .prologue
    .line 1583
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1584
    :cond_0
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1585
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1586
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1587
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1588
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1590
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1592
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 1597
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1598
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1599
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1601
    :cond_2
    monitor-exit p0

    return-void

    .line 1590
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1583
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1594
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1470
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 1471
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    :cond_0
    monitor-exit p0

    return-void

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1492
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1493
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    .line 1494
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    :cond_0
    monitor-exit p0

    return-void

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method supportTouchOnly()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .locals 4
    .parameter "frame"

    .prologue
    .line 1852
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 1857
    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1859
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    .line 1860
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1863
    :cond_0
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    .line 1864
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 1865
    iget-object v1, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    #calls: Landroid/webkit/WebSettings$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettings$EventHandler;->access$900(Landroid/webkit/WebSettings$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    monitor-exit p0

    return-void

    .line 1852
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
