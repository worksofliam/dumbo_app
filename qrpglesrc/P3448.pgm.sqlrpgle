**free

ctl-opt dftactgrp(*no);

dcl-pi P3448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1035.rpgleinc'
/copy 'qrpgleref/P776.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds T65 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T65 FROM T65 LIMIT 1;

theCharVar = 'Hello from P3448';
dsply theCharVar;
callp localProc();
P1035();
P776();
P432();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3448 in the procedure';
end-proc;