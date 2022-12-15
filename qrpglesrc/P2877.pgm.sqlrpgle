**free

ctl-opt dftactgrp(*no);

dcl-pi P2877;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1248.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P1095.rpgleinc'

dcl-ds T776 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T776 FROM T776 LIMIT 1;

theCharVar = 'Hello from P2877';
dsply theCharVar;
callp localProc();
P1248();
P255();
P1095();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2877 in the procedure';
end-proc;