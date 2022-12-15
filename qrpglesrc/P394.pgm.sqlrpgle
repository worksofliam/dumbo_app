**free

ctl-opt dftactgrp(*no);

dcl-pi P394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T53') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T53 LIMIT 1;

theCharVar = 'Hello from P394';
dsply theCharVar;
callp localProc();
P35();
P345();
P44();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P394 in the procedure';
end-proc;