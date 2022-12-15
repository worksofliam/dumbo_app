**free

ctl-opt dftactgrp(*no);

dcl-pi P726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds theTable extname('T985') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T985 LIMIT 1;

theCharVar = 'Hello from P726';
dsply theCharVar;
callp localProc();
P137();
P310();
P66();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P726 in the procedure';
end-proc;