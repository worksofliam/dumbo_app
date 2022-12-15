**free

ctl-opt dftactgrp(*no);

dcl-pi P376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T1187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1187 LIMIT 1;

theCharVar = 'Hello from P376';
dsply theCharVar;
callp localProc();
P297();
P163();
P325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P376 in the procedure';
end-proc;