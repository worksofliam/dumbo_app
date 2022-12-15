**free

ctl-opt dftactgrp(*no);

dcl-pi P5595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2413.rpgleinc'
/copy 'qrpgleref/P4144.rpgleinc'
/copy 'qrpgleref/P2423.rpgleinc'

dcl-ds theTable extname('T955') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T955 LIMIT 1;

theCharVar = 'Hello from P5595';
dsply theCharVar;
callp localProc();
P2413();
P4144();
P2423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5595 in the procedure';
end-proc;