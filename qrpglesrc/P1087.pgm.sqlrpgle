**free

ctl-opt dftactgrp(*no);

dcl-pi P1087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'

dcl-ds theTable extname('T74') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T74 LIMIT 1;

theCharVar = 'Hello from P1087';
dsply theCharVar;
callp localProc();
P272();
P155();
P314();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1087 in the procedure';
end-proc;