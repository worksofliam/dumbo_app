**free

ctl-opt dftactgrp(*no);

dcl-pi P2396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1677.rpgleinc'
/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds theTable extname('T939') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T939 LIMIT 1;

theCharVar = 'Hello from P2396';
dsply theCharVar;
callp localProc();
P1677();
P935();
P820();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2396 in the procedure';
end-proc;