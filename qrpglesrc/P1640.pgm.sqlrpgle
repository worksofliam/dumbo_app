**free

ctl-opt dftactgrp(*no);

dcl-pi P1640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1405.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P1613.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P1640';
dsply theCharVar;
callp localProc();
P1405();
P78();
P1613();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1640 in the procedure';
end-proc;