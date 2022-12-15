**free

ctl-opt dftactgrp(*no);

dcl-pi P5492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4845.rpgleinc'
/copy 'qrpgleref/P3659.rpgleinc'
/copy 'qrpgleref/P3491.rpgleinc'

dcl-ds theTable extname('T1328') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1328 LIMIT 1;

theCharVar = 'Hello from P5492';
dsply theCharVar;
callp localProc();
P4845();
P3659();
P3491();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5492 in the procedure';
end-proc;