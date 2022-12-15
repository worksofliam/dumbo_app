**free

ctl-opt dftactgrp(*no);

dcl-pi P517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds T287 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T287 FROM T287 LIMIT 1;

theCharVar = 'Hello from P517';
dsply theCharVar;
callp localProc();
P68();
P98();
P78();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P517 in the procedure';
end-proc;