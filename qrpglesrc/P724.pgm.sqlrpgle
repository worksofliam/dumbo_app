**free

ctl-opt dftactgrp(*no);

dcl-pi P724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds T85 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T85 FROM T85 LIMIT 1;

theCharVar = 'Hello from P724';
dsply theCharVar;
callp localProc();
P245();
P354();
P102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P724 in the procedure';
end-proc;