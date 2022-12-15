**free

ctl-opt dftactgrp(*no);

dcl-pi P1713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'
/copy 'qrpgleref/P1629.rpgleinc'

dcl-ds theTable extname('T1142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1142 LIMIT 1;

theCharVar = 'Hello from P1713';
dsply theCharVar;
callp localProc();
P667();
P1242();
P1629();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1713 in the procedure';
end-proc;