**free

ctl-opt dftactgrp(*no);

dcl-pi P1991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P984.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T1685 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1685 FROM T1685 LIMIT 1;

theCharVar = 'Hello from P1991';
dsply theCharVar;
callp localProc();
P984();
P802();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1991 in the procedure';
end-proc;