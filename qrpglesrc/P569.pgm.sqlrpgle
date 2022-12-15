**free

ctl-opt dftactgrp(*no);

dcl-pi P569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'

dcl-ds T1124 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1124 FROM T1124 LIMIT 1;

theCharVar = 'Hello from P569';
dsply theCharVar;
callp localProc();
P314();
P48();
P454();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P569 in the procedure';
end-proc;