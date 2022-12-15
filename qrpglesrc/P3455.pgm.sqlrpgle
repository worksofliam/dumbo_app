**free

ctl-opt dftactgrp(*no);

dcl-pi P3455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3383.rpgleinc'
/copy 'qrpgleref/P2121.rpgleinc'
/copy 'qrpgleref/P2230.rpgleinc'

dcl-ds theTable extname('T1865') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1865 LIMIT 1;

theCharVar = 'Hello from P3455';
dsply theCharVar;
callp localProc();
P3383();
P2121();
P2230();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3455 in the procedure';
end-proc;