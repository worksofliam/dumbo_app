**free

ctl-opt dftactgrp(*no);

dcl-pi P845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds theTable extname('T604') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T604 LIMIT 1;

theCharVar = 'Hello from P845';
dsply theCharVar;
callp localProc();
P553();
P329();
P233();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P845 in the procedure';
end-proc;