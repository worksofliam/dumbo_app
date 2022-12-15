**free

ctl-opt dftactgrp(*no);

dcl-pi P1087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P1087';
dsply theCharVar;
callp localProc();
P367();
P470();
P14();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1087 in the procedure';
end-proc;