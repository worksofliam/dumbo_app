**free

ctl-opt dftactgrp(*no);

dcl-pi P4387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2406.rpgleinc'
/copy 'qrpgleref/P3402.rpgleinc'
/copy 'qrpgleref/P3261.rpgleinc'

dcl-ds theTable extname('T175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T175 LIMIT 1;

theCharVar = 'Hello from P4387';
dsply theCharVar;
callp localProc();
P2406();
P3402();
P3261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4387 in the procedure';
end-proc;