# Features & Components

Detailed documentation of all portfolio features and components.

## Pages Overview

### 1. Home (`/`)
- Portfolio hero section
- Featured projects showcase
- Call-to-action buttons
- Quick navigation

### 2. About (`/about`)
- Personal bio and introduction
- Skills overview
- Professional summary
- Links to social profiles

### 3. Education (`/education`)
- Academic timeline
- Degrees and certifications
- Educational institutions
- Timeline visualization

### 4. Experience (`/experience`)
- Work history timeline
- Job titles and descriptions
- Company information
- Date ranges and duration

### 5. Projects (`/projects`)
- 16 portfolio projects displayed as cards
- Click card to open modal with:
  - Project description
  - Key features (list)
  - Technology stack (badges)
  - Detailed overview
- Categories: Web Apps, SaaS, Web3, IoT, E-Commerce, Gaming, Social

#### Project Categories

| Category | Projects | Count |
|----------|----------|-------|
| E-Commerce | ExpertConnect, StoreHub | 2 |
| Web Apps | LiveTips, CeremonyHub, LearnHub, SmartCity | 4 |
| SaaS | TrackFleet, FreelanceHub, FactoryPro, KoperasiHub | 4 |
| Web3 | CryptoVault, TokenBridge, EscrowChain | 3 |
| IoT | SmartHub | 1 |
| Other | Digital Invite, ForecastAI, GamePal, ConnectSphere | 4 |

### 6. Articles (`/articles`)
- 3 published research articles
- Click card to open modal with:
  - Full abstract from journal
  - Metadata (journal, date, SINTA ranking)
  - "Read Full Paper" button linking to DOI/journal
- SINTA badges showing ranking (Sinta 3, Sinta 5)

#### Articles

| Title | Journal | SINTA | Status |
|-------|---------|-------|--------|
| Hybrid ML for Project Risk | Sinkron | 3 | Published |
| SOA Comparison Analysis | JUTIN | 5 | Published |
| COCO-SSD Object Detection | JRSIT | - | Published |

### 7. Contact (`/contact`)
- Contact form
- Contact information
- Social media links
- Email and phone

### 8. CV (`/cv`)
- A4 aspect ratio preview
- Downloadable PDF
- Full CV document display
- Print-friendly styling

## Interactive Components

### 📱 Hamburger Menu

**Trigger:** Screen size < 480px (mobile)

**Features:**
- Fixed bottom-right corner
- Animated X icon (toggles menu)
- Fullscreen overlay menu
- Smooth fade-in/out animation
- Click outside or ESC to close
- Touch-friendly buttons

**HTML:**
```html
<nav class="hamburger-menu" id="hamburgerMenu">
    <button class="hamburger-btn">☰</button>
    <div class="menu-overlay">
        <!-- Navigation links -->
    </div>
</nav>
```

**CSS:**
```css
.hamburger-btn {
    position: fixed;
    bottom: 2rem;
    right: 2rem;
    z-index: 1000;
}

@media (max-width: 480px) {
    .hamburger-btn { display: block; }
}

@media (min-width: 481px) {
    .hamburger-btn { display: none; }
}
```

### 🎯 Project Modal

**Trigger:** Click on project card

**Contents:**
- Project title
- Full description
- Features list (bullet points)
- Technology stack (tags/badges)
- Close button

**JavaScript:**
```javascript
function openModal(projectId) {
    const modal = document.getElementById(`modal-${projectId}`);
    modal.style.display = 'flex';
    modal.classList.add('fadeIn');
}

function closeModal(projectId) {
    const modal = document.getElementById(`modal-${projectId}`);
    modal.classList.remove('fadeIn');
    modal.style.display = 'none';
}

// Close on ESC or click outside
document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') closeModal(currentId);
});
```

**CSS:**
```css
.modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.5);
    z-index: 999;
    animation: fadeIn 0.3s ease-in;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

@keyframes slideUp {
    from { transform: translateY(20px); opacity: 0; }
    to { transform: translateY(0); opacity: 1; }
}
```

### 📰 Article Modal

**Trigger:** Click on article card

**Contents:**
- Article title
- Full abstract
- Metadata:
  - Journal name
  - Publication date
  - Volume/Issue
  - SINTA ranking
  - Authors
- "Read Full Paper" button (opens journal link)
- Close button

**Unique Features:**
- Abstract in clean box (no orange border)
- SINTA badges on card (Sinta 3, Sinta 5)
- "Read Paper" only in modal (removed from card)
- DOI/URL links to full paper

### 🎨 Responsive Typography

**CSS clamp() Implementation:**

```css
h1 {
    font-size: clamp(1.5rem, 5vw, 3rem);
}

h2 {
    font-size: clamp(1.25rem, 4vw, 2.5rem);
}

h3 {
    font-size: clamp(1.1rem, 3vw, 2rem);
}

p {
    font-size: clamp(0.9rem, 2vw, 1rem);
}
```

**Benefit:** Automatically scales between min and max based on viewport

### 📄 CV Preview

**Features:**
- A4 aspect ratio (210mm × 297mm)
- Responsive sizing (85-95% of viewport height)
- Print-friendly styling
- PDF download button
- Aligned width with footer (max 1400px)

**CSS:**
```css
.cv-preview {
    aspect-ratio: 210 / 297;
    max-height: 90vh;
    max-width: 1400px;
    background: white;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    margin: 2rem auto;
}
```

## Animations

### Page Transitions
- Smooth fade-in (0.3s)
- No jarring jumps

### Modal Animations
- **Open:** fadeIn (0.3s) + slideUp (0.4s)
- **Close:** Reverse animation

### Hover Effects
- Cards: slight scale-up + shadow increase
- Buttons: color transition + cursor change
- Links: underline animation

### CSS Transitions
```css
* {
    transition: all 0.3s ease;
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.card:hover {
    transform: scale(1.02);
}
```

## Accessibility

### Keyboard Navigation
- TAB: Navigate between elements
- ENTER: Activate buttons and links
- ESC: Close modals
- Arrow keys: Navigate lists (future)

### Screen Readers
- Semantic HTML (nav, main, section, article)
- ARIA labels on interactive elements
- Alt text on images
- Proper heading hierarchy

### Color Contrast
- Text: 4.5:1 ratio (WCAG AA)
- Links: Underlined or distinct color
- Buttons: Clear focus states

### Mobile Accessibility
- Touch targets: 44×44px minimum
- Readable font size: 16px minimum
- Sufficient spacing between clickable elements
- Portrait and landscape support

## Performance Optimizations

### Current
- ✅ No external frameworks (vanilla JS)
- ✅ Minimal CSS (embedded)
- ✅ Optimized images (PNG, small)
- ✅ No tracking/analytics overhead

### Future
- [ ] Lazy loading for images
- [ ] CSS code splitting
- [ ] JavaScript minification
- [ ] WebP image format
- [ ] Service Worker for offline mode
- [ ] Critical CSS inlining

## SEO Features

- ✅ Semantic HTML5 structure
- ✅ Proper heading hierarchy (h1 → h6)
- ✅ Meta descriptions (in HTML head)
- ✅ Open Graph tags (social sharing)
- ✅ Schema markup (JSON-LD)
- ✅ Mobile-responsive design
- ✅ Fast page load times

## Browser Support

| Browser | Support |
|---------|---------|
| Chrome | ✅ All versions |
| Firefox | ✅ All versions |
| Safari | ✅ 12+ |
| Edge | ✅ All versions |
| IE11 | ⚠️ Limited (CSS Grid issues) |

---

**For Questions:**
- See [STRUCTURE.md](../STRUCTURE.md) for folder organization
- See [DEPLOYMENT.md](./DEPLOYMENT.md) for deployment info
