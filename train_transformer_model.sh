#!/bin/bash

# Install JoeyNMT
pip install joeynmt

# Train the transformer model using the config
python3 -m joeynmt train config/transformer_enaf.yaml

# Output the validation accuracy
cat model/enaf_transformer/validations.txt

python3 -m joeynmt test "model/enaf_transformer/config.yaml"