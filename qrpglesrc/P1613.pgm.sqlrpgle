**free

ctl-opt dftactgrp(*no);

dcl-pi P1613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1325.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P1063.rpgleinc'

dcl-ds theTable extname('T418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T418 LIMIT 1;

theCharVar = 'Hello from P1613';
dsply theCharVar;
callp localProc();
P1325();
P774();
P1063();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1613 in the procedure';
end-proc;