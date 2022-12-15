**free

ctl-opt dftactgrp(*no);

dcl-pi P294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds T311 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T311 FROM T311 LIMIT 1;

theCharVar = 'Hello from P294';
dsply theCharVar;
callp localProc();
P138();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P294 in the procedure';
end-proc;