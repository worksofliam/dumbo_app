**free

ctl-opt dftactgrp(*no);

dcl-pi P2813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P1144.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T1185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1185 LIMIT 1;

theCharVar = 'Hello from P2813';
dsply theCharVar;
callp localProc();
P171();
P1144();
P127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2813 in the procedure';
end-proc;