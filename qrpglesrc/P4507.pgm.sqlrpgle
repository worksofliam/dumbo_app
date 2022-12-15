**free

ctl-opt dftactgrp(*no);

dcl-pi P4507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3678.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P2727.rpgleinc'

dcl-ds theTable extname('T1648') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1648 LIMIT 1;

theCharVar = 'Hello from P4507';
dsply theCharVar;
callp localProc();
P3678();
P77();
P2727();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4507 in the procedure';
end-proc;