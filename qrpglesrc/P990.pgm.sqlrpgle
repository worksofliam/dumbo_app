**free

ctl-opt dftactgrp(*no);

dcl-pi P990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P650.rpgleinc'

dcl-ds T129 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T129 FROM T129 LIMIT 1;

theCharVar = 'Hello from P990';
dsply theCharVar;
callp localProc();
P298();
P121();
P650();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P990 in the procedure';
end-proc;