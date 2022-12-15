**free

ctl-opt dftactgrp(*no);

dcl-pi P4576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P418.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P4519.rpgleinc'

dcl-ds theTable extname('T1335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1335 LIMIT 1;

theCharVar = 'Hello from P4576';
dsply theCharVar;
callp localProc();
P418();
P552();
P4519();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4576 in the procedure';
end-proc;