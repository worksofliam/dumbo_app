**free

ctl-opt dftactgrp(*no);

dcl-pi P3973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1550.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P630.rpgleinc'

dcl-ds theTable extname('T780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T780 LIMIT 1;

theCharVar = 'Hello from P3973';
dsply theCharVar;
callp localProc();
P1550();
P433();
P630();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3973 in the procedure';
end-proc;