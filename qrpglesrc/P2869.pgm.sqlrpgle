**free

ctl-opt dftactgrp(*no);

dcl-pi P2869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1601.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P2749.rpgleinc'

dcl-ds theTable extname('T1467') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1467 LIMIT 1;

theCharVar = 'Hello from P2869';
dsply theCharVar;
callp localProc();
P1601();
P502();
P2749();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2869 in the procedure';
end-proc;