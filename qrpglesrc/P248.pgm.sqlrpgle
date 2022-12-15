**free

ctl-opt dftactgrp(*no);

dcl-pi P248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds T871 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T871 FROM T871 LIMIT 1;

theCharVar = 'Hello from P248';
dsply theCharVar;
callp localProc();
P85();
P100();
P34();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P248 in the procedure';
end-proc;