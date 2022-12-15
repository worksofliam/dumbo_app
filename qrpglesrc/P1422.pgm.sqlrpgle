**free

ctl-opt dftactgrp(*no);

dcl-pi P1422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'

dcl-ds theTable extname('T1506') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1506 LIMIT 1;

theCharVar = 'Hello from P1422';
dsply theCharVar;
callp localProc();
P652();
P158();
P1352();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1422 in the procedure';
end-proc;