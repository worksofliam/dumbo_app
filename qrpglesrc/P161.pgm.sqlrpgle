**free

ctl-opt dftactgrp(*no);

dcl-pi P161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds theTable extname('T108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T108 LIMIT 1;

theCharVar = 'Hello from P161';
dsply theCharVar;
callp localProc();
P77();
P103();
P86();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P161 in the procedure';
end-proc;