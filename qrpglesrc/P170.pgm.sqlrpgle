**free

ctl-opt dftactgrp(*no);

dcl-pi P170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'

dcl-ds T49 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T49 FROM T49 LIMIT 1;

theCharVar = 'Hello from P170';
dsply theCharVar;
callp localProc();
P124();
P18();
P72();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P170 in the procedure';
end-proc;