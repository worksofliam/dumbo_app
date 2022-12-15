**free

ctl-opt dftactgrp(*no);

dcl-pi P1174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds theTable extname('T231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T231 LIMIT 1;

theCharVar = 'Hello from P1174';
dsply theCharVar;
callp localProc();
P46();
P733();
P432();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1174 in the procedure';
end-proc;