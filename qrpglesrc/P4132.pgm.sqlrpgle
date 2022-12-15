**free

ctl-opt dftactgrp(*no);

dcl-pi P4132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P2831.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'

dcl-ds theTable extname('T327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T327 LIMIT 1;

theCharVar = 'Hello from P4132';
dsply theCharVar;
callp localProc();
P978();
P2831();
P752();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4132 in the procedure';
end-proc;