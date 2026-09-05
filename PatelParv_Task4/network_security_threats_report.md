# Common Network Security Threats

## Research Report

**Author:** Parv Patel

**Task:** Task 4 - Research Report: Common Network Security Threats

**Repository:** OIBSIP

---

## 1. Introduction

Network security threats are a major concern because modern
organizations depend on interconnected computers, servers, cloud
services, applications, wireless networks, and Internet-based
services. An attack against one part of this environment can affect
the confidentiality, integrity, or availability of systems and data.
Threats such as Distributed Denial of Service (DDoS), Man-in-the-
Middle (MITM), IP spoofing, and DNS poisoning can disrupt services,
intercept communications, impersonate trusted systems, or redirect
users to malicious destinations. Understanding how these attacks
work and applying appropriate preventive, detective, and response
controls is therefore an important responsibility for network
administrators.

---

# 2. DoS and DDoS Attacks

## 2.1 What is a DoS Attack?

A Denial of Service (DoS) attack attempts to make a system,
application, or network service unavailable to legitimate users.

An attacker can consume resources such as:

- Network bandwidth
- CPU processing capacity
- Memory
- Connection tables
- Application resources

When these resources are exhausted, legitimate requests may become
slow or completely unavailable.

## 2.2 What is a DDoS Attack?

A Distributed Denial of Service (DDoS) attack is a DoS attack
originating from multiple systems or sources.

Instead of relying on a single attacking machine, attackers may use
a large collection of compromised devices or abuse third-party
services to generate traffic toward a target.

DDoS attacks can also use reflection and amplification. In this
approach, relatively small requests can cause third-party systems
to generate much larger responses toward the victim.

---

## 2.3 How a DDoS Attack Works

A typical DDoS attack can be described as:

1. The attacker obtains access to many systems or identifies
   services that can be abused for traffic generation.
2. The attacker directs traffic or requests toward the target.
3. Large quantities of traffic reach the target infrastructure.
4. Network, server, or application resources become exhausted.
5. Legitimate users experience slow performance or service
   unavailability.

Reflection-amplification attacks are particularly dangerous because
the attacker can exploit systems that respond with much more data
than was originally sent.

---

## 2.4 Real-World Example: GitHub DDoS Attack

On February 28, 2018, GitHub experienced a large DDoS attack that
peaked at approximately 1.35 Tbps and about 126.9 million packets
per second.

The attack used a memcached-based amplification technique and
originated from more than one thousand autonomous systems and tens
of thousands of unique endpoints.

GitHub detected the abnormal traffic and shifted traffic toward
Akamai for mitigation. Access-control filtering and additional
traffic-management measures helped restore normal operation.

This incident demonstrated how reflection and amplification can
produce extremely large traffic volumes and how organizations can
use upstream DDoS mitigation providers to absorb and filter attacks.

**Source:** GitHub DDoS Incident Report; WIRED coverage.

---

## 2.5 Impact of DoS/DDoS

A successful DoS or DDoS attack can result in:

- Website or application downtime
- Loss of availability
- Reduced productivity
- Lost revenue
- Customer dissatisfaction
- Increased infrastructure costs
- Emergency incident-response expenses
- Damage to organizational reputation

For organizations providing critical online services, prolonged
unavailability can have significant operational consequences.

---

## 2.6 DDoS Mitigation Strategies

### 1. Use DDoS Protection and Traffic Scrubbing

Organizations can use dedicated DDoS mitigation providers or
distributed edge infrastructure to absorb large volumes of malicious
traffic.

Traffic can be inspected and filtered before reaching the protected
application or network.

### 2. Implement Rate Limiting and Traffic Filtering

Firewalls, load balancers, web application firewalls, and routers
can apply traffic filtering and rate limits.

These controls can restrict abnormal traffic patterns and prevent
a single source or traffic type from consuming excessive resources.

### 3. Prevent Reflection and Source Address Spoofing

Network operators should prevent their infrastructure from being
used for reflected attacks.

Source Address Validation (SAV), access-control lists (ACLs), and
unicast Reverse Path Forwarding (uRPF) can help prevent spoofed
traffic from entering networks.

NIST recommends these mechanisms as part of DDoS and IP-spoofing
mitigation.

---

# 3. Man-in-the-Middle (MITM) Attacks

## 3.1 What is a MITM Attack?

A Man-in-the-Middle attack, also called Adversary-in-the-Middle
(AiTM), occurs when an attacker positions themselves between two
communicating systems.

Instead of:

    User  <---------------->  Legitimate Server

the attacker attempts to create:

    User  <--------------->  Attacker  <--------------->  Server

The attacker may then attempt to observe, intercept, relay, or
modify communication.

MITM attacks can involve techniques such as:

- ARP cache poisoning
- DHCP spoofing
- DNS manipulation
- Rogue Wi-Fi access points
- Malicious proxies
- Certificate or authentication abuse

MITRE ATT&CK tracks these activities under
Adversary-in-the-Middle (T1557).

---

## 3.2 How a MITM Attack Works

A general MITM attack can involve the following stages:

1. The attacker gains a position on or near the victim's
   communication path.
2. The attacker causes traffic to pass through infrastructure
   controlled by the attacker.
3. The attacker observes or relays the communication.
4. If protections are weak, credentials, session information, or
   other data may be captured.
5. The attacker may potentially modify transmitted information.

For example, ARP cache poisoning can cause a victim system to
associate the attacker's MAC address with another system's IP
address.

---

## 3.3 Real-World Example: Sea Turtle Campaign

Cisco Talos documented the Sea Turtle campaign, which targeted
organizations in the Middle East and North Africa.

The campaign involved DNS manipulation followed by the use of
attacker-controlled Man-in-the-Middle infrastructure.

The attackers created fraudulent services that impersonated
legitimate organizations and used them to capture credentials.

This example demonstrates that MITM attacks can be combined with
DNS manipulation and impersonation to make malicious infrastructure
appear legitimate to victims.

**Source:** Cisco Talos, "DNS Hijacking Abuses Trust in Core
Internet Service."

---

## 3.4 Impact of MITM Attacks

Possible consequences include:

- Credential theft
- Session hijacking
- Exposure of sensitive information
- Manipulation of network traffic
- Unauthorized access
- Privacy violations
- Financial fraud
- Installation of malicious content

The impact is particularly serious when communication uses
unencrypted or improperly protected protocols.

---

## 3.5 MITM Mitigation Strategies

### 1. Use Strong Encryption

Use HTTPS and properly configured TLS for web applications and
other sensitive communication.

Encryption makes intercepted traffic significantly harder to read
or modify.

### 2. Protect Local Network Infrastructure

Network administrators can use controls such as:

- DHCP Snooping
- Dynamic ARP Inspection
- Network segmentation
- Secure switch configurations

These controls can reduce opportunities for ARP poisoning and
other local-network interception techniques.

### 3. Monitor for Abnormal Network Behavior

Organizations should monitor for:

- Unexpected ARP changes
- Rogue access points
- Unexpected DNS responses
- Certificate warnings
- Unusual network routes
- Suspicious authentication activity

Network intrusion detection and prevention systems can also help
identify MITM-related behavior.

---

# 4. IP Spoofing

## 4.1 What is IP Spoofing?

IP spoofing occurs when a system sends network packets using a
forged source IP address.

The source address in a packet normally indicates where the packet
originated. With spoofing, an attacker manipulates this value so
that the packet appears to originate from another address.

IP spoofing does not necessarily mean that the attacker has gained
control of the spoofed system.

---

## 4.2 How IP Spoofing Works

A simplified process is:

1. The attacker creates network traffic.
2. The attacker changes the source IP address in the packet.
3. The packet is transmitted toward a target or another service.
4. The receiving system sees the forged source address.
5. The spoofed address can make attribution more difficult or can
   be used in reflection attacks.

Because some network protocols do not inherently authenticate the
source IP address, additional network controls are required.

---

## 4.3 Real-World Example: IP Spoofing in the GitHub DDoS Attack

The 2018 GitHub DDoS attack used a memcached reflection-amplification
method.

Attack traffic could use the victim's address as the apparent
source of requests sent to vulnerable memcached servers. Those
servers then generated much larger responses toward GitHub.

This illustrates how IP spoofing can be combined with reflection
and amplification to greatly increase the volume of traffic
delivered to a victim.

**Source:** GitHub DDoS Incident Report and NIST SP 800-189.

---

## 4.4 Impact of IP Spoofing

IP spoofing can be used to:

- Hide the apparent origin of malicious traffic
- Enable reflection attacks
- Support DDoS attacks
- Bypass weak source-address filtering
- Complicate incident investigation
- Impersonate trusted network addresses in some environments

Spoofing is particularly dangerous when combined with protocols
or services that trust source addresses without sufficient
authentication.

---

## 4.5 IP Spoofing Mitigation Strategies

### 1. Implement Source Address Validation

Network administrators should implement Source Address Validation
(SAV) to prevent packets with invalid source addresses from entering
or leaving appropriate network boundaries.

### 2. Use ACLs and uRPF

Access-control lists can filter traffic with invalid or unexpected
source addresses.

Unicast Reverse Path Forwarding (uRPF) can also verify whether a
packet's source address is reachable through the expected interface.

NIST identifies SAV using ACLs and uRPF as important mechanisms for
preventing IP address spoofing.

### 3. Apply Network Segmentation and Monitoring

Network segmentation can limit the potential impact of spoofed
traffic.

Traffic monitoring can also help detect unusual source-address
patterns and identify possible spoofing attempts.

---

# 5. DNS Poisoning and DNS Spoofing

## 5.1 What is DNS?

The Domain Name System (DNS) translates human-readable domain names
into IP addresses.

For example:

    example.com  ->  IP address

Applications rely on DNS to locate servers and services.

Because DNS information determines where users connect, manipulating
DNS information can redirect users to attacker-controlled systems.

---

## 5.2 What is DNS Poisoning?

DNS cache poisoning occurs when fraudulent DNS information is
inserted into a resolver's cache.

If the poisoned information is accepted, future users requesting
the affected domain may receive an incorrect IP address.

Instead of:

    legitimate-domain.com -> legitimate server

the poisoned response may cause:

    legitimate-domain.com -> attacker-controlled server

This can redirect users to phishing or malicious websites.

---

## 5.3 How DNS Poisoning Works

A simplified cache-poisoning scenario is:

1. A victim's system requests the IP address of a domain.
2. The recursive resolver processes the request.
3. An attacker attempts to provide a forged DNS response.
4. If the forged response is accepted, incorrect information can
   enter the resolver's cache.
5. Subsequent users may receive the fraudulent IP address.
6. Users can then be redirected to an attacker-controlled site.

Modern DNS implementations include defenses against many historical
forms of cache poisoning, but DNS infrastructure and DNS management
still require strong security controls.

---

## 5.4 Real-World Example: Sea Turtle DNS Hijacking Campaign

Cisco Talos documented the Sea Turtle campaign, which involved
compromising DNS infrastructure and modifying DNS records.

The attackers responded to DNS requests with falsified A records,
redirecting victims toward infrastructure controlled by the
attackers.

The campaign demonstrates how control over DNS information can be
used to redirect users and support credential theft.

**Source:** Cisco Talos, "Sea Turtle Keeps on Swimming" and
"DNS Hijacking Abuses Trust in Core Internet Service."

---

## 5.5 Impact of DNS Poisoning

DNS manipulation can result in:

- Redirection to phishing websites
- Credential theft
- Malware delivery
- Loss of user trust
- Interruption of legitimate services
- Traffic interception
- Unauthorized access to accounts

The impact can be significant because users may believe they are
connecting to a legitimate domain.

---

## 5.6 DNS Poisoning Mitigation Strategies

### 1. Deploy DNSSEC

DNS Security Extensions (DNSSEC) provide cryptographic mechanisms
that help validate the authenticity and integrity of DNS data.

DNSSEC can help prevent attackers from successfully substituting
fraudulent DNS information.

### 2. Secure DNS Infrastructure

Organizations should:

- Protect authoritative DNS servers.
- Restrict administrative access.
- Use strong authentication.
- Keep DNS software updated.
- Monitor DNS configuration changes.
- Apply least-privilege access.

### 3. Monitor DNS Responses and Changes

Network administrators should monitor:

- Unexpected DNS record changes
- Unauthorized nameserver changes
- Suspicious DNS responses
- Unusual DNS traffic
- Unexpected domain resolutions

Rapid detection of unauthorized DNS changes can reduce the time
available for an attacker to redirect users.

---

# 6. Comparison of Network Security Threats

| Threat | Attack Vector | Who is at Risk? | Difficulty to Execute | Ease of Mitigation |
|---|---|---|---|---|
| DoS/DDoS | High-volume or resource-exhaustion traffic | Websites, APIs, networks, cloud services | Medium to High | Medium |
| MITM | Network interception, ARP/DHCP/DNS manipulation, rogue Wi-Fi | Users, organizations, internal networks | Medium | Medium |
| IP Spoofing | Forged source IP addresses | Networks and Internet services | Medium | Medium |
| DNS Poisoning/Spoofing | Manipulation of DNS responses or records | DNS users, organizations, websites | Medium to High | Medium |

### Interpretation

**DoS/DDoS:** Large-scale attacks can require significant
infrastructure, but attackers can also use inexpensive
reflection/amplification methods.

**MITM:** Difficulty depends heavily on the attacker's ability to
gain a position on the communication path. Proper encryption and
network controls significantly reduce the risk.

**IP Spoofing:** Creating spoofed packets can be technically
straightforward, but using spoofing successfully against protected
networks is more difficult because of source-address validation
and filtering.

**DNS Poisoning/Spoofing:** The difficulty depends on the specific
DNS attack. Compromising DNS infrastructure is difficult, while
some local or misconfigured environments may be easier to abuse.

---

# 7. Relationship Between the Threats

These threats are not always independent.

Attackers may combine multiple techniques during a single campaign.

For example:

    IP Spoofing
         |
         v
    Reflection
         |
         v
       DDoS

Another possible chain is:

    DNS Manipulation
         |
         v
    Redirect Victim
         |
         v
      MITM
         |
         v
   Credential Theft

This shows why network security should use multiple layers of
protection rather than relying on one security control.

---

# 8. Key Takeaways for Network Administrators

## Takeaway 1 — Protect Availability

Network administrators should prepare for DDoS attacks using
traffic monitoring, rate limiting, filtering, scalable
infrastructure, and upstream DDoS mitigation services.

## Takeaway 2 — Protect Communication

Sensitive communications should use properly configured encryption.
Network segmentation, secure switching controls, and monitoring
can further reduce the risk of MITM attacks.

## Takeaway 3 — Protect Network Trust

Administrators should validate network identities and protect
DNS infrastructure. Source-address validation, DNSSEC, strong
authentication, access control, and continuous monitoring help
prevent attackers from abusing network trust.

---

# 9. Conclusion

DoS/DDoS attacks, Man-in-the-Middle attacks, IP spoofing, and DNS
poisoning represent different ways attackers can abuse network
availability, communication, and trust.

DDoS attacks primarily threaten availability by overwhelming
resources. MITM attacks threaten the confidentiality and integrity
of communications by attempting to position an attacker between
communicating systems. IP spoofing allows attackers to forge the
apparent source of network traffic and can support reflection and
DDoS attacks. DNS poisoning can manipulate the system used to
translate domain names into network destinations, potentially
redirecting users toward malicious infrastructure.

Three important principles should guide network administrators:

1. **Monitor and protect availability.**
2. **Encrypt and authenticate sensitive communication.**
3. **Validate network identities and protect critical infrastructure
   such as DNS and routing systems.**

No single security control can prevent every network attack.
Effective network defense requires layered security, secure
configuration, continuous monitoring, timely patching, appropriate
access controls, and an incident-response plan.

---

# 10. References

[1] National Institute of Standards and Technology (NIST).
**SP 800-189: Resilient Interdomain Traffic Exchange: BGP Security
and DDoS Mitigation.** 2019.

[2] MITRE ATT&CK.
**T1557: Adversary-in-the-Middle.**

[3] MITRE ATT&CK.
**T1557.002: Adversary-in-the-Middle: ARP Cache Poisoning.**

[4] MITRE ATT&CK.
**T1557.003: Adversary-in-the-Middle: DHCP Spoofing.**

[5] GitHub.
**February 28th DDoS Incident Report.** 2018.

[6] WIRED.
**GitHub Survived the Biggest DDoS Attack Ever Recorded.** 2018.

[7] Cisco Talos.
**DNS Hijacking Abuses Trust in Core Internet Service: Sea Turtle.**
2019.

[8] Cisco Talos.
**Sea Turtle Keeps on Swimming: DNS Hijacking Techniques.** 2019.

[9] Internet Corporation for Assigned Names and Numbers (ICANN).
**DNSSEC – What Is It and Why Is It Important?**

[10] National Institute of Standards and Technology (NIST).
**SP 800-81r3: Secure Domain Name System (DNS) Deployment Guide.**
2026.

---

# 11. Ethical and Research Note

This report is intended for cybersecurity education and defensive
security awareness.

The techniques discussed should only be tested in environments
where the tester has explicit authorization.

Network administrators should use these concepts to identify,
prevent, detect, and respond to security threats rather than to
conduct unauthorized attacks.
