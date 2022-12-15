**free

ctl-opt dftactgrp(*no);

dcl-pi P1712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1585.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'

dcl-ds theTable extname('T1668') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1668 LIMIT 1;

theCharVar = 'Hello from P1712';
dsply theCharVar;
callp localProc();
P1585();
P72();
P97();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1712 in the procedure';
end-proc;