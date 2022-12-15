**free

ctl-opt dftactgrp(*no);

dcl-pi P4334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1751.rpgleinc'
/copy 'qrpgleref/P4262.rpgleinc'
/copy 'qrpgleref/P3875.rpgleinc'

dcl-ds theTable extname('T1064') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1064 LIMIT 1;

theCharVar = 'Hello from P4334';
dsply theCharVar;
callp localProc();
P1751();
P4262();
P3875();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4334 in the procedure';
end-proc;