# Social Engineering Attacks

## Research Report

**Author:** Parv Patel
**Task:** Task 5 - Research Report: Social Engineering Attacks
**Repository:** OIBSIP

---

## 1. Introduction

Social engineering is the use of deception, manipulation, impersonation, or psychological pressure to influence people into revealing information, performing an action, or providing access that an attacker should not have. Unlike attacks that depend primarily on exploiting a software vulnerability, social engineering targets human decision-making and trust. Common techniques include phishing, pretexting, baiting, quid pro quo, and impersonation. SANS describes social engineering as one of the most effective ways attackers can penetrate an organization's infrastructure because human behavior contains many variables that are difficult to secure through technical controls alone.

Phishing is particularly important because it can be delivered through email, websites, telephone calls, and text messages. CISA identifies spearphishing, whaling, vishing, and smishing as important forms of phishing.

Social engineering is effective because attackers commonly exploit normal human characteristics such as trust, urgency, fear, curiosity, authority, helpfulness, and the desire to receive something valuable. A successful attack may therefore require little or no exploitation of a technical vulnerability.

---

# 2. Phishing

## 2.1 What is Phishing?

Phishing is a social engineering technique in which an attacker impersonates a trusted person, organization, service, or website to persuade a victim to perform an unsafe action.

The attacker may attempt to make the victim:

* Reveal a username or password.
* Provide financial information.
* Click a malicious link.
* Open an attachment.
* Install malicious software.
* Approve an authentication request.
* Contact the attacker through a phone number or messaging service.

CISA describes phishing as social engineering that uses messages or malicious websites to obtain information or encourage victims to download malicious software while appearing to come from a trustworthy entity.

---

## 2.2 Types of Phishing

### A. Spear Phishing

Spear phishing is a targeted phishing attack aimed at a particular individual or organization.

Instead of sending the same message to thousands of random users, the attacker researches the intended victim and creates a more convincing message.

For example, an attacker may research an employee's:

* Name
* Job position
* Department
* Company
* Projects
* Colleagues
* Business relationships

The attacker can then create a message that appears relevant to the victim.

### B. Whaling

Whaling is a form of targeted phishing aimed at high-value individuals such as:

* CEOs
* Company directors
* Senior executives
* Finance managers
* Government officials

The objective is usually to obtain valuable credentials, confidential information, or authorization for financial transactions.

### C. Vishing

Vishing means **voice phishing**.

Instead of using only email, the attacker uses a telephone call or other voice communication to manipulate the victim.

The attacker may pretend to be:

* A bank employee
* IT support
* A government representative
* A company's security team
* A service provider

The attacker may create urgency and ask the victim to disclose information or perform an action.

### D. Smishing

Smishing means **SMS phishing**.

The attacker sends a fraudulent text message that appears to come from a trusted organization or service.

Examples include fake messages claiming:

* A bank account has been suspended.
* A package delivery requires payment.
* An account needs verification.
* A security problem requires immediate action.

The victim may be directed to a malicious website or asked to download an application.

CISA specifically identifies spearphishing, whaling, vishing, and smishing as different forms of phishing.

---

## 2.3 How Phishing Works

A typical phishing attack can follow these stages:

1. **Target selection**
   The attacker identifies potential victims.

2. **Information gathering**
   Publicly available information may be used to make the attack more convincing.

3. **Message creation**
   The attacker creates an email, text message, phone call, or fake website.

4. **Psychological manipulation**
   The message may create urgency, fear, curiosity, authority, or financial pressure.

5. **Victim interaction**
   The victim clicks a link, opens a file, provides information, or follows instructions.

6. **Credential or information theft**
   The attacker may obtain passwords, authentication information, financial information, or other sensitive data.

7. **Further exploitation**
   Stolen credentials may be used to access additional systems or accounts.

---

## 2.4 Real-World Case Study: 2020 Twitter Attack

A major example of social engineering occurred at Twitter in July 2020.

According to Twitter's own investigation, attackers targeted a small number of employees using a **phone spear-phishing attack**. The attackers obtained employee credentials and used access to Twitter's internal systems to learn which employees had access to account-management tools.

The attackers subsequently targeted employees with more useful privileges.

Twitter reported that:

* 130 accounts were targeted.
* Attackers tweeted from 45 accounts.
* Direct-message inboxes of 36 accounts were accessed.
* Twitter data was downloaded from 7 accounts.

The incident demonstrated that attackers did not need to directly exploit Twitter's core software to achieve significant results. Instead, they targeted employees and abused legitimate internal access.

This case demonstrates the importance of protecting the human layer as well as technical infrastructure.

---

## 2.5 Impact of Phishing

Successful phishing can result in:

* Credential theft.
* Account takeover.
* Identity theft.
* Financial fraud.
* Malware infections.
* Unauthorized access to internal systems.
* Data breaches.
* Business email compromise.
* Further attacks against other employees.

The consequences can become significantly greater when a compromised account belongs to an employee with administrative or financial privileges.

---

## 2.6 Phishing Prevention Recommendations

### 1. Use Multi-Factor Authentication

Organizations should enable MFA on important accounts.

MFA provides an additional authentication factor so that a stolen password alone is less likely to provide complete account access. CISA recommends MFA because it can make unauthorized access significantly harder even when passwords are compromised through phishing.

### 2. Verify Unexpected Requests

Employees should independently verify unusual requests before taking action.

For example, if an employee receives an urgent request to transfer money or reveal confidential information, they should verify the request using a trusted communication method rather than simply replying to the original message.

### 3. Train Employees to Identify Phishing Indicators

Employees should learn to recognize:

* Unexpected attachments.
* Suspicious sender addresses.
* Urgent requests.
* Fake login pages.
* Suspicious links.
* Requests for passwords or MFA codes.
* Unexpected financial requests.

Organizations can also conduct controlled phishing-awareness exercises.

### 4. Use Technical Email and Web Protections

Organizations should use security controls such as:

* Spam filtering.
* Email authentication.
* Malware scanning.
* Link protection.
* Attachment sandboxing.
* Web filtering.
* Endpoint security.

Technical controls reduce the number of malicious messages that reach employees and provide additional protection when users make mistakes.

---

# 3. Pretexting

## 3.1 Definition

Pretexting is a social engineering technique in which an attacker creates a false story or situation, known as a **pretext**, to convince a victim to provide information or perform an action.

The attacker may impersonate someone such as:

* IT support staff.
* A manager.
* A bank employee.
* A supplier.
* A customer.
* A government official.
* A security employee.

The objective is to make the request appear legitimate.

ENISA describes pretexting as using a false justification for a specific action to gain the victim's trust.

---

## 3.2 How an Attacker Builds a False Scenario

A pretexting attack commonly involves:

### Step 1: Research

The attacker collects information about the victim or organization.

### Step 2: Choose an Identity

The attacker selects a believable identity, such as an IT administrator or senior manager.

### Step 3: Create a Situation

The attacker develops a believable reason for contacting the victim.

For example:

> "We detected a problem with your account and need to verify your identity."

### Step 4: Establish Trust

The attacker may use real names, company information, job titles, or technical terminology.

### Step 5: Request an Action

The victim may be asked to:

* Provide information.
* Reset a password.
* Approve a transaction.
* Reveal an authentication code.
* Transfer money.
* Provide access to a system.

---

## 3.3 Real-World Case Study: Ubiquiti Business Email Compromise

In 2015, Ubiquiti Networks became the victim of a business email compromise involving employee impersonation and fraudulent requests targeting its finance department.

According to Ubiquiti's SEC filing, attackers impersonated company executives and an external legal representative. Employees received emails that appeared to contain legitimate instructions relating to a business transaction.

The attackers used the false scenario and impersonation to persuade employees to authorize multiple wire transfers.

The company reported that the fraudulent transfers totaled approximately **$46.7 million**.

This case demonstrates how pretexting can combine impersonation, authority, confidentiality, and a believable business scenario to manipulate employees into performing high-impact actions.

---

## 3.4 Impact of Pretexting

Pretexting can result in:

* Financial losses.
* Unauthorized disclosure of information.
* Credential theft.
* Fraudulent transactions.
* Unauthorized account access.
* Exposure of confidential business information.
* Damage to organizational reputation.

---

## 3.5 Prevention Measures

### 1. Establish Independent Verification

Employees should verify sensitive requests through a separate trusted channel.

For example, financial transfer requests should be confirmed through an approved procedure rather than relying solely on email.

### 2. Follow Least-Privilege and Approval Procedures

Sensitive actions should require appropriate authorization.

High-risk activities such as financial transfers, privilege changes, and account recovery should have approval and verification requirements.

### 3. Train Employees Against Impersonation

Employees should be trained to recognize attempts involving:

* Authority.
* Urgency.
* Secrecy.
* Unusual requests.
* Executive impersonation.
* IT-support impersonation.

---

# 4. Baiting

## 4.1 Definition

Baiting is a social engineering technique that uses something attractive or interesting to encourage a victim to perform an unsafe action.

The attacker creates a "bait" that the victim wants to access.

Examples include:

* Free software.
* Fake downloads.
* Free media files.
* Infected USB drives.
* Fake documents.
* Promising advertisements.
* Files with interesting names.

ENISA describes baiting as luring a victim into performing a task by providing access to something the victim wants.

---

## 4.2 Physical Baiting

Physical baiting uses a physical object to attract a victim.

A classic example is an unknown USB drive left in an area where employees may find it.

The device may be labeled with an attractive or relevant name such as:

* "Salary Information"
* "Private Photos"
* "Company Documents"
* "Confidential"

The victim's curiosity may cause them to connect the device to a computer.

This can expose the system to malware or other security risks.

---

## 4.3 Digital Baiting

Digital baiting occurs online.

An attacker may provide a file, application, or download that appears attractive.

Examples include:

* Cracked software.
* Fake security tools.
* Fake browser updates.
* Pirated applications.
* Free games.
* Fake documents.
* Malicious media files.

The victim's desire to obtain the advertised item encourages them to bypass normal security precautions.

---

## 4.4 Real-World Case Study: Stuxnet and Removable Media

Stuxnet provides an important example of malware spreading through removable media.

Security research documented that Stuxnet could copy itself to inserted removable drives and use removable media as one of its propagation methods.

Industrial control environments were particularly relevant because some systems used computers that were not continuously connected to networks and relied on removable drives for transferring information.

The Stuxnet case demonstrates why unknown or untrusted removable media can create a significant security risk, particularly in environments where USB devices are commonly used.

Although Stuxnet was a sophisticated malware campaign rather than simply a basic "leave a USB stick somewhere" social-engineering attack, its removable-media propagation illustrates the security risk associated with untrusted physical media.

---

## 4.5 Impact of Baiting

Baiting can lead to:

* Malware infection.
* Credential theft.
* Unauthorized software installation.
* Data theft.
* Compromise of internal systems.
* Malware propagation between systems.

Physical baiting can be especially dangerous because employees may connect unknown devices directly to organizational computers.

---

## 4.6 Baiting Prevention Measures

### 1. Restrict Unauthorized USB Devices

Organizations should control the use of removable media through endpoint security policies and device-control technologies.

Unknown USB devices should not automatically be trusted.

### 2. Download Software Only From Trusted Sources

Employees should obtain software from approved vendors and official repositories.

Cracked software and suspicious free downloads should be avoided.

### 3. Train Employees to Treat Unexpected Media as Suspicious

Employees should understand that:

* Unknown USB drives should not be connected.
* Unexpected files should not automatically be opened.
* Free or attractive downloads can be malicious.
* Security warnings should not be ignored.

---

# 5. Quid Pro Quo — Bonus

## 5.1 Definition

**Quid pro quo** is a social engineering technique in which the attacker offers a supposed benefit or service in exchange for information or an action.

The phrase essentially means **"something for something."**

For example, an attacker may pretend to be an IT technician and offer to fix an employee's computer in exchange for the employee's password or access information.

Another example could be a fake technical-support caller claiming that a security problem can be fixed if the victim installs a particular program.

---

## 5.2 Psychological Lever

Quid pro quo attacks exploit:

* Reciprocity.
* Helpfulness.
* Desire for assistance.
* Fear of technical problems.
* Desire for rewards or benefits.

The victim may believe that accepting the offered help is reasonable.

---

## 5.3 Prevention

Organizations can reduce quid pro quo attacks by:

1. **Verifying support personnel**
   Employees should confirm that unexpected technical-support requests are legitimate.

2. **Never sharing passwords**
   IT personnel should not require employees to disclose their passwords.

3. **Using approved support channels**
   Technical support should be initiated through official organizational systems and procedures.

---

# 6. Comparison of Social Engineering Attacks

| Attack Type    | Primary Target                                  | Psychological Lever Exploited   | Best Countermeasure                         |
| -------------- | ----------------------------------------------- | ------------------------------- | ------------------------------------------- |
| Phishing       | General employees, customers, account holders   | Urgency, fear, trust, curiosity | Security awareness + MFA                    |
| Spear Phishing | Specific employees or departments               | Personalization and trust       | Verification + MFA + email security         |
| Whaling        | Executives and high-value employees             | Authority and business pressure | Strong approval and verification procedures |
| Vishing        | Employees and customers                         | Trust, authority, urgency       | Caller verification and security training   |
| Smishing       | Mobile users and customers                      | Urgency, fear, curiosity        | Link awareness and mobile security          |
| Pretexting     | Employees with access to information or systems | Authority, trust, impersonation | Independent verification                    |
| Baiting        | Employees and system users                      | Curiosity, reward, desire       | Device/download controls                    |
| Quid Pro Quo   | Employees seeking assistance                    | Reciprocity and helpfulness     | Verified support procedures                 |

---

# 7. Organisational Security Awareness Training Checklist

Organizations should provide continuous security awareness training rather than relying only on one-time training.

## 1. Teach Employees to Recognize Phishing

Employees should learn to identify:

* Suspicious sender addresses.
* Unexpected attachments.
* Suspicious links.
* Urgent requests.
* Fake login pages.
* Requests for credentials or MFA codes.

## 2. Teach Verification Procedures

Employees should know how to independently verify:

* Financial requests.
* Password-reset requests.
* IT-support requests.
* Executive instructions.
* Requests for sensitive information.

## 3. Teach Safe Handling of Devices and Downloads

Employees should understand:

* Never connect unknown USB devices.
* Do not install unauthorized software.
* Download applications only from trusted sources.
* Report suspicious files and devices.

## 4. Practice Through Controlled Exercises

Organizations should periodically conduct:

* Phishing simulations.
* Social-engineering awareness exercises.
* Incident-reporting exercises.

The purpose should be education and improvement rather than punishment.

## 5. Encourage Immediate Reporting

Employees should be encouraged to report suspicious activity quickly.

They should understand that reporting a mistake early can help security teams:

* Disable compromised accounts.
* Reset credentials.
* Isolate affected systems.
* Investigate the incident.
* Prevent additional damage.

---

# 8. General Prevention Strategy

Social engineering cannot be addressed by a single security product.

A layered approach should combine:

* Employee security awareness.
* Multi-factor authentication.
* Strong identity management.
* Least-privilege access.
* Email security.
* Endpoint protection.
* Network segmentation.
* Device control.
* Secure approval procedures.
* Incident reporting.
* Regular security testing.

The goal is to prevent a single human mistake from becoming a major security incident.

---

# 9. Key Lessons

Three major lessons can be learned from social engineering attacks:

### 1. Humans Are Part of the Security Boundary

Even strong technical systems can be undermined if an attacker successfully manipulates an authorized employee.

### 2. Verification Is Critical

Sensitive requests should not be trusted simply because they appear to come from a manager, IT department, bank, or other trusted organization.

Independent verification is an important defense.

### 3. Security Must Be Layered

Organizations should combine employee training with MFA, access controls, email security, endpoint protection, device controls, and clear reporting procedures.

---

# 10. Conclusion

Social engineering attacks exploit human trust and decision-making rather than relying exclusively on technical vulnerabilities. Phishing, pretexting, baiting, and quid pro quo attacks use different psychological techniques but share the objective of convincing victims to perform actions that benefit the attacker.

Phishing can steal credentials through email, telephone calls, or text messages. Pretexting creates a believable false scenario to obtain information or authorization. Baiting uses an attractive object, download, or opportunity to encourage unsafe behavior. Quid pro quo uses an offered service or benefit to influence the victim.

Real-world incidents such as the 2020 Twitter attack and Ubiquiti's business email compromise demonstrate that social engineering can result in significant unauthorized access and financial losses.

The most effective defense is therefore a combination of **security awareness, independent verification, strong authentication, least privilege, technical controls, and rapid incident reporting**.

Organizations should treat employees as an important part of their security architecture and continuously train them to recognize and report social engineering attempts.

---

# 11. References

1. **Cybersecurity and Infrastructure Security Agency (CISA)** — *Phishing Guidance / Phishing General Security Postcard*.
   Covers phishing, spearphishing, whaling, vishing, smishing, indicators, and protective measures.

2. **SANS Institute** — *Methods for Understanding and Reducing Social Engineering Attacks*.
   Discusses social engineering, why it is effective, and approaches for reducing its success.

3. **Twitter/X** — *An update on our security incident*, July 2020.
   Primary-source documentation of the 2020 Twitter social-engineering attack and its impact.

4. **U.S. Securities and Exchange Commission (SEC) / Ubiquiti Networks** — Business Email Compromise Fraud disclosures.
   Documents the 2015 employee-impersonation fraud and approximately $46.7 million in fraudulent transfers.

---

# 12. Ethical Note

Social engineering techniques should only be studied or tested in environments where explicit authorization has been provided.

Security awareness exercises should be conducted responsibly, with appropriate organizational approval and safeguards.

The examples in this report are provided for cybersecurity education, awareness, and defensive purposes. They should not be used to deceive, compromise, or obtain unauthorized access to real individuals or organizations.
