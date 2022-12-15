**free

ctl-opt dftactgrp(*no);

dcl-pi P5057;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P3629.rpgleinc'
/copy 'qrpgleref/P3532.rpgleinc'

dcl-ds theTable extname('T1081') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1081 LIMIT 1;

theCharVar = 'Hello from P5057';
dsply theCharVar;
callp localProc();
P1800();
P3629();
P3532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5057 in the procedure';
end-proc;