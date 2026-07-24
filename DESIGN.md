---
name: Zigmund Executive
colors:
  surface: '#f9f9f9'
  surface-dim: '#dadada'
  surface-bright: '#f9f9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f3f3'
  surface-container: '#eeeeee'
  surface-container-high: '#e8e8e8'
  surface-container-highest: '#e2e2e2'
  on-surface: '#1a1c1c'
  on-surface-variant: '#4c4546'
  inverse-surface: '#2f3131'
  inverse-on-surface: '#f1f1f1'
  outline: '#7e7576'
  outline-variant: '#cfc4c5'
  surface-tint: '#5e5e5e'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#1b1b1b'
  on-primary-container: '#848484'
  inverse-primary: '#c6c6c6'
  secondary: '#5d5f5f'
  on-secondary: '#ffffff'
  secondary-container: '#dddddd'
  on-secondary-container: '#606161'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#001947'
  on-tertiary-container: '#3e7dff'
  error: '#DE1135'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e2e2e2'
  primary-fixed-dim: '#c6c6c6'
  on-primary-fixed: '#1b1b1b'
  on-primary-fixed-variant: '#474747'
  secondary-fixed: '#e2e2e2'
  secondary-fixed-dim: '#c6c6c6'
  on-secondary-fixed: '#1a1c1c'
  on-secondary-fixed-variant: '#454747'
  tertiary-fixed: '#dae2ff'
  tertiary-fixed-dim: '#b1c5ff'
  on-tertiary-fixed: '#001947'
  on-tertiary-fixed-variant: '#00419f'
  background: '#f9f9f9'
  on-background: '#1a1c1c'
  surface-variant: '#e2e2e2'
  background-primary: '#FFFFFF'
  background-secondary: '#F3F3F3'
  background-tertiary: '#E8E8E8'
  content-primary: '#000000'
  content-secondary: '#4B4B4B'
  content-tertiary: '#5E5E5E'
  content-disabled: '#A6A6A6'
  accent: '#276EF1'
  success: '#0E8345'
  warning: '#F6BC2F'
typography:
  display-lg:
    fontFamily: Roboto
    fontSize: 96px
    fontWeight: '700'
    lineHeight: 112px
    letterSpacing: -0.02em
  display-md:
    fontFamily: Roboto
    fontSize: 52px
    fontWeight: '700'
    lineHeight: 64px
    letterSpacing: -0.015em
  display-sm:
    fontFamily: Roboto
    fontSize: 44px
    fontWeight: '700'
    lineHeight: 52px
    letterSpacing: -0.01em
  headline-lg:
    fontFamily: Roboto
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.005em
  headline-md:
    fontFamily: Roboto
    fontSize: 24px
    fontWeight: '700'
    lineHeight: 32px
  label-lg:
    fontFamily: Roboto
    fontSize: 18px
    fontWeight: '500'
    lineHeight: 24px
  label-md:
    fontFamily: Roboto
    fontSize: 16px
    fontWeight: '500'
    lineHeight: 20px
  label-sm:
    fontFamily: Roboto
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 16px
  body-lg:
    fontFamily: Roboto
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Roboto
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Roboto
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  code-md:
    fontFamily: Roboto Mono
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 4px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
  xxl: 48px
  gutter-mobile: 16px
  gutter-desktop: 36px
  margin-mobile: 16px
  margin-desktop: 64px
  max-width: 1280px
---

## Brand & Style

This design system is an industrial-grade, minimalist framework designed for maximum functional clarity and high-performance information density. It prioritizes utility over ornamentation, utilizing a "Technical / Corporate" aesthetic that feels authoritative, clean, and highly structured.

The visual style is **Minimalist and Flat**, characterized by:
- **High-Contrast Foundations:** A strict monochrome canvas using absolute blacks and whites to create an uncompromising hierarchy.
- **Structural Rigidity:** Alignment to a strict 4px baseline grid ensures a disciplined vertical rhythm.
- **Functional Typography:** Large, bold headlines paired with highly legible body copy to drive the user experience.
- **Zero-Depth Surfaces:** Page containers and cards remain flat with sharp edges, using thin borders rather than shadows to define boundaries. Shadows are reserved exclusively for temporary floating elements like modals or popovers to denote focus.

## Colors

The palette is engineered for stark, absolute contrast.

- **Primary & Neutral:** The system relies on **Absolute Obsidian Black (#000000)** for primary actions and text, and **Pure Alabaster White (#FFFFFF)** for the main canvas. Secondary surfaces use **Mist Gray (#F3F3F3)** to create subtle distinction without adding visual weight.
- **Interactive Accent:** **Electric Brand Blue (#276EF1)** is the sole high-chroma color, reserved strictly for active states, focus rings, progress bars, and critical interactive indicators.
- **Semantic States:** Success (Green), Warning (Yellow), and Error (Red) colors are used sparingly for status communication, maintaining high saturation to ensure they stand out against the monochrome background.
- **Text Hierarchy:** Black is used for core content, while charcoal and ash grays provide secondary and tertiary levels of information importance.

## Typography

The system uses **Roboto** exclusively, providing a neutral, geometric, and highly legible foundation. **Roboto Mono** is employed for data-heavy views, technical values, and hex codes.

- **Scale Differentiation:** Clear distinction is made between "Labels" (Medium 500) and "Paragraphs" (Regular 400). Labels are used for interactive elements like buttons and form titles, while Paragraphs are optimized for readability in dense blocks of text.
- **Tracking:** Display sizes utilize negative letter-spacing to maintain visual tension at large scales.
- **Vertical Rhythm:** Line heights are strictly defined to align with the 4px baseline grid. Headlines have tighter leading (approx. 120%), while body text uses more generous leading (approx. 150%) for comfort.

## Layout & Spacing

This system utilizes a **Fluid Grid** model based on a 4px baseline unit. Layouts adapt dynamically across three main breakpoints.

- **Breakpoints:**
  - **Mobile (<600px):** 4-column grid, 16px margins, 16px gutters.
  - **Tablet (600px - 1135px):** 8-column grid, 36px margins, 36px gutters.
  - **Desktop (>=1136px):** 12-column grid, 64px margins, 36px gutters.
- **Content Width:** Content is capped at 1280px and centered in the viewport for wide screens.
- **Spacing Logic:** Whitespace is used as a structural tool. Smaller units (4px-8px) define relationships within components, while larger units (32px-48px) separate major content sections.

## Elevation & Depth

This system is fundamentally **Flat**, rejecting the use of shadows for standard UI elements. Depth is communicated through color and layering rather than physical metaphors.

- **Tonal Layers:** Surfaces use `#FFFFFF`, while secondary containers or background fills use `#F3F3F3` or `#E8E8E8` to create visual separation.
- **Flat Borders:** Containers, cards, and sections are defined by 1px solid borders in `#E8E8E8`.
- **Exception (Shadows):** Only "floating" components that exist outside the document flow (Popovers, Tooltips, Modals) utilize shadows to denote elevation.
  - **Popovers:** Light shadow (`0px 2px 8px rgba(0, 0, 0, 0.16)`)
  - **Modals:** Deep shadow (`0px 16px 48px rgba(0, 0, 0, 0.22)`)

## Shapes

The system balances industrial precision with modern approachability through a mixed shape language:

- **Structural Containers:** Page sections, cards, and header/side-nav containers have **0px (Sharp)** corners to emphasize the grid.
- **Interactive Elements:** Buttons and form inputs use a standard **8px (Rounded)** radius to signal interactability.
- **Specialty Shapes:** Pill-shaped variants (9999px) are used for specific tags or chips to differentiate them from primary action buttons.
- **Inputs:** Mini-inputs or smaller UI elements may scale down to 4px roundedness to maintain visual proportion.

## Components

### Buttons
- **Primary:** Solid `#000000` background with `#FFFFFF` text. 8px radius.
- **Secondary:** Solid `#E8E8E8` background with `#000000` text.
- **States:** Hover and Active states use a subtle dark inset overlay (`rgba(0,0,0,0.04)`) to simulate depth change without moving pixels.
- **Focus:** An inset 2px `#276EF1` border appears on keyboard focus.

### Input Fields
- **Base:** 2px solid `#F3F3F3` border with a `#F3F3F3` background.
- **Focus:** Transitions to a 2px solid `#000000` border and `#FFFFFF` background.
- **Validation:** Borders shift to `#DE1135` (Error) or `#0E8345` (Success) while maintaining the white background.

### Navigation
- **Header:** Full-width white background with a 1px bottom border (`#F3F3F3`). Center-aligned items.
- **Side Nav:** Vertical stack. Active items feature a 4px solid `#000000` leading-edge indicator and a light gray background tint (`#EBEBEB`).

### Additional Components
- **Progress Bar:** Segmented bars with 4px gaps. Active segments are `#276EF1`, inactive are `#E8E8E8`.
- **Cards:** No shadow, 1px solid `#E8E8E8` border, 0px border-radius, standard 24px internal padding.
- **Chips/Tags:** Pill-shaped (9999px radius), using `#F3F3F3` backgrounds for low-emphasis categorization.
