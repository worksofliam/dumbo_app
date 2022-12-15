**free

ctl-opt dftactgrp(*no);

dcl-pi P3571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P1178.rpgleinc'
/copy 'qrpgleref/P3051.rpgleinc'

dcl-ds theTable extname('T1498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1498 LIMIT 1;

theCharVar = 'Hello from P3571';
dsply theCharVar;
callp localProc();
P410();
P1178();
P3051();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3571 in the procedure';
end-proc;