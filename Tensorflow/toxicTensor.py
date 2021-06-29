import matplotlib.pyplot as plt
import numpy as np
import pandas as pandas
import tensorflow as tf
import tensorflow_datasets as tfds

ds_train, info_train = tfds.load(
    'wikipedia_toxicity_subtypes', 
    split='train', 
    data_dir='F:/Coding Adventure/Python/toxic',
    shuffle_files=True,
    download=True,
    as_supervised=True,
    with_info=True)
assert isinstance(ds_train, tf.data.Dataset)

ds_test = input("HERE: ")

ds_train = ds_train.cache()
ds_train = ds_train.shuffle(info_train.splits['train'].num_examples)
ds_train = ds_train.batch(128)
ds_train = ds_train.prefetch(tf.data.experimental.AUTOTUNE)


ds_test = ds_test.batch(1)
ds_test = ds_test.cache()
ds_test = ds_test.prefetch(tf.data.experimental.AUTOTUNE)

