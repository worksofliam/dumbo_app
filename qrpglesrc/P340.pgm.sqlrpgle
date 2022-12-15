**free

ctl-opt dftactgrp(*no);

dcl-pi P340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds T306 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T306 FROM T306 LIMIT 1;

theCharVar = 'Hello from P340';
dsply theCharVar;
callp localProc();
P146();
P199();
P87();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P340 in the procedure';
end-proc;