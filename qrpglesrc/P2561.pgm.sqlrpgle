**free

ctl-opt dftactgrp(*no);

dcl-pi P2561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P861.rpgleinc'
/copy 'qrpgleref/P1692.rpgleinc'
/copy 'qrpgleref/P1249.rpgleinc'

dcl-ds T1133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1133 FROM T1133 LIMIT 1;

theCharVar = 'Hello from P2561';
dsply theCharVar;
callp localProc();
P861();
P1692();
P1249();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2561 in the procedure';
end-proc;