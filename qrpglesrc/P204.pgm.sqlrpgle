**free

ctl-opt dftactgrp(*no);

dcl-pi P204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds theTable extname('T1178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1178 LIMIT 1;

theCharVar = 'Hello from P204';
dsply theCharVar;
callp localProc();
P7();
P29();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P204 in the procedure';
end-proc;