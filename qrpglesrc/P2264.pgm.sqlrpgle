**free

ctl-opt dftactgrp(*no);

dcl-pi P2264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P1726.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P2264';
dsply theCharVar;
callp localProc();
P1783();
P656();
P1726();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2264 in the procedure';
end-proc;