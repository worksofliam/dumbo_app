**free

ctl-opt dftactgrp(*no);

dcl-pi P775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds theTable extname('T1176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1176 LIMIT 1;

theCharVar = 'Hello from P775';
dsply theCharVar;
callp localProc();
P251();
P773();
P765();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P775 in the procedure';
end-proc;