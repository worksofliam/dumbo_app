**free

ctl-opt dftactgrp(*no);

dcl-pi P732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T1158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1158 LIMIT 1;

theCharVar = 'Hello from P732';
dsply theCharVar;
callp localProc();
P282();
P191();
P83();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P732 in the procedure';
end-proc;