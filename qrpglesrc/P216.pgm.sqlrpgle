**free

ctl-opt dftactgrp(*no);

dcl-pi P216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T1131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1131 LIMIT 1;

theCharVar = 'Hello from P216';
dsply theCharVar;
callp localProc();
P82();
P127();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P216 in the procedure';
end-proc;