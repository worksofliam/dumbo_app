**free

ctl-opt dftactgrp(*no);

dcl-pi P1396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1298.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P1396';
dsply theCharVar;
callp localProc();
P1298();
P644();
P757();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1396 in the procedure';
end-proc;