**free

ctl-opt dftactgrp(*no);

dcl-pi P1498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P601.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'

dcl-ds theTable extname('T272') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T272 LIMIT 1;

theCharVar = 'Hello from P1498';
dsply theCharVar;
callp localProc();
P601();
P158();
P1473();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1498 in the procedure';
end-proc;