**free

ctl-opt dftactgrp(*no);

dcl-pi P4382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P4246.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'

dcl-ds theTable extname('T1301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1301 LIMIT 1;

theCharVar = 'Hello from P4382';
dsply theCharVar;
callp localProc();
P63();
P4246();
P1473();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4382 in the procedure';
end-proc;