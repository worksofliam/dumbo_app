**free

ctl-opt dftactgrp(*no);

dcl-pi P4133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P3553.rpgleinc'
/copy 'qrpgleref/P3829.rpgleinc'

dcl-ds theTable extname('T1414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1414 LIMIT 1;

theCharVar = 'Hello from P4133';
dsply theCharVar;
callp localProc();
P757();
P3553();
P3829();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4133 in the procedure';
end-proc;