**free

ctl-opt dftactgrp(*no);

dcl-pi P5202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3504.rpgleinc'
/copy 'qrpgleref/P2417.rpgleinc'
/copy 'qrpgleref/P3283.rpgleinc'

dcl-ds T1333 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1333 FROM T1333 LIMIT 1;

theCharVar = 'Hello from P5202';
dsply theCharVar;
callp localProc();
P3504();
P2417();
P3283();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5202 in the procedure';
end-proc;