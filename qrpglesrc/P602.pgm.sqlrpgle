**free

ctl-opt dftactgrp(*no);

dcl-pi P602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds theTable extname('T136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T136 LIMIT 1;

theCharVar = 'Hello from P602';
dsply theCharVar;
callp localProc();
P166();
P569();
P379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P602 in the procedure';
end-proc;