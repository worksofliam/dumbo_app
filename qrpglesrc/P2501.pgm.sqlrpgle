**free

ctl-opt dftactgrp(*no);

dcl-pi P2501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P753.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'
/copy 'qrpgleref/P1775.rpgleinc'

dcl-ds theTable extname('T941') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T941 LIMIT 1;

theCharVar = 'Hello from P2501';
dsply theCharVar;
callp localProc();
P753();
P772();
P1775();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2501 in the procedure';
end-proc;