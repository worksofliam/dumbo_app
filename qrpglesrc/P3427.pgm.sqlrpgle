**free

ctl-opt dftactgrp(*no);

dcl-pi P3427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P2658.rpgleinc'

dcl-ds theTable extname('T1231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1231 LIMIT 1;

theCharVar = 'Hello from P3427';
dsply theCharVar;
callp localProc();
P461();
P1122();
P2658();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3427 in the procedure';
end-proc;