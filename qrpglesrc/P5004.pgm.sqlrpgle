**free

ctl-opt dftactgrp(*no);

dcl-pi P5004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4094.rpgleinc'
/copy 'qrpgleref/P4648.rpgleinc'
/copy 'qrpgleref/P4616.rpgleinc'

dcl-ds theTable extname('T427') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T427 LIMIT 1;

theCharVar = 'Hello from P5004';
dsply theCharVar;
callp localProc();
P4094();
P4648();
P4616();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5004 in the procedure';
end-proc;