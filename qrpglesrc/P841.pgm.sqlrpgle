**free

ctl-opt dftactgrp(*no);

dcl-pi P841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds theTable extname('T1141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1141 LIMIT 1;

theCharVar = 'Hello from P841';
dsply theCharVar;
callp localProc();
P279();
P626();
P757();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P841 in the procedure';
end-proc;