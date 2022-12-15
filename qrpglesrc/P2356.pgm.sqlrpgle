**free

ctl-opt dftactgrp(*no);

dcl-pi P2356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1535.rpgleinc'
/copy 'qrpgleref/P1137.rpgleinc'
/copy 'qrpgleref/P2056.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P2356';
dsply theCharVar;
callp localProc();
P1535();
P1137();
P2056();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2356 in the procedure';
end-proc;