import os
import openai

from dotenv import load_dotenv

load_dotenv()
openai.api_key = os.getenv("OPENAI_API_KEY")

ENGINE = "davinci-codex"
PROMPT = "say hello world in Python"
MAX_TOKENS = 2000

response = openai.Completion.create(engine=ENGINE, prompt=PROMPT, max_tokens=MAX_TOKENS)
print(response["choices"][0]["text"])
