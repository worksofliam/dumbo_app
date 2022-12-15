**free

ctl-opt dftactgrp(*no);

dcl-pi P3001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P976.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'

dcl-ds T231 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T231 FROM T231 LIMIT 1;

theCharVar = 'Hello from P3001';
dsply theCharVar;
callp localProc();
P976();
P94();
P310();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3001 in the procedure';
end-proc;