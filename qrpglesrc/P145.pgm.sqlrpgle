**free

ctl-opt dftactgrp(*no);

dcl-pi P145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds T137 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T137 FROM T137 LIMIT 1;

theCharVar = 'Hello from P145';
dsply theCharVar;
callp localProc();
P81();
P11();
P21();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P145 in the procedure';
end-proc;