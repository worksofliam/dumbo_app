**free

ctl-opt dftactgrp(*no);

dcl-pi P3267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P2233.rpgleinc'
/copy 'qrpgleref/P1172.rpgleinc'

dcl-ds theTable extname('T1167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1167 LIMIT 1;

theCharVar = 'Hello from P3267';
dsply theCharVar;
callp localProc();
P580();
P2233();
P1172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3267 in the procedure';
end-proc;