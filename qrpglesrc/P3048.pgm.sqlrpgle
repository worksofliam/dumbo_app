**free

ctl-opt dftactgrp(*no);

dcl-pi P3048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P836.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P1585.rpgleinc'

dcl-ds theTable extname('T712') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T712 LIMIT 1;

theCharVar = 'Hello from P3048';
dsply theCharVar;
callp localProc();
P836();
P594();
P1585();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3048 in the procedure';
end-proc;