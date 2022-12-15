**free

ctl-opt dftactgrp(*no);

dcl-pi P2101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P2066.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P2101';
dsply theCharVar;
callp localProc();
P1798();
P2066();
P403();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2101 in the procedure';
end-proc;