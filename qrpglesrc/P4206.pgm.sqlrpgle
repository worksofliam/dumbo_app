**free

ctl-opt dftactgrp(*no);

dcl-pi P4206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3152.rpgleinc'
/copy 'qrpgleref/P2518.rpgleinc'
/copy 'qrpgleref/P1464.rpgleinc'

dcl-ds theTable extname('T726') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T726 LIMIT 1;

theCharVar = 'Hello from P4206';
dsply theCharVar;
callp localProc();
P3152();
P2518();
P1464();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4206 in the procedure';
end-proc;