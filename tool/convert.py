import json
import random
import zhipuai
import re
import csv
import time

import os

CHOICES = ["A. ", "B. ", "C. ", "D. "]

prompt = """
Now there is a question about math and a correct option. Please fill in the other incorrect options based on the question's context. Note that you should add the incorrect options, not solve the question.
---
Question: Henry and 3 of his friends order 7 pizzas for lunch. Each pizza is cut into 8 slices. If Henry and his friends want to share the pizzas equally, how many slices can each of them have? 
Correct Option: A. 14
Answer: 
B. 56
C. 8
D. 18

Question: Farmer Brown has 20 animals on his farm, all either chickens or cows. They have a total of 70 legs, all together. How many of the animals are chickens?
Correct Option: C. 5
Answer: 
A. 20
B. 15
D. 70

Question: {question}
Correct Option: {option}
Answer:
{other_options}
"""



with open('gsm8k.json', 'r', encoding='utf-8') as file:
    data = json.load(file)

# Load existing data from the file
def load_existing_rows(file_path):
    if os.path.exists(file_path):
        with open(file_path, mode='r', encoding='utf-8') as file:
            reader = csv.DictReader(file)
            return list(reader)
    return []

# Loading existing data
rows = load_existing_rows('gsm8k.csv')
id = 0



# Read saved progress
def load_progress():
    if os.path.exists('progress.txt'):
        with open('progress.txt', 'r') as file:
            return int(file.read().strip())
    return 0

# Save progress
def save_progress(id):
    with open('progress.txt', 'w') as file:
        file.write(str(id))

# main
start_id = load_progress()

for id, item in enumerate(data[start_id:], start=start_id):
    instruction = item['instruction']
    output = item['output']
    explanation = output.split('\n#### ')[0]
    answer = output.split('\n#### ')[-1]
    choice = random.choice(CHOICES)
    other_choices = [ch for ch in CHOICES if ch != choice]

    gen_prompt = prompt.format(question=instruction, option=choice+answer, other_options="\n".join(other_choices))

    api_key = "Your api_key of glm-4-flash"
    client = zhipuai.ZhipuAI(api_key=api_key)
    response = client.chat.completions.create(
        model="glm-4-flash",
        messages=[{"role": "user", "content": gen_prompt}],
        temperature=0.5,
        max_tokens=512,
    )
    time.sleep(0.5)
    output = response.choices[0].message.content
    mapping = {"A": "", "B": "", "C": "", "D": ""}
    mapping[choice[0]] = answer
    for ch in other_choices:
        if ch in output:
            exact_text = output.split(ch)[-1]
            match = re.search(r'\d+\.\d+|\d+', exact_text)
            if match:
                mapping[ch[0]] = match.group(0)
    row = {
        "id": id,
        "question": instruction,
        "A": mapping["A"],
        "B": mapping["B"],
        "C": mapping["C"],
        "D": mapping["D"],
        "answer": choice[0],
        "explanation": explanation
    }
    rows.append(row)
    print(f'id: {id}')

    # Save progress every 100 items processed
    if id % 100 == 0:
        fieldnames = rows[0].keys()
        with open('gsm8k.csv', mode='w', newline='', encoding='utf-8') as file:
            writer = csv.DictWriter(file, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(rows)
        
        save_progress(id)

# Finally write all data
fieldnames = rows[0].keys()
with open('gsm8k.csv', mode='w', newline='', encoding='utf-8') as file:
    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(rows)