**free

ctl-opt dftactgrp(*no);

dcl-pi P106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds theTable extname('T112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T112 LIMIT 1;

theCharVar = 'Hello from P106';
dsply theCharVar;
callp localProc();
P67();
P76();
P71();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P106 in the procedure';
end-proc;