**free

ctl-opt dftactgrp(*no);

dcl-pi P1231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds theTable extname('T1189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1189 LIMIT 1;

theCharVar = 'Hello from P1231';
dsply theCharVar;
callp localProc();
P618();
P896();
P753();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1231 in the procedure';
end-proc;