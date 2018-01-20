# math_demo
An example of how you might develop an app as a gem with propane

to install

```bash
jgem install math_demo
```

to run

```bash
math_demo
```

### Now you've installed propane! Get more examples to try:-

```bash
propane --install samples
```
The samples get copied to `~/propane_samples`, NB: depends on `wget`. for a simple demo of circumcircle math see `~/propane_samples/processing_app/library/vecmath/vec2d/circumcircle_sketch.rb` or to  run samples as a demo:-
```bash
cd ~/propane_samples
rake
# Some sketches require opengl which doesn't get installed on windows.
# For other libraries see below
```
Or to run individual sketches `cd` to directory and:-
```bash
jruby sketch_name.rb
```
Or explore using `atom` editor and use `script` plugin to run (NB: make sure the file type is `Ruby` or `JRubyArt`, sketches wont run with type as `Ruby on Rails`) also make sure `jruby` is on your `path`.

### Propane documentation

[Propane web-site](https://ruby-processing.github.io/propane/)

### Scope for improvement

In theory we should be able to use nmatrix (jruby version) in the matrix calculation, possibly on the gpu https://groups.google.com/forum/#!topic/sciruby-dev/CIC0EuTRNAk
