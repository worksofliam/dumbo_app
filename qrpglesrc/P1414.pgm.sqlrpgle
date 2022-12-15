**free

ctl-opt dftactgrp(*no);

dcl-pi P1414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds theTable extname('T1324') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1324 LIMIT 1;

theCharVar = 'Hello from P1414';
dsply theCharVar;
callp localProc();
P980();
P672();
P59();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1414 in the procedure';
end-proc;