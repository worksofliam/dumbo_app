**free

ctl-opt dftactgrp(*no);

dcl-pi P1123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'

dcl-ds T132 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T132 FROM T132 LIMIT 1;

theCharVar = 'Hello from P1123';
dsply theCharVar;
callp localProc();
P189();
P93();
P373();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1123 in the procedure';
end-proc;