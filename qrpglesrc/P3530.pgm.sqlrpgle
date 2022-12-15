**free

ctl-opt dftactgrp(*no);

dcl-pi P3530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3358.rpgleinc'
/copy 'qrpgleref/P1075.rpgleinc'
/copy 'qrpgleref/P2560.rpgleinc'

dcl-ds T1125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1125 FROM T1125 LIMIT 1;

theCharVar = 'Hello from P3530';
dsply theCharVar;
callp localProc();
P3358();
P1075();
P2560();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3530 in the procedure';
end-proc;