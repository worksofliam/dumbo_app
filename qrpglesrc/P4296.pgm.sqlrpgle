**free

ctl-opt dftactgrp(*no);

dcl-pi P4296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3215.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P4125.rpgleinc'

dcl-ds theTable extname('T1702') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1702 LIMIT 1;

theCharVar = 'Hello from P4296';
dsply theCharVar;
callp localProc();
P3215();
P614();
P4125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4296 in the procedure';
end-proc;