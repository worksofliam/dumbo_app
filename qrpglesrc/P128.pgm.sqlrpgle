**free

ctl-opt dftactgrp(*no);

dcl-pi P128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'

dcl-ds T28 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T28 FROM T28 LIMIT 1;

theCharVar = 'Hello from P128';
dsply theCharVar;
callp localProc();
P72();
P43();
P108();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P128 in the procedure';
end-proc;