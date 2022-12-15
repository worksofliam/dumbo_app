**free

ctl-opt dftactgrp(*no);

dcl-pi P4034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2467.rpgleinc'
/copy 'qrpgleref/P3733.rpgleinc'
/copy 'qrpgleref/P3896.rpgleinc'

dcl-ds theTable extname('T877') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T877 LIMIT 1;

theCharVar = 'Hello from P4034';
dsply theCharVar;
callp localProc();
P2467();
P3733();
P3896();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4034 in the procedure';
end-proc;