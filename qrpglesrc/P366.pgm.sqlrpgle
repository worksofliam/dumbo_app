**free

ctl-opt dftactgrp(*no);

dcl-pi P366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds T1085 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1085 FROM T1085 LIMIT 1;

theCharVar = 'Hello from P366';
dsply theCharVar;
callp localProc();
P252();
P341();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P366 in the procedure';
end-proc;