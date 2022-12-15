**free

ctl-opt dftactgrp(*no);

dcl-pi P168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P168';
dsply theCharVar;
callp localProc();
P136();
P3();
P118();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P168 in the procedure';
end-proc;