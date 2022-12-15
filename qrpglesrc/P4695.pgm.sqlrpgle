**free

ctl-opt dftactgrp(*no);

dcl-pi P4695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3846.rpgleinc'
/copy 'qrpgleref/P4291.rpgleinc'
/copy 'qrpgleref/P1458.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P4695';
dsply theCharVar;
callp localProc();
P3846();
P4291();
P1458();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4695 in the procedure';
end-proc;