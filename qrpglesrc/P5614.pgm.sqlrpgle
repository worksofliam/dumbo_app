**free

ctl-opt dftactgrp(*no);

dcl-pi P5614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4552.rpgleinc'
/copy 'qrpgleref/P1669.rpgleinc'
/copy 'qrpgleref/P5498.rpgleinc'

dcl-ds T1557 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1557 FROM T1557 LIMIT 1;

theCharVar = 'Hello from P5614';
dsply theCharVar;
callp localProc();
P4552();
P1669();
P5498();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5614 in the procedure';
end-proc;