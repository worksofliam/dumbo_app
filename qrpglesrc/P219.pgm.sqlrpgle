**free

ctl-opt dftactgrp(*no);

dcl-pi P219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T310') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T310 LIMIT 1;

theCharVar = 'Hello from P219';
dsply theCharVar;
callp localProc();
P63();
P136();
P139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P219 in the procedure';
end-proc;