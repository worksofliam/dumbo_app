**free

ctl-opt dftactgrp(*no);

dcl-pi P334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds theTable extname('T173') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T173 LIMIT 1;

theCharVar = 'Hello from P334';
dsply theCharVar;
callp localProc();
P99();
P92();
P126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P334 in the procedure';
end-proc;