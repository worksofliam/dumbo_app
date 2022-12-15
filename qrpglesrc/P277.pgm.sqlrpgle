**free

ctl-opt dftactgrp(*no);

dcl-pi P277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'

dcl-ds T31 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T31 FROM T31 LIMIT 1;

theCharVar = 'Hello from P277';
dsply theCharVar;
callp localProc();
P125();
P215();
P77();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P277 in the procedure';
end-proc;