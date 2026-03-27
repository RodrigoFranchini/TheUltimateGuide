## Plan: Stylize Book Final Page

TL;DR - Make the final page punchier and funnier by amplifying the punchline reveal with typography, timing, and playful animation; optionally add a confetti/particle effect and minor gradient/tint tweaks to improve contrast and emotional tone.

**Steps**
1. Update `BookFinalPage` UI (depends on step 2)
   - Replace the static large text reveal with a staged reveal: small setup line → dramatic punchline with scale/rotation/3D card effect → subtle bounce.
   - Add a speech-bubble or comic-style rounded panel behind the punchline, with layered shadows.
   - Add accessibility modifiers: `.accessibilityLabel` and reduced-motion fallbacks.
2. Add/adjust visual building blocks (parallel with step 1)
   - Tweak `AppGradients.punchline` to a two-stop gradient with better contrast for white/black text, or add a softer glow layer behind the punchline.
3. Iterate and polish
   - Adjust timing, easing curves, and typography sizes for device classes (compact vs regular). Verify contrast and legibility.

**Relevant files**
- `BookFinalPage` view: [BookFinalPage.swift](BookFinalPage.swift#L1-L46) — main target for UI changes and animations.
- Supporting pages: [BookPage.swift](BookPage.swift#L1-L51), [BookCover.swift](BookCover.swift#L1-L48) — reference existing patterns for panels, fonts, and shadows.
- App gradients: [AppGradient.swift](AppGradient.swift#L1-L33) — update `punchline` gradient or add variants.

**Decisions / Assumptions**
- Scope: This plan focuses only on the final page UI and light support files. It does NOT add new navigation or data model changes.

