**free

ctl-opt dftactgrp(*no);

dcl-pi P1095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P1095';
dsply theCharVar;
callp localProc();
P915();
P43();
P261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1095 in the procedure';
end-proc;