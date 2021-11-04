{
    open Parser
    exception No_such_symbol
}

let natural_number = (("S(")*)'Z'

rule lexer = parse
  | "plus"      { PLUS }
  | "times"     { Times }
  | "is"        { IS }
  | "by"        { BY }
  | "P-Zero"    { P-ZERO }
  | "T-Zero"    { T-Zero }
  | "P-Succ"    { P-Succ }
  | "T-Succ"    { T-Succ}
  | 'Z'         { Z }
  | 'S'         { S }
  | '('         { LP }
  | ')'         { RP }
  | '{'         { LB }
  | '}'         { RB }
  | ';'         { SEMI }