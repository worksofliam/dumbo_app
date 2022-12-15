**free

ctl-opt dftactgrp(*no);

dcl-pi P1940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1428.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P1574.rpgleinc'

dcl-ds theTable extname('T223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T223 LIMIT 1;

theCharVar = 'Hello from P1940';
dsply theCharVar;
callp localProc();
P1428();
P605();
P1574();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1940 in the procedure';
end-proc;