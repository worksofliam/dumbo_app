**free

ctl-opt dftactgrp(*no);

dcl-pi P100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds T142 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T142 FROM T142 LIMIT 1;

theCharVar = 'Hello from P100';
dsply theCharVar;
callp localProc();
P98();
P43();
P20();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P100 in the procedure';
end-proc;