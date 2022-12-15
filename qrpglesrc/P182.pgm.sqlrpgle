**free

ctl-opt dftactgrp(*no);

dcl-pi P182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T189 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T189 FROM T189 LIMIT 1;

theCharVar = 'Hello from P182';
dsply theCharVar;
callp localProc();
P179();
P40();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P182 in the procedure';
end-proc;