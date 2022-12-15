**free

ctl-opt dftactgrp(*no);

dcl-pi P334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds T1237 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1237 FROM T1237 LIMIT 1;

theCharVar = 'Hello from P334';
dsply theCharVar;
callp localProc();
P5();
P171();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P334 in the procedure';
end-proc;