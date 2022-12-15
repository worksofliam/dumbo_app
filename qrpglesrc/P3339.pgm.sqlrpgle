**free

ctl-opt dftactgrp(*no);

dcl-pi P3339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2546.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P2324.rpgleinc'

dcl-ds T857 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T857 FROM T857 LIMIT 1;

theCharVar = 'Hello from P3339';
dsply theCharVar;
callp localProc();
P2546();
P139();
P2324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3339 in the procedure';
end-proc;