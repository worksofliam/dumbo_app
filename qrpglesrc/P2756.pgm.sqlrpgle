**free

ctl-opt dftactgrp(*no);

dcl-pi P2756;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1810.rpgleinc'
/copy 'qrpgleref/P2600.rpgleinc'
/copy 'qrpgleref/P1989.rpgleinc'

dcl-ds T1339 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1339 FROM T1339 LIMIT 1;

theCharVar = 'Hello from P2756';
dsply theCharVar;
callp localProc();
P1810();
P2600();
P1989();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2756 in the procedure';
end-proc;