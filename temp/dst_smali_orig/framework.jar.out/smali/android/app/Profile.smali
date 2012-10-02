.class public final Landroid/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Profile$AirplaneMode;,
        Landroid/app/Profile$LockMode;
    }
.end annotation


# static fields
.field private static final CONDITIONAL_TYPE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Profile"

.field private static final TOGGLE_TYPE:I


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:I

.field private mDefaultGroup:Landroid/app/ProfileGroup;

.field private mDirty:Z

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mProfileType:I

.field private mScreenLockMode:I

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mUuid:Ljava/util/UUID;

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation
.end field

.field private vibrators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/VibratorSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/Profile$1;

    invoke-direct {v0}, Landroid/app/Profile$1;-><init>()V

    sput-object v0, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    iput v1, p0, Landroid/app/Profile;->mAirplaneMode:I

    invoke-virtual {p0, p1}, Landroid/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Profile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, -0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .locals 2
    .parameter "name"
    .parameter "nameResId"
    .parameter "uuid"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    iput v1, p0, Landroid/app/Profile;->mAirplaneMode:I

    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/app/Profile;->mNameResId:I

    iput-object p3, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    iput v1, p0, Landroid/app/Profile;->mProfileType:I

    iput-boolean v1, p0, Landroid/app/Profile;->mDirty:Z

    return-void
.end method

.method private doSelectAirplaneMode(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, current:I
    invoke-virtual {p0}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v2

    .local v2, target:I
    if-ne v0, v3, :cond_0

    if-eq v2, v8, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    rsub-int/lit8 v7, v0, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v5, "state"

    if-eq v2, v8, :cond_3

    :goto_0
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #current:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #target:I
    :cond_2
    return-void

    .restart local v0       #current:I
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #target:I
    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile;
    .locals 15
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const-string v13, "nameres"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, value:Ljava/lang/String;
    const/4 v7, -0x1

    .local v7, profileNameResId:I
    const/4 v6, 0x0

    .local v6, profileName:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "string"

    const-string v14, "android"

    invoke-virtual {v12, v10, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    if-nez v6, :cond_1

    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    .local v8, profileUuid:Ljava/util/UUID;
    const/4 v12, 0x0

    :try_start_0
    const-string v13, "uuid"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :goto_0
    new-instance v5, Landroid/app/Profile;

    invoke-direct {v5, v6, v7, v8}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .local v5, profile:Landroid/app/Profile;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, event:I
    :goto_1
    const/4 v12, 0x3

    if-eq v2, v12, :cond_c

    const/4 v12, 0x2

    if-ne v2, v12, :cond_a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    const-string v12, "uuids"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static/range {p0 .. p1}, Landroid/app/Profile;->readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setSecondaryUuids(Ljava/util/List;)V

    :cond_2
    const-string v12, "statusbar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    const-string v13, "yes"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setStatusBarIndicator(Z)V

    :cond_3
    const-string v12, "profiletype"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    const-string v13, "toggle"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v5, v12}, Landroid/app/Profile;->setProfileType(I)V

    :cond_4
    const-string v12, "screen-lock-mode"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setScreenLockMode(I)V

    :cond_5
    const-string v12, "airplane-mode"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setAirplaneMode(I)V

    :cond_6
    const-string v12, "profileGroup"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static/range {p0 .. p1}, Landroid/app/ProfileGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ProfileGroup;

    move-result-object v4

    .local v4, pg:Landroid/app/ProfileGroup;
    invoke-virtual {v5, v4}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    .end local v4           #pg:Landroid/app/ProfileGroup;
    :cond_7
    const-string v12, "streamDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static/range {p0 .. p1}, Landroid/app/StreamSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/StreamSettings;

    move-result-object v9

    .local v9, sd:Landroid/app/StreamSettings;
    invoke-virtual {v5, v9}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .end local v9           #sd:Landroid/app/StreamSettings;
    :cond_8
    const-string v12, "connectionDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static/range {p0 .. p1}, Landroid/app/ConnectionSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ConnectionSettings;

    move-result-object v0

    .local v0, cs:Landroid/app/ConnectionSettings;
    iget-object v12, v5, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #cs:Landroid/app/ConnectionSettings;
    :cond_9
    const-string v12, "vibratorDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static/range {p0 .. p1}, Landroid/app/VibratorSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/VibratorSettings;

    move-result-object v11

    .local v11, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v5, v11}, Landroid/app/Profile;->setVibratorSettings(Landroid/app/VibratorSettings;)V

    .end local v3           #name:Ljava/lang/String;
    .end local v11           #vs:Landroid/app/VibratorSettings;
    :cond_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_1

    .end local v2           #event:I
    .end local v5           #profile:Landroid/app/Profile;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v12, "Profile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Null Pointer - UUID not found for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".  New UUID generated: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "Profile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UUID not recognized for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".  New UUID generated: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #event:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #profile:Landroid/app/Profile;
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_2

    .end local v3           #name:Ljava/lang/String;
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, v5, Landroid/app/Profile;->mDirty:Z

    return-object v5
.end method

.method private static readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/UUID;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, event:I
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uuids"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    const-string v4, "uuid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .restart local v2       #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "Profile"

    const-string v5, "Null Pointer - invalid UUID"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Profile"

    const-string v5, "UUID not recognized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public addProfileGroup(Landroid/app/ProfileGroup;)V
    .locals 2
    .parameter "value"

    .prologue
    invoke-virtual {p1}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    :cond_1
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    goto :goto_0
.end method

.method public addSecondaryUuid(Ljava/util/UUID;)V
    .locals 1
    .parameter "uuid"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/app/Profile;

    .local v0, tmp:Landroid/app/Profile;
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public doSelect(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    iget-object v5, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .local v3, sd:Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/StreamSettings;->getValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .end local v3           #sd:Landroid/app/StreamSettings;
    :cond_1
    iget-object v5, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ConnectionSettings;

    .local v1, cs:Landroid/app/ConnectionSettings;
    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, p1}, Landroid/app/ConnectionSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_1

    .end local v1           #cs:Landroid/app/ConnectionSettings;
    :cond_3
    iget-object v5, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/VibratorSettings;

    .local v4, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v4}, Landroid/app/VibratorSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, p1}, Landroid/app/VibratorSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_2

    .end local v4           #vs:Landroid/app/VibratorSettings;
    :cond_5
    invoke-direct {p0, p1}, Landroid/app/Profile;->doSelectAirplaneMode(Landroid/content/Context;)V

    return-void
.end method

.method public getAirplaneMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/Profile;->mAirplaneMode:I

    return v0
.end method

.method public getConnectionSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGroup()Landroid/app/ProfileGroup;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;
    .locals 1
    .parameter "uuid"

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileGroups()[Landroid/app/ProfileGroup;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/ProfileGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/Profile;->mProfileType:I

    return v0
.end method

.method public getScreenLockMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    return v0
.end method

.method public getSecondaryUuids()[Ljava/util/UUID;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/UUID;

    return-object v0
.end method

.method public getSettingsForConnection(I)Landroid/app/ConnectionSettings;
    .locals 2
    .parameter "connectionId"

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    return-object v0
.end method

.method public getSettingsForStream(I)Landroid/app/StreamSettings;
    .locals 2
    .parameter "streamId"

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StreamSettings;

    return-object v0
.end method

.method public getSettingsForVibrator(I)Landroid/app/VibratorSettings;
    .locals 2
    .parameter "vibratorId"

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/VibratorSettings;

    return-object v0
.end method

.method public getStatusBarIndicator()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    return v0
.end method

.method public getStreamSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    :cond_0
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVibratorSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/VibratorSettings;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 8
    .parameter "builder"
    .parameter "context"

    .prologue
    const-string v6, "<profile "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/app/Profile;->mNameResId:I

    if-lez v6, :cond_0

    const-string v6, "nameres=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v6, "\" uuid=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\">\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<uuids>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .local v4, u:Ljava/util/UUID;
    const-string v6, "<uuid>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</uuid>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #u:Ljava/util/UUID;
    :cond_0
    const-string v6, "name=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v6, "</uuids>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<profiletype>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Profile;->getProfileType()I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "toggle"

    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</profiletype>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<statusbar>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Profile;->getStatusBarIndicator()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "yes"

    :goto_3
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</statusbar>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<screen-lock-mode>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</screen-lock-mode>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<airplane-mode>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/app/Profile;->mAirplaneMode:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</airplane-mode>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileGroup;

    .local v2, pGroup:Landroid/app/ProfileGroup;
    invoke-virtual {v2, p1, p2}, Landroid/app/ProfileGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_4

    .end local v2           #pGroup:Landroid/app/ProfileGroup;
    :cond_2
    const-string v6, "conditional"

    goto :goto_2

    :cond_3
    const-string v6, "no"

    goto :goto_3

    :cond_4
    iget-object v6, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .local v3, sd:Landroid/app/StreamSettings;
    invoke-virtual {v3, p1, p2}, Landroid/app/StreamSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_5

    .end local v3           #sd:Landroid/app/StreamSettings;
    :cond_5
    iget-object v6, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .local v0, cs:Landroid/app/ConnectionSettings;
    invoke-virtual {v0, p1, p2}, Landroid/app/ConnectionSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_6

    .end local v0           #cs:Landroid/app/ConnectionSettings;
    :cond_6
    iget-object v6, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/VibratorSettings;

    .local v5, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v5, p1, p2}, Landroid/app/VibratorSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_7

    .end local v5           #vs:Landroid/app/VibratorSettings;
    :cond_7
    const-string v6, "</profile>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/app/Profile;->mDirty:Z

    return-void
.end method

.method public isConditionalType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/app/Profile;->mProfileType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    iget-boolean v6, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v6, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileGroup;

    .local v1, group:Landroid/app/ProfileGroup;
    invoke-virtual {v1}, Landroid/app/ProfileGroup;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .end local v1           #group:Landroid/app/ProfileGroup;
    :cond_2
    iget-object v6, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .local v3, stream:Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .end local v3           #stream:Landroid/app/StreamSettings;
    :cond_4
    iget-object v6, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .local v0, conn:Landroid/app/ConnectionSettings;
    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    .end local v0           #conn:Landroid/app/ConnectionSettings;
    :cond_6
    iget-object v6, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/VibratorSettings;

    .local v4, vibrator:Landroid/app/VibratorSettings;
    invoke-virtual {v4}, Landroid/app/VibratorSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    .end local v4           #vibrator:Landroid/app/VibratorSettings;
    :cond_8
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 12
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Landroid/app/Profile;->mNameResId:I

    sget-object v10, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    invoke-virtual {v10}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v10

    iput-object v10, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .local v6, parcel:Landroid/os/Parcelable;
    move-object v8, v6

    check-cast v8, Landroid/os/ParcelUuid;

    .local v8, u:Landroid/os/ParcelUuid;
    iget-object v10, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v8           #u:Landroid/os/ParcelUuid;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Landroid/app/Profile;->mProfileType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Landroid/app/Profile;->mDirty:Z

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .local v2, group:Landroid/os/Parcelable;
    move-object v3, v2

    check-cast v3, Landroid/app/ProfileGroup;

    .local v3, grp:Landroid/app/ProfileGroup;
    iget-object v10, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v10

    if-eqz v10, :cond_1

    iput-object v3, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2           #group:Landroid/os/Parcelable;
    .end local v3           #grp:Landroid/app/ProfileGroup;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v7, v6

    check-cast v7, Landroid/app/StreamSettings;

    .local v7, stream:Landroid/app/StreamSettings;
    iget-object v10, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v7           #stream:Landroid/app/StreamSettings;
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_6

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v1, v6

    check-cast v1, Landroid/app/ConnectionSettings;

    .local v1, connection:Landroid/app/ConnectionSettings;
    iget-object v10, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v1           #connection:Landroid/app/ConnectionSettings;
    .end local v6           #parcel:Landroid/os/Parcelable;
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_7

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v9, v6

    check-cast v9, Landroid/app/VibratorSettings;

    .local v9, vibrator:Landroid/app/VibratorSettings;
    iget-object v10, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-virtual {v9}, Landroid/app/VibratorSettings;->getVibratorId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v9           #vibrator:Landroid/app/VibratorSettings;
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Landroid/app/Profile;->mAirplaneMode:I

    return-void
.end method

.method public removeProfileGroup(Ljava/util/UUID;)V
    .locals 3
    .parameter "uuid"

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove default group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAirplaneMode(I)V
    .locals 1
    .parameter "airplaneMode"

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mAirplaneMode:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    return-void

    :cond_1
    iput p1, p0, Landroid/app/Profile;->mAirplaneMode:I

    goto :goto_0
.end method

.method public setConditionalType()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Profile;->mProfileType:I

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    return-void
.end method

.method public setConnectionSettings(Landroid/app/ConnectionSettings;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Profile;->mNameResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    return-void
.end method

.method public setProfileType(I)V
    .locals 1
    .parameter "type"

    .prologue
    iput p1, p0, Landroid/app/Profile;->mProfileType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    return-void
.end method

.method public setScreenLockMode(I)V
    .locals 1
    .parameter "screenLockMode"

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    return-void

    :cond_1
    iput p1, p0, Landroid/app/Profile;->mScreenLockMode:I

    goto :goto_0
.end method

.method public setSecondaryUuids(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, uuids:Ljava/util/List;,"Ljava/util/List<Ljava/util/UUID;>;"
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setStatusBarIndicator(Z)V
    .locals 1
    .parameter "newStatusBarIndicator"

    .prologue
    iput-boolean p1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    return-void
.end method

.method public setStreamSettings(Landroid/app/StreamSettings;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    return-void
.end method

.method public setVibratorSettings(Landroid/app/VibratorSettings;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/VibratorSettings;->getVibratorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v3, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v3, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, p1, v5}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v3, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .local v1, u:Ljava/util/UUID;
    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #u:Ljava/util/UUID;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-boolean v3, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Profile;->mProfileType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v3, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v3, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v3, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v3, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Profile;->mAirplaneMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method
