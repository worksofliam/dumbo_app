**free

ctl-opt dftactgrp(*no);

dcl-pi P3234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3019.rpgleinc'
/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P2568.rpgleinc'

dcl-ds theTable extname('T1026') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1026 LIMIT 1;

theCharVar = 'Hello from P3234';
dsply theCharVar;
callp localProc();
P3019();
P936();
P2568();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3234 in the procedure';
end-proc;