**free

ctl-opt dftactgrp(*no);

dcl-pi P194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T1214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1214 LIMIT 1;

theCharVar = 'Hello from P194';
dsply theCharVar;
callp localProc();
P156();
P9();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P194 in the procedure';
end-proc;