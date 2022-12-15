**free

ctl-opt dftactgrp(*no);

dcl-pi P2480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P462.rpgleinc'
/copy 'qrpgleref/P859.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'

dcl-ds theTable extname('T689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T689 LIMIT 1;

theCharVar = 'Hello from P2480';
dsply theCharVar;
callp localProc();
P462();
P859();
P188();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2480 in the procedure';
end-proc;