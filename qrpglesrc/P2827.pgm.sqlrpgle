**free

ctl-opt dftactgrp(*no);

dcl-pi P2827;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P745.rpgleinc'
/copy 'qrpgleref/P2229.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'

dcl-ds theTable extname('T1283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1283 LIMIT 1;

theCharVar = 'Hello from P2827';
dsply theCharVar;
callp localProc();
P745();
P2229();
P761();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2827 in the procedure';
end-proc;