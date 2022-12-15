**free

ctl-opt dftactgrp(*no);

dcl-pi P516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'

dcl-ds theTable extname('T179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T179 LIMIT 1;

theCharVar = 'Hello from P516';
dsply theCharVar;
callp localProc();
P481();
P136();
P450();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P516 in the procedure';
end-proc;