**free

ctl-opt dftactgrp(*no);

dcl-pi P404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'

dcl-ds theTable extname('T1364') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1364 LIMIT 1;

theCharVar = 'Hello from P404';
dsply theCharVar;
callp localProc();
P189();
P165();
P107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P404 in the procedure';
end-proc;