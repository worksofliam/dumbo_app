**free

ctl-opt dftactgrp(*no);

dcl-pi P1402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P1305.rpgleinc'

dcl-ds theTable extname('T457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T457 LIMIT 1;

theCharVar = 'Hello from P1402';
dsply theCharVar;
callp localProc();
P281();
P410();
P1305();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1402 in the procedure';
end-proc;