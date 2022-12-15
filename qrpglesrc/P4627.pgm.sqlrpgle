**free

ctl-opt dftactgrp(*no);

dcl-pi P4627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P2760.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T33') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T33 LIMIT 1;

theCharVar = 'Hello from P4627';
dsply theCharVar;
callp localProc();
P757();
P2760();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4627 in the procedure';
end-proc;