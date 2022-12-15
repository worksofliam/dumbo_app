**free

ctl-opt dftactgrp(*no);

dcl-pi P1441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P804.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T1014') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1014 LIMIT 1;

theCharVar = 'Hello from P1441';
dsply theCharVar;
callp localProc();
P804();
P154();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1441 in the procedure';
end-proc;