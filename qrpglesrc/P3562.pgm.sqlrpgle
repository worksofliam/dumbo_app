**free

ctl-opt dftactgrp(*no);

dcl-pi P3562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3128.rpgleinc'
/copy 'qrpgleref/P1016.rpgleinc'
/copy 'qrpgleref/P813.rpgleinc'

dcl-ds theTable extname('T1795') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1795 LIMIT 1;

theCharVar = 'Hello from P3562';
dsply theCharVar;
callp localProc();
P3128();
P1016();
P813();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3562 in the procedure';
end-proc;