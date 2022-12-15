**free

ctl-opt dftactgrp(*no);

dcl-pi P2240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P1485.rpgleinc'
/copy 'qrpgleref/P2149.rpgleinc'

dcl-ds theTable extname('T566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T566 LIMIT 1;

theCharVar = 'Hello from P2240';
dsply theCharVar;
callp localProc();
P862();
P1485();
P2149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2240 in the procedure';
end-proc;