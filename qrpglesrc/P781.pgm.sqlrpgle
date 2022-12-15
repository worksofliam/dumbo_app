**free

ctl-opt dftactgrp(*no);

dcl-pi P781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'

dcl-ds T1130 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1130 FROM T1130 LIMIT 1;

theCharVar = 'Hello from P781';
dsply theCharVar;
callp localProc();
P568();
P29();
P209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P781 in the procedure';
end-proc;