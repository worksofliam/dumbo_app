**free

ctl-opt dftactgrp(*no);

dcl-pi P4551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4153.rpgleinc'
/copy 'qrpgleref/P2381.rpgleinc'
/copy 'qrpgleref/P3399.rpgleinc'

dcl-ds theTable extname('T1623') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1623 LIMIT 1;

theCharVar = 'Hello from P4551';
dsply theCharVar;
callp localProc();
P4153();
P2381();
P3399();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4551 in the procedure';
end-proc;