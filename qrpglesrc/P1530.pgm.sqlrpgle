**free

ctl-opt dftactgrp(*no);

dcl-pi P1530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P884.rpgleinc'

dcl-ds theTable extname('T347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T347 LIMIT 1;

theCharVar = 'Hello from P1530';
dsply theCharVar;
callp localProc();
P527();
P71();
P884();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1530 in the procedure';
end-proc;