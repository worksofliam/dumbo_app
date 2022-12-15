**free

ctl-opt dftactgrp(*no);

dcl-pi P978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P978';
dsply theCharVar;
callp localProc();
P547();
P838();
P809();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P978 in the procedure';
end-proc;