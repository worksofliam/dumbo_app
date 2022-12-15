**free

ctl-opt dftactgrp(*no);

dcl-pi P1874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1478.rpgleinc'
/copy 'qrpgleref/P1039.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'

dcl-ds theTable extname('T434') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T434 LIMIT 1;

theCharVar = 'Hello from P1874';
dsply theCharVar;
callp localProc();
P1478();
P1039();
P637();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1874 in the procedure';
end-proc;