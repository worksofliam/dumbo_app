**free

ctl-opt dftactgrp(*no);

dcl-pi P732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P732';
dsply theCharVar;
callp localProc();
P604();
P62();
P14();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P732 in the procedure';
end-proc;