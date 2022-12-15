**free

ctl-opt dftactgrp(*no);

dcl-pi P2901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P769.rpgleinc'
/copy 'qrpgleref/P2669.rpgleinc'
/copy 'qrpgleref/P2826.rpgleinc'

dcl-ds theTable extname('T1630') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1630 LIMIT 1;

theCharVar = 'Hello from P2901';
dsply theCharVar;
callp localProc();
P769();
P2669();
P2826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2901 in the procedure';
end-proc;