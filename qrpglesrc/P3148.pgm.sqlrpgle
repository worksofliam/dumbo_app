**free

ctl-opt dftactgrp(*no);

dcl-pi P3148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2826.rpgleinc'
/copy 'qrpgleref/P2183.rpgleinc'
/copy 'qrpgleref/P1338.rpgleinc'

dcl-ds theTable extname('T1160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1160 LIMIT 1;

theCharVar = 'Hello from P3148';
dsply theCharVar;
callp localProc();
P2826();
P2183();
P1338();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3148 in the procedure';
end-proc;