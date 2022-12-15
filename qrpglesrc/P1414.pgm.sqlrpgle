**free

ctl-opt dftactgrp(*no);

dcl-pi P1414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P857.rpgleinc'
/copy 'qrpgleref/P1351.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'

dcl-ds theTable extname('T262') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T262 LIMIT 1;

theCharVar = 'Hello from P1414';
dsply theCharVar;
callp localProc();
P857();
P1351();
P309();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1414 in the procedure';
end-proc;