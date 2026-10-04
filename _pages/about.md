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

I find vulnerabilities in the authentication, authorization, and access-control protocols that secure large-scale payment systems, often protocols that are distributed across many independent parties or built on legacy designs never meant to withstand today's threats. I showed that digital wallets' decentralized trust model lets an attacker add a victim's bank card to their own wallet and bypass payment authorization entirely, a flaw validated against major US banks and wallet apps, including Chase, AMEX, Bank of America, Apple Pay, Google Pay, and PayPal ([USENIX Security 2024](https://www.usenix.org/conference/usenixsecurity24/presentation/anwar){:target="_blank"}). More recently, I found that a legacy quirk in the EMV contactless protocol lets a Visa card with an altered expiry date complete purchases at live terminals, even after the real card has expired or been reported stolen ([USENIX Security 2026](https://www.usenix.org/conference/usenixsecurity26/presentation/anwar){:target="_blank"}; covered by [WIRED](https://www.wired.com/){:target="_blank"}, [The Hacker News](https://thehackernews.com/){:target="_blank"}, and [U.S. News & World Report](https://www.usnews.com/){:target="_blank"}, among [others]({{ '/media/' | relative_url }})).

I have carried this protocol-security methodology from payments into other large-scale systems that share the same distributed-trust or legacy-protocol weaknesses. In aviation, I found that in-flight Wi-Fi paywalls rely on the same broken device-authentication logic as digital wallets, letting attackers bypass the paywall entirely for free, unlimited Internet access ([ACM WiSec 2025](https://doi.org/10.1145/3734477.3734713){:target="_blank"}). In 5G, I showed that the radio-resource scheduling that networks use to enforce per-application service policies, conceptually similar to the authorization logic I broke in payments, leaks enough information to fingerprint which application a user is running in real time ([IEEE MASS 2024](https://arxiv.org/pdf/2407.07361){:target="_blank"}). In quantum networking, I applied the same lens to the classical control plane that coordinates quantum key distribution hardware, probing whether its authentication guarantees can undermine the unconditional security promised by the quantum channel itself (2026 IEEE QCE). And in machine learning systems, I extended this protocol- and side-channel-driven approach to show that aggregate GPU execution profiles, exposed without any special hardware access, leak a deployed model's architecture with complete accuracy ([ACM TAISAP](https://dl.acm.org/doi/10.1145/3811923){:target="_blank"}).

Before joining UMass, I completed my Bachelor's in Computer Science (BSCS) from [National University of Sciences and Technology (NUST)](https://nust.edu.pk/){:target="_blank"}, Pakistan in 2020. At NUST, I worked as a Research Assistant in the [TUKL-NUST R&D Center](https://tukl.seecs.nust.edu.pk/){:target="_blank"}, focusing on document detection, localization, and OCR for information extraction.