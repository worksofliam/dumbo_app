**free

ctl-opt dftactgrp(*no);

dcl-pi P5249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4001.rpgleinc'
/copy 'qrpgleref/P4122.rpgleinc'
/copy 'qrpgleref/P4241.rpgleinc'

dcl-ds theTable extname('T1055') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1055 LIMIT 1;

theCharVar = 'Hello from P5249';
dsply theCharVar;
callp localProc();
P4001();
P4122();
P4241();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5249 in the procedure';
end-proc;