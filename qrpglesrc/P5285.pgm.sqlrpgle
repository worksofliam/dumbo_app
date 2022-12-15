**free

ctl-opt dftactgrp(*no);

dcl-pi P5285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2494.rpgleinc'
/copy 'qrpgleref/P1895.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'

dcl-ds theTable extname('T985') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T985 LIMIT 1;

theCharVar = 'Hello from P5285';
dsply theCharVar;
callp localProc();
P2494();
P1895();
P832();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5285 in the procedure';
end-proc;