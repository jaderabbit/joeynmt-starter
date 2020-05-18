#!/bin/bash

# Train the transformer model using the config
python3 -m joeynmt train config/lstm_enaf.yaml

# Output the validation accuracy
cat model/enaf_lstm/validations.txt

python3 -m joeynmt test "model/enaf_lstm/config.yaml"