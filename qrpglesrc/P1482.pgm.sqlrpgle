**free

ctl-opt dftactgrp(*no);

dcl-pi P1482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P1336.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P1482';
dsply theCharVar;
callp localProc();
P309();
P1336();
P311();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1482 in the procedure';
end-proc;