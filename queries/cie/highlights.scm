(comment) @comment

(identifier) @variable

(constant_declaration
  name: (identifier) @constant
)

(int_literal) @number
(real_literal) @number.float
(string_literal) @string
(char_literal) @character
(boolean_literal) @boolean

(filename) @string.special.path

[
  (basic_type)
  "ARRAY"
] @type.builtin

[
  "DECLARE"
  "CONSTANT"
  "INPUT"
  "OUTPUT"
  "CALL"
  "OF"
  "OPENFILE"
  "READFILE"
  "WRITEFILE"
  "CLOSEFILE"
] @keyword

[
  "PROCEDURE"
  "ENDPROCEDURE"
  "FUNCTION"
  "RETURNS"
  "ENDFUNCTION"
] @keyword.function

[
  "RETURN"
] @keyword.return

(parameter
  name: (identifier) @variable.parameter
)

(procedure_declaration
  name: (identifier) @function
)
(function_declaration
  name: (identifier) @function
)

(procedure_call
  name: (identifier) @function.call
)
(function_call
  name: (identifier) @function.call
)
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(DIV|MOD|LENGTH|LCASE|UCASE|SUBSTRING|ROUND|RANDOM)$")
)

[
  "IF"
  "THEN"
  "ELSE"
  "ENDIF"
  "CASE OF"
  "OTHERWISE"
  "ENDCASE"
] @keyword.conditional

[
  "AND"
  "OR"
  "NOT"
] @keyword.operator

[
  "FOR"
  "TO"
  "STEP"
  "NEXT"
  "REPEAT"
  "UNTIL"
  "WHILE"
  "DO"
  "ENDWHILE"
] @keyword.repeat

[
  "FOR READ"
  "FOR WRITE"
] @keyword.modifier

[
  ":"
  ","
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
] @punctuation.bracket

[
  "<-"
  "←" ; unicode detection is broken on Windows, get good
  "^"
  "*"
  "/"
  "+"
  "-"
  "="
  "<"
  "<="
  ">"
  ">="
  "<>"
] @operator
