**free

ctl-opt dftactgrp(*no);

dcl-pi P4400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3413.rpgleinc'
/copy 'qrpgleref/P2699.rpgleinc'
/copy 'qrpgleref/P2005.rpgleinc'

dcl-ds theTable extname('T1569') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1569 LIMIT 1;

theCharVar = 'Hello from P4400';
dsply theCharVar;
callp localProc();
P3413();
P2699();
P2005();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4400 in the procedure';
end-proc;