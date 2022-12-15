**free

ctl-opt dftactgrp(*no);

dcl-pi P1814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1680.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'

dcl-ds T1014 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1014 FROM T1014 LIMIT 1;

theCharVar = 'Hello from P1814';
dsply theCharVar;
callp localProc();
P1680();
P500();
P1697();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1814 in the procedure';
end-proc;