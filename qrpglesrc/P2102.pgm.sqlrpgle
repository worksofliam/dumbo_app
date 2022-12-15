**free

ctl-opt dftactgrp(*no);

dcl-pi P2102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1249.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P2102';
dsply theCharVar;
callp localProc();
P1249();
P379();
P122();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2102 in the procedure';
end-proc;