**free

ctl-opt dftactgrp(*no);

dcl-pi P852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds T25 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T25 FROM T25 LIMIT 1;

theCharVar = 'Hello from P852';
dsply theCharVar;
callp localProc();
P49();
P529();
P252();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P852 in the procedure';
end-proc;