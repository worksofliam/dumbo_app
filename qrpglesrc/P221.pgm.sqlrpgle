**free

ctl-opt dftactgrp(*no);

dcl-pi P221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds T85 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T85 FROM T85 LIMIT 1;

theCharVar = 'Hello from P221';
dsply theCharVar;
callp localProc();
P89();
P63();
P124();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P221 in the procedure';
end-proc;