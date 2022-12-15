**free

ctl-opt dftactgrp(*no);

dcl-pi P2823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P983.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'

dcl-ds theTable extname('T89') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T89 LIMIT 1;

theCharVar = 'Hello from P2823';
dsply theCharVar;
callp localProc();
P163();
P983();
P545();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2823 in the procedure';
end-proc;