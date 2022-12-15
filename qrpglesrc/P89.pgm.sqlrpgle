**free

ctl-opt dftactgrp(*no);

dcl-pi P89;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T1768') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1768 LIMIT 1;

theCharVar = 'Hello from P89';
dsply theCharVar;
callp localProc();
P65();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P89 in the procedure';
end-proc;