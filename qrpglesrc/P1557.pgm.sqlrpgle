**free

ctl-opt dftactgrp(*no);

dcl-pi P1557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P574.rpgleinc'
/copy 'qrpgleref/P1439.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'

dcl-ds theTable extname('T920') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T920 LIMIT 1;

theCharVar = 'Hello from P1557';
dsply theCharVar;
callp localProc();
P574();
P1439();
P491();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1557 in the procedure';
end-proc;