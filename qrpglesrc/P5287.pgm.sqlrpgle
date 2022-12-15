**free

ctl-opt dftactgrp(*no);

dcl-pi P5287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3584.rpgleinc'
/copy 'qrpgleref/P1572.rpgleinc'
/copy 'qrpgleref/P1301.rpgleinc'

dcl-ds theTable extname('T744') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T744 LIMIT 1;

theCharVar = 'Hello from P5287';
dsply theCharVar;
callp localProc();
P3584();
P1572();
P1301();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5287 in the procedure';
end-proc;