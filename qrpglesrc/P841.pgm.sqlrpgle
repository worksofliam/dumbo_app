**free

ctl-opt dftactgrp(*no);

dcl-pi P841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'

dcl-ds theTable extname('T299') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T299 LIMIT 1;

theCharVar = 'Hello from P841';
dsply theCharVar;
callp localProc();
P199();
P171();
P625();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P841 in the procedure';
end-proc;