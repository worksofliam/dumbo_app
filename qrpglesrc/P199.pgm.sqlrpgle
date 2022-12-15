**free

ctl-opt dftactgrp(*no);

dcl-pi P199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds theTable extname('T203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T203 LIMIT 1;

theCharVar = 'Hello from P199';
dsply theCharVar;
callp localProc();
P10();
P177();
P73();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P199 in the procedure';
end-proc;