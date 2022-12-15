**free

ctl-opt dftactgrp(*no);

dcl-pi P1496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds theTable extname('T472') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T472 LIMIT 1;

theCharVar = 'Hello from P1496';
dsply theCharVar;
callp localProc();
P682();
P307();
P166();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1496 in the procedure';
end-proc;