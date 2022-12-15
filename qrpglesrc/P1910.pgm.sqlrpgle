**free

ctl-opt dftactgrp(*no);

dcl-pi P1910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P1281.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'

dcl-ds T255 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T255 FROM T255 LIMIT 1;

theCharVar = 'Hello from P1910';
dsply theCharVar;
callp localProc();
P231();
P1281();
P761();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1910 in the procedure';
end-proc;