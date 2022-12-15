**free

ctl-opt dftactgrp(*no);

dcl-pi P3228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2423.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'

dcl-ds theTable extname('T1141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1141 LIMIT 1;

theCharVar = 'Hello from P3228';
dsply theCharVar;
callp localProc();
P2423();
P529();
P229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3228 in the procedure';
end-proc;