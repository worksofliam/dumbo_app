**free

ctl-opt dftactgrp(*no);

dcl-pi P3247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2407.rpgleinc'
/copy 'qrpgleref/P1274.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T1210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1210 LIMIT 1;

theCharVar = 'Hello from P3247';
dsply theCharVar;
callp localProc();
P2407();
P1274();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3247 in the procedure';
end-proc;