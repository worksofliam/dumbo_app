**free

ctl-opt dftactgrp(*no);

dcl-pi P5236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P2947.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds T1359 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1359 FROM T1359 LIMIT 1;

theCharVar = 'Hello from P5236';
dsply theCharVar;
callp localProc();
P170();
P2947();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5236 in the procedure';
end-proc;