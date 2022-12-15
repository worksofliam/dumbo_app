**free

ctl-opt dftactgrp(*no);

dcl-pi P987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P681.rpgleinc'

dcl-ds theTable extname('T778') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T778 LIMIT 1;

theCharVar = 'Hello from P987';
dsply theCharVar;
callp localProc();
P87();
P810();
P681();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P987 in the procedure';
end-proc;