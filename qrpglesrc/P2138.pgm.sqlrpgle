**free

ctl-opt dftactgrp(*no);

dcl-pi P2138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P1708.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'

dcl-ds T696 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T696 FROM T696 LIMIT 1;

theCharVar = 'Hello from P2138';
dsply theCharVar;
callp localProc();
P1185();
P1708();
P420();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2138 in the procedure';
end-proc;