**free

ctl-opt dftactgrp(*no);

dcl-pi P348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T1013') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1013 LIMIT 1;

theCharVar = 'Hello from P348';
dsply theCharVar;
callp localProc();
P188();
P159();
P236();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P348 in the procedure';
end-proc;