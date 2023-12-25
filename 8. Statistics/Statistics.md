# 8 Statistics*

---

# Essential Statistics for Data Analyst

## What and why of Statistics

🎲สถิติคืออะไร? ทำไปทำไม?

- **stats** = **collect data** → **analyze data** → to **understand the truth** → to **make better decision**

> We want to understand the truth.
Therefore, we learn stats.
> 

เช่น census = สำมะโนประชากร ทำเพื่อสำรวจภาพรวมของประชากรใช้ในการ**ตัดสินใจทำเรื่องต่างๆ** เช่น เก็บภาษี ปรับปรุงสาธารณูปโภค ใน อเมริกา ไทย จะทำทุกๆ 10 ปี เพราะ**ใช้เงินและเวลาสูง**

---

## Population vs Sample

> Trade off = Truth (Accuracy) vs (Money💵 + Time⌛)
> 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/ecd234ce-b737-4419-bd1f-0a1405810be2/Untitled.png)

---

## Sampling

- **Sampling** คือตัวแทนบางส่วนของ population
    - **probability sampling** แบบสุ่ม
        - **Simple** Random Sampling ทุกคนมีโอกาสถูกสุ่มออกมาเท่ากัน
        - **Systematic** Random Sampling มีการกำหนดกฎเงื่อนไขในการสุ่ม
        - **Stratified** Random Sampling แบ่งจำกัดกลุ่มก่อนสุ่ม → สุ่มในแต่ละกลุ่มออกมาเป็น sample
        - **Cluster** Random Sampling แบ่งเป็นกลุ่มๆแบบสุ่ม → แล้วเก็บทั้งหมดของกลุ่มที่ถูกสุ่มออกมาเป็น sample
        - 2 Step sampling เอา Straitified + Cluster คือ สุ่มกลุ่ม → สุ่มในกลุ่ม
    
    🎲ทำไมเราต้องใช้วิธีสุ่ม? → เพื่อลด Bias นั่นเอง
    
    > Random → Lower Bias
    > 
    
    - **non-probability sampling** แบบไม่สุ่ม
        - **Convenience** Sampling เอาง่ายเข้าว่า
            - เช่น เวลาเราทำสำรวจวิจัย ป.โท ส่งอาจารย์ เพราะ เราไม่มีงบและเวลา
        - **Snowball** Sampling ตามเก็บจากตัวอย่างนึง ไปอีกตัวอย่างนึง เรื่อยๆ ใช้กรณีที่หาตัวอย่างยาก
            - เช่น คนที่ซื้อขายงาช้าง ถ้าเราหาได้คนนึงได้ก็ขอ contact จากคนแรกไปต่อหาคนต่อๆไป

---

## Descriptive Statistics

- 90% ของสถิติในชีวิตจริงเป็นแบบ Descriptive statistics

### 1. Measures of **Central Tendency** แนวโน้มค่ากลาง

- **Mean** ค่าเฉลี่ย
    - ข้อดี คือถ้าข้อมูลเป็นแบบ Normal Distribution จะใช้วิเคราะห์ได้ง่าย
    - ข้อเสีย คือถ้ามีการกระจายตัวของข้อมูลสูง หรือมีค่า outlier ค่า mean จะเพี้ยน
- **Median** ค่าของตำแหน่งตรงกลาง
    - ข้อดี Robust Statistic อยู่ตรงกลางเสมอ ทนต่อการกระจายของข้อมูล
    - ข้อเสีย ถ้าเป็นเรื่องที่เกิดขั้วต่างกัน 2 ด้าน ไม่มีค่าตรงกลาง เช่น การเมือง หรือ ผลการทดสอบยาปฏิชีวนะที่ตอบสนองต่อคน 2 ประเภทไม่เหมือนกันเลย จะทำให้วิเคราะห์ผิดพลาดได้
- **Mode** ค่าที่มีซ้ำเยอะที่สุด

---

### 2. Measures of **Spread** การกระจาย

- **sd (σ)** แนะนำให้ใช้ sd เป็นหลัก ใช้อธิบายได้ง่ายกว่า variance เพราะมันมีหน่วยเดียวกันกับ data
- variance = sd^2

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/ed2af3a0-9715-4eee-926a-a38e70e88a26/Untitled.png)

- IQR = Inter Quartille Range
    - กล่องใน boxplot เก็บข้อมูล 50% ตรงกลาง
- Range = max - min
    - กว้าง = กระจายเยอะ
    - แคบ = กระจายน้อย

---

### 3. Measures of **Position**

- min
- max
- percentile
- quartile

---

### 4. Measures of **Relationship**

- Correlation (R)

 

---

## How to compute Z

---

## Normal Distribution

Empirical Rule 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/0b02d4d0-4f38-42cf-9c0e-18aad61365c1/Untitled.png)

---

## QUIZ

1. เราเรียนสถิติเพื่ออะไร + ทำไมต้องสุ่มตัวอย่าง 
    - เรียนสถิติเพื่อเข้าใจความจริง → ช่วยในการตัดสินใจที่ดีขึ้น
    - สุ่มตัวอย่างเพื่อประหยัดเงินและเวลา ลด Bias
2. probability sampling มีกี่แบบ อธิบายแต่ละวิธีสั้นๆ
    - Simple โอกาสเท่ากันหมด
    - Systematic มีกฎการสุ่ม
    - Stratified จัดกลุ่ม + สุ่มในกลุ่ม
    - Cluster สุ่มจัดกลุ่ม + เอาทั้งหมดในกลุ่ม
3. ทำไม survey บน facebook ถึงมีโอกาสสูงมากที่จะเอาไปใช้ต่อไม่ได้ i.e. ไม่ represent ประชากรที่เราสนใจ
    - เพราะประชากรที่เราสนใจอาจจะไม่ได้เล่น FB
4. descriptive statistics มีสามแบบหลักๆ อะไรบ้าง
    - Measures of Central Tendency
    - Measures of Spread
    - Measures of Position
5. อธิบาย empirical rule ของ normal distribution แบบเข้าใจง่าย
    - 68.2% = mean +-sd
    - 95% = mean +-2sd
    - 99.7% = mean +- 3sd

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/1df38439-3758-4333-9684-cd736fc0d1de/Untitled.png)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/f1df39b2-27fa-4e69-b612-4bee26b580cb/Untitled.png)

---

# Essential Statistics for Data Analyst II

## Z-Score & Standard Normal Distribution

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/f685d8c1-5a6f-43b5-8106-1b6843a4d820/Untitled.png)

- **Normalization** = การแปลงข้อมูลดิบ → Z = (x-mean)/SD

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/1e48dd14-8c07-48b2-b784-b0b33a17228e/Untitled.png)

- **standard normal distribution** คือการเอา Z score มา plot → normal distribution

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/a9409b90-96a5-4f27-9fec-59120d152c95/Untitled.png)

- เมื่อรู้ค่า Z สามารถหา → พื้นที่ใต้กราฟได้จากตาราง พื้นที่ใต้กราฟก็คือ ความน่าจะเป็น(Probability) นั่นเอง
    - เช่น Z = -2.80 จะมี Probability เท่าไหร่ จากตาราง
        - ดูแนวตั้งหา Z = -2.8
        - ดูแนวนอนหา 0.00
        - จะได้ Probability = 0.0026

- หรือใช้ Spreadsheet หา Probability ก็ได้ ไม่ต้องเปิดตาราง
    - ถ้ารู้ค่า Z `=NORM.S.DIST(ค่าZ,TRUE)`
    - ถ้าไม่รู้ค่า Z `=NORM.DIST(X,MEAN,SD,TRUE)`

 

---

## Central Limit Theorem + Standard Error

- **Sampling distribution** คือการสุ่มซ้ำหลายๆครั้งเพื่อหาค่าเฉลี่ยจากค่าเฉลี่ยอีกที เพื่อให้ค่าที่ได้ใกล้เคียงค่าเฉลี่ยจริงของ population ที่สุด
    - SD ของ Sampling distribution เรียกว่า **SE (Standard Error) = SD/sqrt(n)**
    
    ![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/6291ff66-c945-406c-be63-527619aca52e/Untitled.png)
    
- ในชีวิตจริงไม่มีใครสุ่มซ้ำ 1000 ครั้ง , 10000 ครั้ง หรอก มันเสียเงินและเวลา
- จึงเกิด **Central Limit Theorem (CLT)** ขึ้นมาเพื่อสุ่มในหัวเรา โดยมีหลักการ 3 ข้อ
    - การสุ่มแต่ละครั้งต้องเป็นแบบ Simple Random Sampling
    - Large Sample Size n ≥ 30
    - [n ไม่ควรเกิน 10% ของ population]

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/4932a702-f0d2-466e-9674-006734ab39fc/Untitled.png)

- Confidence Interval คือพื้นที่ใต้กราฟ Sampling Distribution นิยมใช้ที่ 95%

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/7100f441-1ba5-4062-a991-9012aa5e4647/Untitled.png)

ตัวอย่างจาก NIDA POLL

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/8b55dc47-1d35-44da-9083-894ae1432f36/Untitled.png)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/6733aec8-5e36-41cc-b790-ef774f4183f7/Untitled.png)

- ยิ่ง Confidence มากขึ้น → Precision จะลดลง (เราจึง keep default ไว้ที่ 95%)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/9180c47a-53e3-4e9e-84e8-d3e83f51a9c9/Untitled.png)

🍦Want more Precision โดยไม่ลด Confidence

- Keep CI = 95%
- Increase n เพิ่ม sample

🎄ใช้ Excel แสดงค่าทางสถิติก็ได้

Excel: 

- กราฟ Confident Level `Data` → `Forecast Sheet`
- ข้อมูลสถิติ `Data` →  `Data Analysis` → `Descriptive Statistics`
    - ✔️Summaries Statistics
    - ✔️Confident Level for Mean: 95%

---

## Confidence Interval

(แบบเจาะลึก)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/72a724f4-9845-4bf4-afb8-7d3c84011e8a/Untitled.png)

- confidence + alpha = 1

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/660e8607-0690-41ee-9e6e-65ce1f877bad/Untitled.png)

**Ronald Fisher (1925)** → Confident Level = 95%  

💡Confident Interval (CI) = Mean +- MOE

---

## Hypothesis Testing and AB Test*

> *Presumption of innocence
**innocent until proven guilty***
> 
- **Ho (Null Hypothesis)**: เราจะเชื่อว่าสิ่งนี้เป็นเรื่องจริงจนกว่าเราจะพิสูจน์ได้ว่ามันไม่จริง
- **Ha (Alternative Hypothesis):** สมมติฐานตรงข้ามกับ Ho

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/214217b8-34c8-4e27-870a-c968cfc8fe2a/Untitled.png)

### 1. Critical Region

- ถ้า data เราไปตกที่ **critical region** เราจะ → **Reject Ho**
- **alpha** = ผลรวม critical region = 0.05
- ถ้า data เราตกตรงกลางเราจะ → **Fail to Reject Ho**
    - เราจะไม่พูดว่า accept Ho เพราะตามสมมติฐานทางสถิติถูกตั้งไว้เพื่อรอการปฏิเสธ

---

### 2. P.Value

- **p.value = p(observed data or more extreme | Ho is TRUE)**
- **p.value** คือ ความน่าจะเป็น (probability-p) ของ observed data ที่เราเก็บมาหรือมากกว่านั้น ถ้า(|) Ho เป็นเรื่องจริง
- Data ตกตรงไหนลากตั้งฉากไปชนกราฟข้างบน → พื้นที่ที่ได้คือ p.value

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/b10023dd-bf28-48a7-8c24-414be4705580/Untitled.png)

- Reject Ho if p.value ≤ alpha
- Fail to Reject Ho if p.value > alpha
    - alpha คือ critical region ทั้งสองฝั่ง

---

🎣**มีวิธีที่ดีกว่า p.value ไหม** ในการทดสอบสมมติฐานทางสถิติ?

### 3. Confident Interval (CI)

- ใช้ช่วงความเชื่อมั่น (CI) พิสูจน์ได้

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/c2d23c9a-3898-4891-b1b5-5b3c83ea5f00/Untitled.png)

ตัวอย่าง 1 สมมติให้ Ho = 75

ถ้า Ho ไม่อยู่ในช่วง CI ⇒ Reject Ho 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/76901ca1-aa58-4994-af27-e59e33884296/Untitled.png)

ตัวอย่าง 2

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/ffc500a8-9092-4817-9425-4c40c3f485b4/Untitled.png)

- Fail to Reject Ho

---

### **How to Test Hypothesis**

1. Critical Region
2. p.value ≤ alpha => Reject Ho
3. CI does not contain Ho => Reject Ho

---

### AB Testing

ตัวอย่าง

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/3890f63a-3e14-4dfc-b3a0-c3726b41a522/Untitled.png)

การสุ่มแต่ละครั้งจะได้ค่าไม่เท่ากันเลย ทำให้มีโอกาสตีความผิดได้ จึงควรทำ AB Testing

- Ho (Group A = Group B): Group A - Group B = 0
- Ha (Group A ≠ Group B): Group A - Group B ≠ 0

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/a3b4f308-5fb3-444d-ae4b-4b17ff3dcb71/Untitled.png)

- p.value ≤ alpha → Reject Ho

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/53d8e598-f0fb-4aec-8934-36215deb9c5b/Untitled.png)

ใน Google Sheet ใช้ `=T.TEST()` เพื่อหา p.value 

**สรุป AB-TEST**

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/23871d74-96a7-42e0-ad22-05664d28608d/Untitled.png)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8be6d159-1cb9-4f04-acdd-d11a8c5d9465/01387dbc-7694-46eb-8476-4b626af5bcae/Untitled.png)

---

## What is Regression? vs Correlation

---

## QUIZ

1. อธิบายเงื่อนไขสองข้อหลักของ Central Limit Theorem
    - Simple Random Sampling
    - Sample Size n ≥ 30
2. SE คืออะไร จงอธิบายสั้นๆ พร้อมสูตร
    - Standard Error คือ ค่า SD ของ Sampling Distribution
    - SE = SD/sqrt(n)
3. ทำไมเราต้องใช้ Confidence Interval
    - เพื่อเพิ่มความมั่นใจว่า sampling นั้นจะถูกเก็บค่าเข้ามาในการสุ่มของเรา
    - CI ยิ่งเยอะ → Accuracy ยิ่งเพิ่ม → แต่ Precision ยิ่งลด
4. อธิบายวิธีการทดสอบสมมติฐานด้วย CI 95%
    - สุ่ม 100 ครั้งมีโอกาสได้ค่าที่ถูกมา 95 ครั้ง และพลาดไป 5 ครั้ง
5. เราทดสอบสมมติฐานได้กี่แบบ ยังไงบ้าง อธิบายสั้นๆ
    - 3 แบบ
        - Data in Critical Region ⇒ Reject Ho
        - p.value ≤ alpha ⇒ Reject Ho
        - CI does not contain Ho ⇒ Reject Ho
        

---
