**free

ctl-opt dftactgrp(*no);

dcl-pi P3380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1179.rpgleinc'
/copy 'qrpgleref/P1268.rpgleinc'
/copy 'qrpgleref/P3331.rpgleinc'

dcl-ds T839 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T839 FROM T839 LIMIT 1;

theCharVar = 'Hello from P3380';
dsply theCharVar;
callp localProc();
P1179();
P1268();
P3331();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3380 in the procedure';
end-proc;