# typstcv

CV template for typst

## Usage

- Clone/fork the repository.
- Modify `cv.typ` to your liking.
- Compile the `cv.typ` file using `typst`

```bash
typst compile cv.typ
```

## Motivation

I ported my CV from LaTeX to typst. I wanted to have a simple and clean CV that I can easily modify and compile.

## Magic Functions

- dot_separator
  - This function converts a list/array/slice/whatever to a string with dots separating the elements.
  - On the case where a new entry goes onto a new line, the dot is ommitted for a cleaner look.

## Future Work

Add a config file such that the user can easily modify the CV without having to modify the `cv.typ` file.
This would be a yaml file (possibly, or toml) that would be read by the `cv.typ` file.

Furthermore, we could add 'targets' where a user can compile the CV to different specs, i.e. more Rust focused, more Python focused, etc.