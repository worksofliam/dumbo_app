**free

ctl-opt dftactgrp(*no);

dcl-pi P2373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1508.rpgleinc'
/copy 'qrpgleref/P1423.rpgleinc'
/copy 'qrpgleref/P1926.rpgleinc'

dcl-ds theTable extname('T134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T134 LIMIT 1;

theCharVar = 'Hello from P2373';
dsply theCharVar;
callp localProc();
P1508();
P1423();
P1926();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2373 in the procedure';
end-proc;