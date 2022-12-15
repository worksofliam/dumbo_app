**free

ctl-opt dftactgrp(*no);

dcl-pi P1928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1495.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P1464.rpgleinc'

dcl-ds T177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T177 FROM T177 LIMIT 1;

theCharVar = 'Hello from P1928';
dsply theCharVar;
callp localProc();
P1495();
P404();
P1464();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1928 in the procedure';
end-proc;