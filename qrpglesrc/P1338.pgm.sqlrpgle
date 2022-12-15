**free

ctl-opt dftactgrp(*no);

dcl-pi P1338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1076.rpgleinc'
/copy 'qrpgleref/P758.rpgleinc'
/copy 'qrpgleref/P996.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P1338';
dsply theCharVar;
callp localProc();
P1076();
P758();
P996();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1338 in the procedure';
end-proc;