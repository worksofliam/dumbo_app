**free

ctl-opt dftactgrp(*no);

dcl-pi P290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds theTable extname('T1567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1567 LIMIT 1;

theCharVar = 'Hello from P290';
dsply theCharVar;
callp localProc();
P11();
P213();
P186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P290 in the procedure';
end-proc;