**free

ctl-opt dftactgrp(*no);

dcl-pi P2591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P1779.rpgleinc'

dcl-ds T26 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T26 FROM T26 LIMIT 1;

theCharVar = 'Hello from P2591';
dsply theCharVar;
callp localProc();
P530();
P1034();
P1779();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2591 in the procedure';
end-proc;