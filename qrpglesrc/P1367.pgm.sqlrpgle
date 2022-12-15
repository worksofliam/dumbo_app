**free

ctl-opt dftactgrp(*no);

dcl-pi P1367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P1367';
dsply theCharVar;
callp localProc();
P591();
P1011();
P434();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1367 in the procedure';
end-proc;