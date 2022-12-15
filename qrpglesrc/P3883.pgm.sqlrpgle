**free

ctl-opt dftactgrp(*no);

dcl-pi P3883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2939.rpgleinc'
/copy 'qrpgleref/P2124.rpgleinc'
/copy 'qrpgleref/P3494.rpgleinc'

dcl-ds theTable extname('T566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T566 LIMIT 1;

theCharVar = 'Hello from P3883';
dsply theCharVar;
callp localProc();
P2939();
P2124();
P3494();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3883 in the procedure';
end-proc;