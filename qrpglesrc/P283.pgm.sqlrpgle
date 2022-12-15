**free

ctl-opt dftactgrp(*no);

dcl-pi P283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'

dcl-ds theTable extname('T342') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T342 LIMIT 1;

theCharVar = 'Hello from P283';
dsply theCharVar;
callp localProc();
P10();
P245();
P41();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P283 in the procedure';
end-proc;