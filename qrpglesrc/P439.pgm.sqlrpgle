**free

ctl-opt dftactgrp(*no);

dcl-pi P439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds theTable extname('T12') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T12 LIMIT 1;

theCharVar = 'Hello from P439';
dsply theCharVar;
callp localProc();
P355();
P163();
P379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P439 in the procedure';
end-proc;