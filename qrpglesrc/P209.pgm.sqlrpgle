**free

ctl-opt dftactgrp(*no);

dcl-pi P209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds T102 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T102 FROM T102 LIMIT 1;

theCharVar = 'Hello from P209';
dsply theCharVar;
callp localProc();
P180();
P9();
P187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P209 in the procedure';
end-proc;