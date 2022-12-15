**free

ctl-opt dftactgrp(*no);

dcl-pi P1257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P725.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'

dcl-ds theTable extname('T515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T515 LIMIT 1;

theCharVar = 'Hello from P1257';
dsply theCharVar;
callp localProc();
P725();
P491();
P749();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1257 in the procedure';
end-proc;