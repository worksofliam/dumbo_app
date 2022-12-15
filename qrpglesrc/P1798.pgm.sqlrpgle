**free

ctl-opt dftactgrp(*no);

dcl-pi P1798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds theTable extname('T185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T185 LIMIT 1;

theCharVar = 'Hello from P1798';
dsply theCharVar;
callp localProc();
P1108();
P119();
P246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1798 in the procedure';
end-proc;