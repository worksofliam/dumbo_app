**free

ctl-opt dftactgrp(*no);

dcl-pi P1533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P1129.rpgleinc'

dcl-ds T5 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T5 FROM T5 LIMIT 1;

theCharVar = 'Hello from P1533';
dsply theCharVar;
callp localProc();
P394();
P627();
P1129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1533 in the procedure';
end-proc;