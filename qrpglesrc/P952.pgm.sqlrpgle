**free

ctl-opt dftactgrp(*no);

dcl-pi P952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'

dcl-ds theTable extname('T33') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T33 LIMIT 1;

theCharVar = 'Hello from P952';
dsply theCharVar;
callp localProc();
P783();
P741();
P854();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P952 in the procedure';
end-proc;