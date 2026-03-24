# Example Weekly Plan — Week 3

This is a real example of a weekly content plan used in the experiment. Names and specific details have been adapted for illustration purposes.

---

## Monday — Behind the Scenes (Diario di Bordo)

**Post** (650 chars):
```
Lunedì mattina. La Skill di engagement si è bloccata alle 8:03.

Non un crash. Un overflow della context window.
Il sistema ha provato a processare 47 notifiche in un colpo solo.

Il mio primo istinto: aumentare la finestra.
Poi ho guardato i dati. 37 di quelle 47 erano reazioni "ottimo post".

Il fix non era tecnico. Era strategico:
filtrare prima di processare, non dopo.

(onestamente, avrei dovuto prevederlo)

3 righe di codice. La Skill non si è più bloccata.

Il sistema funziona. Tu fallo partire.

#DiarioDiBordo #AIAutomation #Claude
```

**First comment** (20 min after):
```
Diario completo con tutti i dati della settimana: giovanniliguori.it/blog/diario-di-bordo-settimana-03
```

---

## Tuesday — Tool/Workflow (Standard, 900 chars)

**Post**:
```
Il setup che mi fa risparmiare 6+ ore/settimana su LinkedIn.

Non è un tool. È un ecosistema.

Layer 1: Claude Cowork orchestra tutto. Cron task, sub-agenti, pipeline.
Layer 2: Python gestisce le API e il data processing.
Layer 3: Google Cloud Run fa girare i job in background.

Il bello è che ogni layer parla con gli altri.
Il cron task delle 8:00 pubblica il post.
Alle 8:20 un sub-agente aggiunge il primo commento.
Alle 9:00 parte la sessione di engagement.

Tutto automatico. Tutto tracciato. Tutto in produzione.

(spoiler: il collo di bottiglia non era il codice. Era decidere cosa automatizzare e cosa no.)

Il sistema funziona. Tu fallo partire.

#Claude #Automation #Productivity #AIWorkflow
```

**First comment**:
```
La parte più sottovalutata? Decidere cosa NON automatizzare. Le risposte ai DM, per esempio, restano manuali. Il contesto umano lì è insostituibile.
```

---

## Wednesday — Hot Take (700 chars, punchy)

**Post**:
```
Ho visto l'ennesimo "corso AI" a €997 che insegna a scrivere prompt.

È sbagliato. E vi spiego perché.

Un prompt non è una skill. È un input.
Scrivere un buon prompt senza capire context window, temperature, system instructions e tool use è come scrivere una query SQL senza sapere cos'è un database.

Il mercato si è polarizzato: da un lato chi vende "il prompt magico", dall'altro chi costruisce sistemi.

Mi chiedo se tra 12 mesi qualcuno si ricorderà dei prompt engineer.

Chi già costruisce pipeline ha un vantaggio enorme su chi aspetta che diventi best practice.

#AI #Opinion #Freelance
```

**First comment**:
```
La domanda vera: quanti di quei corsi mostrano un sistema in produzione? Non slide. Non demo. Produzione.
```

---

## Thursday — Case Study (1100 chars, long)

**Post**:
```
Giovedì scorso un consulente mi ha scritto: "Per la prima volta in 6 mesi ho pranzato senza il laptop."

Non è una frase motivazionale. È il risultato di 3 automazioni.

Il suo problema: 40+ ore/mese spese a fare report manuali per 12 clienti. Copy-paste da Google Analytics, formattazione in Slides, invio via email. Ogni mese, 12 volte.

Il sistema che abbiamo costruito:
→ Claude legge i dati via API (GA4 + Search Console)
→ Python processa e genera il report in PDF
→ Cloud Run lo schedula il primo del mese
→ Resend lo invia al cliente con un messaggio personalizzato

Tempo totale dopo il setup: 0 ore/mese.
Il setup: 2 giorni.
Il ROI: dal primo mese.

Il dettaglio che mi ha colpito: non ha detto "risparmio tempo".
Ha detto "pranzo senza laptop".

Ecco. Il valore non si misura solo in ore. Si misura in qualità della giornata.

Il sistema funziona. Tu fallo partire.

#CaseStudy #AIAutomation #B2B #Claude #ROI
```

**First comment**:
```
Il dato che non ho messo nel post: il costo mensile dell'infrastruttura è €4.20. Quattro euro e venti centesimi. Per 12 report automatici. Se vuoi capire se un approccio simile si applica al tuo caso: giovanniliguori.it/prenota
```

---

## Friday — How-To (1200 chars, longest)

**Post**:
```
Come creare la tua prima Skill Claude in 15 minuti. Step by step.

Una Skill è un file SKILL.md che dice a Claude come comportarsi in un contesto specifico. Non è un prompt. È un'istruzione persistente.

Step 1: Crea una cartella nella directory del tuo progetto.
Esempio: /skills/email-writer/

Step 2: Crea SKILL.md con questa struttura:
→ name: il nome della skill
→ description: quando deve attivarsi
→ Il corpo: le istruzioni operative

Step 3: Nel corpo, sii specifico.
Non "scrivi bene". Ma "usa frasi di max 2 righe, apri con un dato, chiudi con una domanda. Mai usare 'cordiali saluti'."

Step 4: Testa con un prompt reale.
Scrivi qualcosa che attiverà la skill e verifica che il risultato rispetti le regole.

Step 5: Itera.
La prima versione non sarà perfetta. La terza sì.

Lo so, sembra banale. Ma la differenza tra chi usa Claude come chatbot e chi lo usa come sistema è esattamente questa: le Skill.

Funziona? Funziona.

Il sistema funziona. Tu fallo partire.

#Claude #HowTo #Skills #AIAutomation #Tutorial
```

**First comment**:
```
Approfondimento completo con codice e screenshot: giovanniliguori.it/blog/claude-skills-guida-pratica — Qual è la prima Skill che costruiresti?
```

---

## Saturday — Storytelling (500 chars, micro-post)

**Post**:
```
Due anni fa editavo video 12 ore al giorno.

Oggi non tocco Premiere da 8 mesi.
Non perché non mi piaccia. Perché ho trovato una leva più grande.

A un certo punto ho capito che il montaggio migliore che potessi fare non era su una timeline.
Era su un workflow.

E niente. Ogni tanto ci penso.

#Storytelling #CareerChange #AI
```

**First comment**:
```
Il parallelo che nessuno vede: editare un video e costruire un'automazione richiedono lo stesso muscolo. Ritmo, timing, attenzione al dettaglio. Cambia solo il medium.
```

---

## Sunday — Soft CTA (600 chars)

**Post**:
```
"Ma le Skill di cui parli... dove imparo a costruirle?"

Me lo chiedono in DM almeno 3 volte a settimana.

La risposta: Claude Mastery.
37 pagine. 10 moduli. 4 case study misurati con codice e risultati.

Non è un corso. Non è una masterclass.
È un manuale operativo per chi vuole usare Claude come sistema, non come chatbot.

€19. Il ROI arriva al primo workflow che automatizzi.

Il sistema funziona. Tu fallo partire.

#ClaudeMastery #AI #Automation
```

**First comment**:
```
Guida completa: giovanniliguori.it/claude-mastery — 37p, 10 moduli, 4 case study misurati.
```
