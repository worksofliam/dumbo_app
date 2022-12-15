**free

ctl-opt dftactgrp(*no);

dcl-pi P4975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2544.rpgleinc'
/copy 'qrpgleref/P3853.rpgleinc'
/copy 'qrpgleref/P3226.rpgleinc'

dcl-ds theTable extname('T936') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T936 LIMIT 1;

theCharVar = 'Hello from P4975';
dsply theCharVar;
callp localProc();
P2544();
P3853();
P3226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4975 in the procedure';
end-proc;