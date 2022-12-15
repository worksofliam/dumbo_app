**free

ctl-opt dftactgrp(*no);

dcl-pi P1136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P1035.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P1136';
dsply theCharVar;
callp localProc();
P523();
P260();
P1035();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1136 in the procedure';
end-proc;