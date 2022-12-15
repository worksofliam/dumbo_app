**free

ctl-opt dftactgrp(*no);

dcl-pi P4734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2192.rpgleinc'
/copy 'qrpgleref/P3145.rpgleinc'
/copy 'qrpgleref/P1795.rpgleinc'

dcl-ds theTable extname('T975') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T975 LIMIT 1;

theCharVar = 'Hello from P4734';
dsply theCharVar;
callp localProc();
P2192();
P3145();
P1795();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4734 in the procedure';
end-proc;