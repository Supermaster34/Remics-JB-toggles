.class public Lcom/android/systemui/BeanBagDreamSettings;
.super Landroid/preference/PreferenceActivity;
.source "BeanBagDreamSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/systemui/BeanBagDreamSettings;->addPreferencesFromResource(I)V

    .line 29
    return-void
.end method
