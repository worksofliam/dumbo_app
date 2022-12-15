**free

ctl-opt dftactgrp(*no);

dcl-pi P1961;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P643.rpgleinc'
/copy 'qrpgleref/P1680.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds T620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T620 FROM T620 LIMIT 1;

theCharVar = 'Hello from P1961';
dsply theCharVar;
callp localProc();
P643();
P1680();
P652();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1961 in the procedure';
end-proc;