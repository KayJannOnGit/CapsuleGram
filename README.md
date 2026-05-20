# CapsuleGram
A feature-rich iOS modification for the Instagram app. This project is a personal fork of RyukGram (which originates from SCInsta), maintained for standalone sideloading and future personal tweaks.

Version: v1.0.0
Tested Instagram iOS App Version: 429.0.0

---

## Installation

This fork is focused on non-jailbroken devices using IPA sideloading, since I don't own any jailbroken iPhone..

### For Non-Jailbroken Devices (IPA Sideloading)
1. Follow the Build instructions below to compile your custom IPA.
2. Sign and install the generated IPA using your preferred installer (Feather, AltStore, SideStore, or TrollStore).

### For Jailbroken Devices (.deb)
1. Compile the project as a rootless or rootful package.
2. Install the resulting .deb via Sileo, Zebra, or TrollStore.

---

## Features

| Category | Features |
| :--- | :--- |
| **General** | - Hide ads<br>- Hide Meta AI<br>- Hide metrics (likes, comments, shares counts)<br>- Disable app haptics<br>- Copy description<br>- Copy comment text from long-press menu<br>- Download GIF comments<br>- Profile copy button<br>- Replace domain in shared links for embeds (Discord, Telegram, etc.)<br>- Strip tracking params from shared links<br>- Open links in external browser<br>- Strip tracking from browser links<br>- Do not save recent searches<br>- Open link from clipboard — long-press the search tab<br>- Use detailed (native) color picker<br>- Enable liquid glass buttons<br>- Enable liquid glass surfaces<br>- Enable teen app icons<br><br>**IG Notes:**<br>- Hide notes tray<br>- Hide friends map<br>- Enable note theming<br>- Custom note themes<br><br>**Focus/Distractions:**<br>- No suggested users<br>- No suggested chats<br>- Hide trending searches<br>- Hide explore posts grid<br><br>**Live:**<br>- Anonymous live viewing<br>- Toggle live comments<br><br>**Privacy:**<br>- Hide UI on screenshots, screen recordings, and mirroring |
| **Feed** | - Hide stories tray<br>- Hide suggested stories<br>- View profile picture from story tray long-press menu<br>- Hide entire feed<br>- No suggested posts<br>- No suggested for you (accounts)<br>- No suggested reels<br>- No suggested threads posts<br>- Disable video autoplay<br>- Media zoom — long press media to expand in full-screen viewer<br>- Custom date format — feed, notes/comments/stories, and DMs<br>- Disable background refresh, home button refresh, and home button scroll<br>- Disable reels tab button refresh<br>- Hide repost button in feed |
| **Reels** | - Modify tap controls<br>- Auto-scroll reels mode<br>- Always show progress scrubber<br>- Disable auto-unmuting reels<br>- Confirm reel refresh<br>- Unlock password-locked reels<br>- Hide reels header<br>- Hide repost button in reels<br>- Hide reels blend button<br>- Disable scrolling reels<br>- Prevent doom scrolling (limit maximum viewable reels)<br><br>**Enhanced Pause/Play mode:**<br>- Mute toggle auto-hidden<br>- Audio forced on in reels tab<br>- Play indicator hidden during playback<br>- Playback toggle synced with overlay during hold/zoom<br>- Optional tap-to-mute on photo reels |
| **Action buttons** | - Context-aware action menu on feed, reels, and stories<br>- Configurable default tap action per context<br>- Carousel and multi-story reel support with bulk download<br>- Repost via IG's native creation flow<br>- Full-screen media viewer with zoom and swipe<br>- Story playback pauses when menus are open |
| **Profile** | - Zoom profile photo — long press to view full-screen<br>- Save profile picture<br>- View highlight cover from profile long-press menu<br>- Profile copy button<br>- Follow indicator — shows whether the user follows you<br>- Copy note on long press<br>- Fake profile stats — verified badge and follower/following/post counts |
| **Profile Analyzer** | - Follower and following scans with progress and cancel<br>- Mutuals and non-followbacks lists<br>- New and lost followers/following trackers across scans<br>- Profile change history — username, name, bio, pfp<br>- Searchable lists with batch follow/unfollow |
| **Saving** | - Enhanced HD downloads up to 1080p<br>&nbsp;&nbsp;• Quality picker with preview playback<br>&nbsp;&nbsp;• Audio-only and raw photo download options<br>&nbsp;&nbsp;• Fallback to 720p without FFmpegKit<br>- Download pill with progress bar and bulk counter<br>- Save to custom album<br>- Download confirmation dialog<br>- Output filenames formatted as `@username_context_timestamp`<br>- Legacy long-press gesture (customizable finger count + hold time) |
| **Stories & Messages** | - Keep deleted messages<br>- Hide trailing action buttons on preserved messages<br>- Warn before pull-to-refresh clears preserved messages<br>- Manually mark messages as seen (button or toggle mode)<br>- Long-press the seen button for quick actions<br>- Auto mark seen on send<br>- Auto mark seen on typing<br>- Mark seen on story like<br>- Mark seen on story reply<br>- Advance to next story when marking as seen<br>- Advance on story like<br>- Advance on story reply<br>- Per-chat read-receipt exclusion list with Block all / Block selected mode<br>- Send audio as file from DM plus menu<br>- Download voice messages<br>- Disable typing status<br>- Disable vanish mode swipe<br>- Hide voice/video call buttons (independent toggles)<br>- Unlimited replay of direct stories<br>- Full last active date<br>- Send files in DMs (experimental)<br>- Notes actions — copy text, download GIF/audio<br>- Copy note text on long press<br>- Disable view-once limitations<br>- Disable screenshot detection<br>- Disable story seen receipt<br>- Keep stories visually seen locally<br>- Manual mark story as seen (button or toggle mode)<br>- Long-press the story seen button for quick actions<br>- Per-user story seen-receipt exclusion list with Block all / Block selected mode<br>- Story audio mute/unmute toggle<br>- View story mentions<br>- Stop story auto-advance<br>- Reveal poll/slider vote counts and quiz answers on stories and reels before interacting<br>- Force legacy Quiz sticker back into the story composer tray<br>- Disappearing DM media overlay — action button, mark-as-viewed eye, and audio toggle<br>- Download disappearing DM media<br>- Upload audio as voice message with built-in trim editor<br>- Disable instants creation |
| **Navigation** | - Modify tab bar icon order<br>- Modify swiping between tabs<br>- Hiding tabs (Hide feed tab, Hide explore tab, Hide reels tab, Hide create tab, Hide messages tab)<br>- Messages-only mode — inbox + profile only, launch straight into inbox (with floating settings gear)<br>- Launch tab — pick which tab the app opens to |
| **Confirm actions** | - Confirm like: Posts/Stories / Reels<br>- Confirm story emoji reaction<br>- Confirm follow / unfollow<br>- Confirm repost<br>- Confirm voice call / video call<br>- Confirm voice messages<br>- Confirm follow requests<br>- Confirm vanish mode<br>- Confirm posting comment<br>- Confirm changing direct message theme<br>- Confirm sticker interaction (stories / highlights, separate toggles) |
| **Fake location** | - Override location app-wide for any IG feature reading coordinates<br>- MapKit picker with search + reverse-geocoded names<br>- Saved presets<br>- Quick toggle button on the Friends Map |
| **Theme** | - Force dark mode<br>- Full OLED — pure black app-wide<br>- OLED chat theme — pure black DM thread and incoming bubbles<br>- Keyboard theme — dark or OLED<br>- Apply & restart button |
| **Tweak settings** | - Search bar with breadcrumbs across nested pages<br>- Pause playback when opening settings<br>- Quick-access via long-press on feed tab |
| **Advanced Features** | - Toggle hidden Instagram experiments: QuickSnap (Instants), Direct Notes reply types, Friend Map, Homecoming, Prism<br>- Batched changes with an Apply & restart button<br>- Auto-reset after 3 consecutive launch crashes |
| **Backup & Restore** | - Export settings as JSON<br>- Import settings from JSON<br>- Preview before saving or applying |
| **Localization** | - Multi-language UI with fallback to English<br>- Built-in language picker in Settings<br>- Currently shipping: English, Spanish, Russian, Korean, Arabic, Chinese (Traditional) |
| **Optimization** | - Clear Instagram cache on demand with optional auto-clear interval |

---

## Opening Tweak Settings

To access the configuration panel, long-press the Home/Feed tab icon within the Instagram app.

| Feed Shortcut View | Settings Menu View |
|:---:|:---:|
| <img src="https://i.imgur.com/uPMcugZ.png" width="300"> | <img src="https://i.imgur.com/RUlsg4k.jpeg" width="300"> |

---

## Building From Source

### Prerequisites

Install the following components in the exact order listed below.

#### Base Environment

* **macOS** with Xcode and Command-Line Developer Tools installed.
* **Homebrew**
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```


* **CMake**
```sh
brew install cmake

```


* **Theos Development Environment**
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/theos/theos/master/bin/install-theos)"

```



#### Requirements for Standalone IPA Packaging

* **Pipx**

```sh
  brew install pipx
  pipx ensurepath

```

* **Cyan**

```sh
  pipx install --force https://github.com/asdfzxcvbn/pyzule-rw/archive/main.zip

```

* **IPAPatch**

```sh
  brew install ipapatch

```

### Environment Setup
1. Download the required iOS SDKs (e.g., iPhoneOS16.2.sdk) and place the folder inside `~/theos/sdks/`.
2. Clone this repository with all its dependencies:
```sh
   git clone --recurse-submodules [https://github.com/KayJannOnGit/CapsuleGram](https://github.com/KayJannOnGit/CapsuleGram)
   cd CapsuleGram
```

3. Acquire a decrypted Instagram IPA file from a trusted source (Such as Decrypt Store), rename it exactly to `com.burbn.instagram.ipa`, and place it inside a new folder named `packages` at the root of the project.

### Compilation

Run the automated build script matching your target environment:

```sh
chmod +x build.sh
./build.sh sideload
```

*(Replace `sideload` with `rootless` or `rootful` if compiling a jailbreak package).*

---

# Credits
- [@KayJannOnGit](https://github.com/KayJannOnGit) — maintenance of this personal fork
- [@faroukbmiled](https://github.com/faroukbmiled) — creator of RyukGram, modifications and additional features this fork is built upon
- [SCInsta](https://github.com/SoCuul/SCInsta) by [@SoCuul](https://github.com/SoCuul) — original tweak RyukGram is based on
- [@BandarHL](https://github.com/BandarHL) — creator of the original BHInstagram project
- [@euoradan](https://t.me/euoradan) (Radan) — experimental Instagram feature flag research
- [@erupts0](https://github.com/erupts0) (John) — testing and feature suggestions
- [BillyCurtis/OpenInstagramSafariExtension](https://github.com/BillyCurtis/OpenInstagramSafariExtension) — base for the bundled Safari extension
- [@asdfzxcvbn](https://github.com/asdfzxcvbn) — [ipapatch](https://github.com/asdfzxcvbn/ipapatch) and [zxPluginsInject](https://github.com/asdfzxcvbn/zxPluginsInject)
- Furamako — Spanish translation
- [@ch1tmdgus](https://github.com/ch1tmdgus) (N4C) — Korean translation
- [ZomkaDEV](https://github.com/ZomkaDEV) — Russian translation
- [@bruuhim](https://github.com/bruuhim) — Arabic translation
- [@jaydenjcpy](https://github.com/jaydenjcpy) — Chinese (Traditional) translation
