**free

ctl-opt dftactgrp(*no);

dcl-pi P1560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P1263.rpgleinc'

dcl-ds theTable extname('T807') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T807 LIMIT 1;

theCharVar = 'Hello from P1560';
dsply theCharVar;
callp localProc();
P189();
P537();
P1263();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1560 in the procedure';
end-proc;