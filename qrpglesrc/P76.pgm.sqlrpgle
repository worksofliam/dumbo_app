**free

ctl-opt dftactgrp(*no);

dcl-pi P76;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds T36 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T36 FROM T36 LIMIT 1;

theCharVar = 'Hello from P76';
dsply theCharVar;
callp localProc();
P43();
P3();
P47();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P76 in the procedure';
end-proc;