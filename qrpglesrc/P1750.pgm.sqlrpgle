**free

ctl-opt dftactgrp(*no);

dcl-pi P1750;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1429.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'

dcl-ds theTable extname('T290') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T290 LIMIT 1;

theCharVar = 'Hello from P1750';
dsply theCharVar;
callp localProc();
P1429();
P445();
P605();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1750 in the procedure';
end-proc;