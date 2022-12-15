**free

ctl-opt dftactgrp(*no);

dcl-pi P1507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1498.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'

dcl-ds T1077 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1077 FROM T1077 LIMIT 1;

theCharVar = 'Hello from P1507';
dsply theCharVar;
callp localProc();
P1498();
P187();
P743();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1507 in the procedure';
end-proc;