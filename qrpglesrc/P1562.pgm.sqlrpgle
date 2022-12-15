**free

ctl-opt dftactgrp(*no);

dcl-pi P1562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'

dcl-ds T560 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T560 FROM T560 LIMIT 1;

theCharVar = 'Hello from P1562';
dsply theCharVar;
callp localProc();
P870();
P319();
P404();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1562 in the procedure';
end-proc;