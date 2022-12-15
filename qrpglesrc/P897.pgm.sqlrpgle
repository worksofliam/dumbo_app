**free

ctl-opt dftactgrp(*no);

dcl-pi P897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds theTable extname('T499') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T499 LIMIT 1;

theCharVar = 'Hello from P897';
dsply theCharVar;
callp localProc();
P370();
P652();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P897 in the procedure';
end-proc;