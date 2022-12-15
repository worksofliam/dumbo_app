**free

ctl-opt dftactgrp(*no);

dcl-pi P778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds T970 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T970 FROM T970 LIMIT 1;

theCharVar = 'Hello from P778';
dsply theCharVar;
callp localProc();
P421();
P283();
P386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P778 in the procedure';
end-proc;