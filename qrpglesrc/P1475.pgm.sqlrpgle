**free

ctl-opt dftactgrp(*no);

dcl-pi P1475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'

dcl-ds T490 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T490 FROM T490 LIMIT 1;

theCharVar = 'Hello from P1475';
dsply theCharVar;
callp localProc();
P522();
P374();
P1385();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1475 in the procedure';
end-proc;