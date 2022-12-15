**free

ctl-opt dftactgrp(*no);

dcl-pi P174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds T140 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T140 FROM T140 LIMIT 1;

theCharVar = 'Hello from P174';
dsply theCharVar;
callp localProc();
P17();
P10();
P124();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P174 in the procedure';
end-proc;