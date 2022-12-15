**free

ctl-opt dftactgrp(*no);

dcl-pi P1049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds T138 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T138 FROM T138 LIMIT 1;

theCharVar = 'Hello from P1049';
dsply theCharVar;
callp localProc();
P34();
P438();
P386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1049 in the procedure';
end-proc;