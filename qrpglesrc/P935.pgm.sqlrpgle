**free

ctl-opt dftactgrp(*no);

dcl-pi P935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds theTable extname('T165') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T165 LIMIT 1;

theCharVar = 'Hello from P935';
dsply theCharVar;
callp localProc();
P610();
P163();
P640();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P935 in the procedure';
end-proc;