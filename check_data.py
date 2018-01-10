import json

json_name = './annotations/captions_split_set_zebra_val_val_train2014.json'

with open(json_name, 'r') as f:
    data = json.load(f)

for key in data:
    print(key)
images = data['images'][0]
for key in images:
    print(key)
print(images['id'])
annotations = data['annotations'][0]

print(annotations['image_id'])
print(annotations['caption'])