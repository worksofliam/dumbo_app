**free

ctl-opt dftactgrp(*no);

dcl-pi P1146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds T707 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T707 FROM T707 LIMIT 1;

theCharVar = 'Hello from P1146';
dsply theCharVar;
callp localProc();
P785();
P617();
P140();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1146 in the procedure';
end-proc;