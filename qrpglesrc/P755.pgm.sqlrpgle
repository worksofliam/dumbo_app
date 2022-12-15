**free

ctl-opt dftactgrp(*no);

dcl-pi P755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'

dcl-ds T277 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T277 FROM T277 LIMIT 1;

theCharVar = 'Hello from P755';
dsply theCharVar;
callp localProc();
P705();
P599();
P750();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P755 in the procedure';
end-proc;