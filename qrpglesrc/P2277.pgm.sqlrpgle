**free

ctl-opt dftactgrp(*no);

dcl-pi P2277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P860.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'

dcl-ds theTable extname('T342') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T342 LIMIT 1;

theCharVar = 'Hello from P2277';
dsply theCharVar;
callp localProc();
P237();
P860();
P1732();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2277 in the procedure';
end-proc;