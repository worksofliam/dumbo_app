**free

ctl-opt dftactgrp(*no);

dcl-pi P1229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P776.rpgleinc'

dcl-ds T185 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T185 FROM T185 LIMIT 1;

theCharVar = 'Hello from P1229';
dsply theCharVar;
callp localProc();
P366();
P121();
P776();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1229 in the procedure';
end-proc;