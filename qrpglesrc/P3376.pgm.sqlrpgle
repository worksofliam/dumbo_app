**free

ctl-opt dftactgrp(*no);

dcl-pi P3376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2352.rpgleinc'
/copy 'qrpgleref/P930.rpgleinc'
/copy 'qrpgleref/P2511.rpgleinc'

dcl-ds theTable extname('T132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T132 LIMIT 1;

theCharVar = 'Hello from P3376';
dsply theCharVar;
callp localProc();
P2352();
P930();
P2511();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3376 in the procedure';
end-proc;