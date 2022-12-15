**free

ctl-opt dftactgrp(*no);

dcl-pi P3664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2185.rpgleinc'
/copy 'qrpgleref/P2081.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'

dcl-ds T629 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T629 FROM T629 LIMIT 1;

theCharVar = 'Hello from P3664';
dsply theCharVar;
callp localProc();
P2185();
P2081();
P588();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3664 in the procedure';
end-proc;