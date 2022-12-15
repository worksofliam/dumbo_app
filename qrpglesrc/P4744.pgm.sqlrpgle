**free

ctl-opt dftactgrp(*no);

dcl-pi P4744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2503.rpgleinc'
/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P1683.rpgleinc'

dcl-ds theTable extname('T659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T659 LIMIT 1;

theCharVar = 'Hello from P4744';
dsply theCharVar;
callp localProc();
P2503();
P988();
P1683();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4744 in the procedure';
end-proc;