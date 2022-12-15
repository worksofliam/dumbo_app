**free

ctl-opt dftactgrp(*no);

dcl-pi P2554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1400.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'

dcl-ds theTable extname('T397') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T397 LIMIT 1;

theCharVar = 'Hello from P2554';
dsply theCharVar;
callp localProc();
P1400();
P553();
P614();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2554 in the procedure';
end-proc;