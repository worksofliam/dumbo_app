**free

ctl-opt dftactgrp(*no);

dcl-pi P2617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2416.rpgleinc'
/copy 'qrpgleref/P1078.rpgleinc'
/copy 'qrpgleref/P1812.rpgleinc'

dcl-ds theTable extname('T687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T687 LIMIT 1;

theCharVar = 'Hello from P2617';
dsply theCharVar;
callp localProc();
P2416();
P1078();
P1812();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2617 in the procedure';
end-proc;