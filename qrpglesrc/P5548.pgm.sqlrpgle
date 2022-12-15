**free

ctl-opt dftactgrp(*no);

dcl-pi P5548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1685.rpgleinc'
/copy 'qrpgleref/P2534.rpgleinc'
/copy 'qrpgleref/P5146.rpgleinc'

dcl-ds theTable extname('T666') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T666 LIMIT 1;

theCharVar = 'Hello from P5548';
dsply theCharVar;
callp localProc();
P1685();
P2534();
P5146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5548 in the procedure';
end-proc;