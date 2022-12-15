**free

ctl-opt dftactgrp(*no);

dcl-pi P3817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2505.rpgleinc'
/copy 'qrpgleref/P2817.rpgleinc'
/copy 'qrpgleref/P1545.rpgleinc'

dcl-ds theTable extname('T1156') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1156 LIMIT 1;

theCharVar = 'Hello from P3817';
dsply theCharVar;
callp localProc();
P2505();
P2817();
P1545();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3817 in the procedure';
end-proc;