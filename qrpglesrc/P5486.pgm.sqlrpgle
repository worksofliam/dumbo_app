**free

ctl-opt dftactgrp(*no);

dcl-pi P5486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2696.rpgleinc'
/copy 'qrpgleref/P5373.rpgleinc'
/copy 'qrpgleref/P2561.rpgleinc'

dcl-ds theTable extname('T1203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1203 LIMIT 1;

theCharVar = 'Hello from P5486';
dsply theCharVar;
callp localProc();
P2696();
P5373();
P2561();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5486 in the procedure';
end-proc;