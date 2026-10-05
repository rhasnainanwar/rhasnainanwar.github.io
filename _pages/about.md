---
layout: about
title: About
permalink: /

profile:
  align: right
  image: PXL_20240102_144222706.RAW-01.COVER~2.jpg
  image_circular: false # crops the image to make it circular
  more_info: >
    <p>Microsoft Building 36</p>
    <p>16255 NE 36th Way,</p>
    <p>Redmond, WA 98052</p>

news: true # includes a list of news items
latest_posts: true # includes a list of the newest posts
selected_papers: true # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page
---

Hi, I am a ML Scientist II in OfficeAI @ Microsoft and a PhD student @ [University of Massachusetts Amherst](https://www.umass.edu/){:target="_blank"}. I work on security policy analysis of large-scale systems with [Dr. Muhammad Taqi Raza](https://people.umass.edu/taqi/){:target="_blank"} in [Khwarizmi Lab](https://khwarizmilab.github.io/){:target="_blank"}.

I find vulnerabilities in the authentication, authorization, and access-control protocols securing large-scale <span class="research-field">payment</span> systems, often distributed across independent parties or built on legacy designs. I showed that digital wallets' decentralized trust model lets an attacker add a victim's bank card to their own wallet and bypass payment authorization, validated against major US banks and wallet apps ([USENIX Security 2024](https://www.usenix.org/conference/usenixsecurity24/presentation/anwar){:target="_blank"}; covered by [The Register](https://www.theregister.com/2024/08/20/digital_wallets_simplify_fraud/){:target="_blank"} and [TechRadar](https://www.techradar.com/pro/digital-wallets-allow-for-the-use-of-stolen-credit-cards){:target="_blank"}). I later found a legacy flaw in the EMV contactless protocol that lets a Visa card with an altered expiry date complete purchases after being reported stolen ([USENIX Security 2026](https://www.usenix.org/conference/usenixsecurity26/presentation/anwar){:target="_blank"}; covered by [WIRED](https://www.wired.com/){:target="_blank"}, [The Hacker News](https://thehackernews.com/){:target="_blank"}, and [others]({{ '/media/' | relative_url }})).

This protocol-security methodology extends naturally to other distributed and legacy systems. In <span class="research-field">aviation</span>, I found that in-flight Wi-Fi paywalls share the same broken device-authentication logic as digital wallets, letting attackers bypass the paywall for free Internet access ([ACM WiSec 2025](https://doi.org/10.1145/3734477.3734713){:target="_blank"}). In <span class="research-field">5G</span>, I showed that radio-resource scheduling, which enforces the same kind of authorization logic I broke in payments, leaks which application a user is running in real time ([IEEE MASS 2024](https://arxiv.org/pdf/2407.07361){:target="_blank"}). In <span class="research-field">quantum</span> networking, I formally verified the classical control plane coordinating quantum key distribution against ETSI and ITU-T specifications and found three protocol-level vulnerabilities, along with countermeasures verified in Tamarin ([IEEE QCE 2026](https://qce.quantum.ieee.org/2026/wp-content/uploads/sites/13/2026/07/QCE26-Accepted_Technical_Papers_by_Track-c.pdf){:target="_blank"}). And in <span class="research-field">machine learning</span>, I extended this <span class="research-field">side-channel</span> lens to show that aggregate GPU execution profiles leak a deployed model's architecture with complete accuracy ([ACM TAISAP](https://dl.acm.org/doi/10.1145/3811923){:target="_blank"}).

Alongside security research, I study the capabilities of <span class="research-field">computer-use agents</span>. I co-developed [PPT-Eval](https://microsoft.github.io/ppteval/){:target="_blank"}, a benchmark of 120 PowerPoint creation and editing tasks with rubric-based evaluation that measures partial progress and penalizes unnecessary changes.

Before joining UMass, I completed my Bachelor's in Computer Science (BSCS) from [National University of Sciences and Technology (NUST)](https://nust.edu.pk/){:target="_blank"}, Pakistan in 2020. At NUST, I worked as a Research Assistant in the [TUKL-NUST R&D Center](https://tukl.seecs.nust.edu.pk/){:target="_blank"}, focusing on document detection, localization, and OCR for information extraction.