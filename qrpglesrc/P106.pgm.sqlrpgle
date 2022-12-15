**free

ctl-opt dftactgrp(*no);

dcl-pi P106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P106';
dsply theCharVar;
callp localProc();
P88();
P79();
P105();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P106 in the procedure';
end-proc;