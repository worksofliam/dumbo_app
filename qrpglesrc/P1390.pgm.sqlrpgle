**free

ctl-opt dftactgrp(*no);

dcl-pi P1390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1139.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P1240.rpgleinc'

dcl-ds theTable extname('T1126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1126 LIMIT 1;

theCharVar = 'Hello from P1390';
dsply theCharVar;
callp localProc();
P1139();
P472();
P1240();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1390 in the procedure';
end-proc;