**free

ctl-opt dftactgrp(*no);

dcl-pi P2676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P1187.rpgleinc'

dcl-ds theTable extname('T710') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T710 LIMIT 1;

theCharVar = 'Hello from P2676';
dsply theCharVar;
callp localProc();
P416();
P763();
P1187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2676 in the procedure';
end-proc;