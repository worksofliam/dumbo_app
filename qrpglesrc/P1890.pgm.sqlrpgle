**free

ctl-opt dftactgrp(*no);

dcl-pi P1890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1338.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'

dcl-ds T1520 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1520 FROM T1520 LIMIT 1;

theCharVar = 'Hello from P1890';
dsply theCharVar;
callp localProc();
P1338();
P165();
P374();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1890 in the procedure';
end-proc;