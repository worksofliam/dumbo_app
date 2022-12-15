**free

ctl-opt dftactgrp(*no);

dcl-pi P511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'

dcl-ds T100 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T100 FROM T100 LIMIT 1;

theCharVar = 'Hello from P511';
dsply theCharVar;
callp localProc();
P392();
P409();
P336();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P511 in the procedure';
end-proc;