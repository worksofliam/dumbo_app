**free

ctl-opt dftactgrp(*no);

dcl-pi P3094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P2218.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'

dcl-ds theTable extname('T891') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T891 LIMIT 1;

theCharVar = 'Hello from P3094';
dsply theCharVar;
callp localProc();
P624();
P2218();
P990();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3094 in the procedure';
end-proc;