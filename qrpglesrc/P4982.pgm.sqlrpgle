**free

ctl-opt dftactgrp(*no);

dcl-pi P4982;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P1914.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'

dcl-ds T1577 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1577 FROM T1577 LIMIT 1;

theCharVar = 'Hello from P4982';
dsply theCharVar;
callp localProc();
P1373();
P1914();
P723();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4982 in the procedure';
end-proc;