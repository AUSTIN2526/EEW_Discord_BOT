import discord
from discord.ext import tasks
import os
from datetime import datetime

intents = discord.Intents.default()
intents.message_content = True
client = discord.Client(intents=intents)
DC_BOT_TOKEN = "輸入自己的DC_BOT_TOKEN"
CHANNEL_ID = '輸入自己的CHANNEL_ID'

def check_output_file():
    currentTime = datetime.now().strftime("%H:%M:%S")
    print("檢查時間:", currentTime)
    if os.path.exists('output.txt'):
        with open('output.txt', 'r') as file:
            data = file.read().strip()
        os.remove('output.txt')
        print(data)
        return data
    return None

@client.event
async def on_ready():
    print('Bot已上線：', client.user)
    send_notification.start()

@tasks.loop(seconds=1)
async def send_notification():
    channel = client.get_channel(CHANNEL_ID)
    # 檢查是否有地震速報
    report = check_output_file()
    if report:
        embed = discord.Embed(title="地震速報", description=report, color=discord.Color.red())
        await channel.send(embed=embed)

client.run(DC_BOT_TOKEN)
