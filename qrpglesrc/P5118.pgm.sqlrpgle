**free

ctl-opt dftactgrp(*no);

dcl-pi P5118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2283.rpgleinc'
/copy 'qrpgleref/P4184.rpgleinc'
/copy 'qrpgleref/P4034.rpgleinc'

dcl-ds T1136 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1136 FROM T1136 LIMIT 1;

theCharVar = 'Hello from P5118';
dsply theCharVar;
callp localProc();
P2283();
P4184();
P4034();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5118 in the procedure';
end-proc;