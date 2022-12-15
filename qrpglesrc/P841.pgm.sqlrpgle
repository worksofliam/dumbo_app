**free

ctl-opt dftactgrp(*no);

dcl-pi P841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P841';
dsply theCharVar;
callp localProc();
P105();
P185();
P52();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P841 in the procedure';
end-proc;