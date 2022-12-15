**free

ctl-opt dftactgrp(*no);

dcl-pi P1627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P1372.rpgleinc'

dcl-ds T16 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T16 FROM T16 LIMIT 1;

theCharVar = 'Hello from P1627';
dsply theCharVar;
callp localProc();
P71();
P667();
P1372();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1627 in the procedure';
end-proc;