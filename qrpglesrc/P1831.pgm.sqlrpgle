**free

ctl-opt dftactgrp(*no);

dcl-pi P1831;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1137.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds theTable extname('T751') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T751 LIMIT 1;

theCharVar = 'Hello from P1831';
dsply theCharVar;
callp localProc();
P1137();
P613();
P144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1831 in the procedure';
end-proc;