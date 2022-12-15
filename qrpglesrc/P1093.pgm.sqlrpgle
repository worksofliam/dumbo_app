**free

ctl-opt dftactgrp(*no);

dcl-pi P1093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1058.rpgleinc'
/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'

dcl-ds theTable extname('T364') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T364 LIMIT 1;

theCharVar = 'Hello from P1093';
dsply theCharVar;
callp localProc();
P1058();
P1005();
P934();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1093 in the procedure';
end-proc;