**free

ctl-opt dftactgrp(*no);

dcl-pi P5417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2819.rpgleinc'
/copy 'qrpgleref/P4501.rpgleinc'
/copy 'qrpgleref/P2502.rpgleinc'

dcl-ds theTable extname('T1732') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1732 LIMIT 1;

theCharVar = 'Hello from P5417';
dsply theCharVar;
callp localProc();
P2819();
P4501();
P2502();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5417 in the procedure';
end-proc;