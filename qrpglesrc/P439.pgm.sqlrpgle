**free

ctl-opt dftactgrp(*no);

dcl-pi P439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'

dcl-ds T1698 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1698 FROM T1698 LIMIT 1;

theCharVar = 'Hello from P439';
dsply theCharVar;
callp localProc();
P200();
P111();
P303();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P439 in the procedure';
end-proc;