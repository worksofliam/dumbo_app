**free

ctl-opt dftactgrp(*no);

dcl-pi P2036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1175.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P1846.rpgleinc'

dcl-ds T591 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T591 FROM T591 LIMIT 1;

theCharVar = 'Hello from P2036';
dsply theCharVar;
callp localProc();
P1175();
P213();
P1846();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2036 in the procedure';
end-proc;