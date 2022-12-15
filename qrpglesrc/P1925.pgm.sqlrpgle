**free

ctl-opt dftactgrp(*no);

dcl-pi P1925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P1320.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P1925';
dsply theCharVar;
callp localProc();
P526();
P619();
P1320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1925 in the procedure';
end-proc;