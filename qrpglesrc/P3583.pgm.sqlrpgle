**free

ctl-opt dftactgrp(*no);

dcl-pi P3583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2435.rpgleinc'
/copy 'qrpgleref/P2355.rpgleinc'
/copy 'qrpgleref/P1590.rpgleinc'

dcl-ds T157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T157 FROM T157 LIMIT 1;

theCharVar = 'Hello from P3583';
dsply theCharVar;
callp localProc();
P2435();
P2355();
P1590();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3583 in the procedure';
end-proc;