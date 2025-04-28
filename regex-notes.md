# Regex Essential Concepts
|**Pattern**|**Meaning**|**Example**|**Matches**|
|---|---|---|---|
|`.`|Any single character|`c.t`|cat, cut, c9t|
|`*`|0 or more of previous|`lo*`|l, lo, loo, looo|
|`+`|1 or more of previous|`lo+`|lo, loo, looo (but not l)|
|`?`|0 or 1 of previous|`lo?`|l, lo|
|`[...]`|One character from the set|`[abc]`|a, b, or c|
|`[^...]`|One character **not** from the set|`[^abc]`|d, e, 1, #
|`^`|Start of line|`^Hello`|Hello World|
|`$`|End of line|`end$`|the end|
|`\d`|Digit (0-9)|`\d\d`|42, 12|
|`\w`|A word character(letter, digit, underscore)|`\w\w`|ab, a123, _abc|
|`\s`|Whitespace (space, tab, newline)|`\s+`|"", tabs|

# Basic vs Extended Regular Expressions
Basic regular expressions differ from extended regular expressions in the following ways:
- The character `?`, `+`, `{`, `|`, `(`, and `)` lose their special meaning; instead use the backslashed versions `\?`, `\+`, `\{`, `\|`, `\(`, and `\)`. Also, a backslash is needed before an interval expression's closing `}`.
