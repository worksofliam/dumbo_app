**free

ctl-opt dftactgrp(*no);

dcl-pi P2350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1860.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'

dcl-ds theTable extname('T878') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T878 LIMIT 1;

theCharVar = 'Hello from P2350';
dsply theCharVar;
callp localProc();
P1860();
P900();
P231();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2350 in the procedure';
end-proc;