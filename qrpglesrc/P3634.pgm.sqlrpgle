**free

ctl-opt dftactgrp(*no);

dcl-pi P3634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2546.rpgleinc'
/copy 'qrpgleref/P2904.rpgleinc'
/copy 'qrpgleref/P932.rpgleinc'

dcl-ds theTable extname('T1034') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1034 LIMIT 1;

theCharVar = 'Hello from P3634';
dsply theCharVar;
callp localProc();
P2546();
P2904();
P932();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3634 in the procedure';
end-proc;