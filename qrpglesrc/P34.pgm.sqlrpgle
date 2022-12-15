**free

ctl-opt dftactgrp(*no);

dcl-pi P34;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T1833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1833 LIMIT 1;

theCharVar = 'Hello from P34';
dsply theCharVar;
callp localProc();
P21();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P34 in the procedure';
end-proc;