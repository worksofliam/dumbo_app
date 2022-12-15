**free

ctl-opt dftactgrp(*no);

dcl-pi P4463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2968.rpgleinc'
/copy 'qrpgleref/P982.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P4463';
dsply theCharVar;
callp localProc();
P2968();
P982();
P841();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4463 in the procedure';
end-proc;