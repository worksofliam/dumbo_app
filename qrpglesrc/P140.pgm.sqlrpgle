**free

ctl-opt dftactgrp(*no);

dcl-pi P140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds T178 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T178 FROM T178 LIMIT 1;

theCharVar = 'Hello from P140';
dsply theCharVar;
callp localProc();
P63();
P133();
P69();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P140 in the procedure';
end-proc;