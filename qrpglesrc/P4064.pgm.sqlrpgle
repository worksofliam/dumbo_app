**free

ctl-opt dftactgrp(*no);

dcl-pi P4064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3468.rpgleinc'
/copy 'qrpgleref/P3887.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P4064';
dsply theCharVar;
callp localProc();
P3468();
P3887();
P397();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4064 in the procedure';
end-proc;