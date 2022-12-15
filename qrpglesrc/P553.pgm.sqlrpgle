**free

ctl-opt dftactgrp(*no);

dcl-pi P553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'

dcl-ds theTable extname('T971') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T971 LIMIT 1;

theCharVar = 'Hello from P553';
dsply theCharVar;
callp localProc();
P177();
P379();
P437();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P553 in the procedure';
end-proc;