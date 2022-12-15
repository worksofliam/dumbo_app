**free

ctl-opt dftactgrp(*no);

dcl-pi P954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'

dcl-ds theTable extname('T23') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T23 LIMIT 1;

theCharVar = 'Hello from P954';
dsply theCharVar;
callp localProc();
P755();
P394();
P419();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P954 in the procedure';
end-proc;