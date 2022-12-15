**free

ctl-opt dftactgrp(*no);

dcl-pi P4142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2254.rpgleinc'
/copy 'qrpgleref/P2244.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T1209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1209 LIMIT 1;

theCharVar = 'Hello from P4142';
dsply theCharVar;
callp localProc();
P2254();
P2244();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4142 in the procedure';
end-proc;