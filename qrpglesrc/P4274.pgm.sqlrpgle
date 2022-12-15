**free

ctl-opt dftactgrp(*no);

dcl-pi P4274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1759.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P2060.rpgleinc'

dcl-ds theTable extname('T715') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T715 LIMIT 1;

theCharVar = 'Hello from P4274';
dsply theCharVar;
callp localProc();
P1759();
P309();
P2060();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4274 in the procedure';
end-proc;