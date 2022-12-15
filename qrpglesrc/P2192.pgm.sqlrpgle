**free

ctl-opt dftactgrp(*no);

dcl-pi P2192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P1578.rpgleinc'
/copy 'qrpgleref/P2188.rpgleinc'

dcl-ds theTable extname('T1023') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1023 LIMIT 1;

theCharVar = 'Hello from P2192';
dsply theCharVar;
callp localProc();
P254();
P1578();
P2188();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2192 in the procedure';
end-proc;