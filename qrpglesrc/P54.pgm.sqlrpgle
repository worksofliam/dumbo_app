**free

ctl-opt dftactgrp(*no);

dcl-pi P54;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds T241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T241 FROM T241 LIMIT 1;

theCharVar = 'Hello from P54';
dsply theCharVar;
callp localProc();
P21();
P35();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P54 in the procedure';
end-proc;