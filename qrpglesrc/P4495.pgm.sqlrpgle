**free

ctl-opt dftactgrp(*no);

dcl-pi P4495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1683.rpgleinc'
/copy 'qrpgleref/P4011.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P4495';
dsply theCharVar;
callp localProc();
P1683();
P4011();
P659();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4495 in the procedure';
end-proc;