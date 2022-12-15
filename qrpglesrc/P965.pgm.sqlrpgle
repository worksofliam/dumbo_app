**free

ctl-opt dftactgrp(*no);

dcl-pi P965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P539.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds T308 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T308 FROM T308 LIMIT 1;

theCharVar = 'Hello from P965';
dsply theCharVar;
callp localProc();
P539();
P84();
P132();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P965 in the procedure';
end-proc;