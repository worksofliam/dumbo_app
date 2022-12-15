**free

ctl-opt dftactgrp(*no);

dcl-pi P292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds T1426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1426 FROM T1426 LIMIT 1;

theCharVar = 'Hello from P292';
dsply theCharVar;
callp localProc();
P190();
P121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P292 in the procedure';
end-proc;