**free

ctl-opt dftactgrp(*no);

dcl-pi P3426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1575.rpgleinc'
/copy 'qrpgleref/P3034.rpgleinc'
/copy 'qrpgleref/P1459.rpgleinc'

dcl-ds T138 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T138 FROM T138 LIMIT 1;

theCharVar = 'Hello from P3426';
dsply theCharVar;
callp localProc();
P1575();
P3034();
P1459();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3426 in the procedure';
end-proc;