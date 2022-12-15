**free

ctl-opt dftactgrp(*no);

dcl-pi P2402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1692.rpgleinc'
/copy 'qrpgleref/P1061.rpgleinc'
/copy 'qrpgleref/P1929.rpgleinc'

dcl-ds theTable extname('T1043') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1043 LIMIT 1;

theCharVar = 'Hello from P2402';
dsply theCharVar;
callp localProc();
P1692();
P1061();
P1929();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2402 in the procedure';
end-proc;