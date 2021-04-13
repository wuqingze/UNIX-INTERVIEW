这里介绍sed的基本的常见用法，分为增删改查

- 增
追加(行下)
`sed -i 'na\newline' file`
`sed -i '/pattern/a\newline' file`

插入(行上)
`sed -i 'ni\newline' file`
`sed -i '/pattern/i\newline' file`

- 删
line delete
`sed -i 'nd' file`
`sed -i 'm,nd' file`

match delete
`sed -i '/pattern/d' file`

- 改
`sed -i 'n,ms/pattern/new string/g' file
`

- 查
`sed -n 'm,ns/pattern/p' file`

这里需要特殊说明的是，sed的正则表达式匹配需要将特俗符号进行
转义，比如左右括号\(\)表示选择，正常的左右括号()即本义上的
意思。

**sed默认不使用标准的正则表达式，如果需要复杂的正则表达式来
匹配的，那么建议使用`-E`选项来使用标准的正则表达式，同时，
表达数字的时候需要[0-9]来替代\d**

