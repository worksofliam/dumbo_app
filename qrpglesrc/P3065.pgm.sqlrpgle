**free

ctl-opt dftactgrp(*no);

dcl-pi P3065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2150.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'

dcl-ds theTable extname('T875') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T875 LIMIT 1;

theCharVar = 'Hello from P3065';
dsply theCharVar;
callp localProc();
P2150();
P987();
P703();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3065 in the procedure';
end-proc;