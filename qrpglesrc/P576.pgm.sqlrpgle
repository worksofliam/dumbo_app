**free

ctl-opt dftactgrp(*no);

dcl-pi P576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds theTable extname('T781') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T781 LIMIT 1;

theCharVar = 'Hello from P576';
dsply theCharVar;
callp localProc();
P109();
P505();
P261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P576 in the procedure';
end-proc;