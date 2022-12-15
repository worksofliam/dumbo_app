**free

ctl-opt dftactgrp(*no);

dcl-pi P936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'

dcl-ds theTable extname('T231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T231 LIMIT 1;

theCharVar = 'Hello from P936';
dsply theCharVar;
callp localProc();
P838();
P139();
P768();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P936 in the procedure';
end-proc;