**free

ctl-opt dftactgrp(*no);

dcl-pi P1168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P923.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds theTable extname('T280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T280 LIMIT 1;

theCharVar = 'Hello from P1168';
dsply theCharVar;
callp localProc();
P923();
P351();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1168 in the procedure';
end-proc;