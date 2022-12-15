**free

ctl-opt dftactgrp(*no);

dcl-pi P3390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1159.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P2162.rpgleinc'

dcl-ds theTable extname('T1518') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1518 LIMIT 1;

theCharVar = 'Hello from P3390';
dsply theCharVar;
callp localProc();
P1159();
P818();
P2162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3390 in the procedure';
end-proc;