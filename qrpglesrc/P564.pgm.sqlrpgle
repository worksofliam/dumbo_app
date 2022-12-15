**free

ctl-opt dftactgrp(*no);

dcl-pi P564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'

dcl-ds theTable extname('T841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T841 LIMIT 1;

theCharVar = 'Hello from P564';
dsply theCharVar;
callp localProc();
P195();
P323();
P491();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P564 in the procedure';
end-proc;