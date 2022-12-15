**free

ctl-opt dftactgrp(*no);

dcl-pi P681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'

dcl-ds T1653 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1653 FROM T1653 LIMIT 1;

theCharVar = 'Hello from P681';
dsply theCharVar;
callp localProc();
P37();
P447();
P237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P681 in the procedure';
end-proc;