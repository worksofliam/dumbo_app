**free

ctl-opt dftactgrp(*no);

dcl-pi P441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T1708') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1708 LIMIT 1;

theCharVar = 'Hello from P441';
dsply theCharVar;
callp localProc();
P404();
P230();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P441 in the procedure';
end-proc;