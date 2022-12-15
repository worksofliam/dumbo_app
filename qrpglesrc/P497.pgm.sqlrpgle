**free

ctl-opt dftactgrp(*no);

dcl-pi P497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'

dcl-ds theTable extname('T107') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T107 LIMIT 1;

theCharVar = 'Hello from P497';
dsply theCharVar;
callp localProc();
P347();
P437();
P210();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P497 in the procedure';
end-proc;