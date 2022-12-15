**free

ctl-opt dftactgrp(*no);

dcl-pi P5032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3659.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'
/copy 'qrpgleref/P1686.rpgleinc'

dcl-ds T1738 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1738 FROM T1738 LIMIT 1;

theCharVar = 'Hello from P5032';
dsply theCharVar;
callp localProc();
P3659();
P1142();
P1686();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5032 in the procedure';
end-proc;