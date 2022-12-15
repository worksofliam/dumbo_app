**free

ctl-opt dftactgrp(*no);

dcl-pi P1297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds T160 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T160 FROM T160 LIMIT 1;

theCharVar = 'Hello from P1297';
dsply theCharVar;
callp localProc();
P812();
P274();
P296();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1297 in the procedure';
end-proc;