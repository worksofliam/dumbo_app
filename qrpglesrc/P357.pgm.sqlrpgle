**free

ctl-opt dftactgrp(*no);

dcl-pi P357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds theTable extname('T1201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1201 LIMIT 1;

theCharVar = 'Hello from P357';
dsply theCharVar;
callp localProc();
P309();
P149();
P337();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P357 in the procedure';
end-proc;