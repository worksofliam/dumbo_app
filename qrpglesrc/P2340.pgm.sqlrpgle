**free

ctl-opt dftactgrp(*no);

dcl-pi P2340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P2308.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P2340';
dsply theCharVar;
callp localProc();
P778();
P120();
P2308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2340 in the procedure';
end-proc;