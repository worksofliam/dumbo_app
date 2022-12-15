**free

ctl-opt dftactgrp(*no);

dcl-pi P5086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1554.rpgleinc'
/copy 'qrpgleref/P4747.rpgleinc'
/copy 'qrpgleref/P1777.rpgleinc'

dcl-ds theTable extname('T590') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T590 LIMIT 1;

theCharVar = 'Hello from P5086';
dsply theCharVar;
callp localProc();
P1554();
P4747();
P1777();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5086 in the procedure';
end-proc;