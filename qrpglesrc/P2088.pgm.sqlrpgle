**free

ctl-opt dftactgrp(*no);

dcl-pi P2088;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2070.rpgleinc'
/copy 'qrpgleref/P1899.rpgleinc'
/copy 'qrpgleref/P1564.rpgleinc'

dcl-ds theTable extname('T528') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T528 LIMIT 1;

theCharVar = 'Hello from P2088';
dsply theCharVar;
callp localProc();
P2070();
P1899();
P1564();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2088 in the procedure';
end-proc;