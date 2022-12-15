**free

ctl-opt dftactgrp(*no);

dcl-pi P3181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P1228.rpgleinc'

dcl-ds theTable extname('T1691') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1691 LIMIT 1;

theCharVar = 'Hello from P3181';
dsply theCharVar;
callp localProc();
P190();
P1660();
P1228();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3181 in the procedure';
end-proc;