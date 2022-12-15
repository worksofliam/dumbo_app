**free

ctl-opt dftactgrp(*no);

dcl-pi P2006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1788.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P1556.rpgleinc'

dcl-ds T721 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T721 FROM T721 LIMIT 1;

theCharVar = 'Hello from P2006';
dsply theCharVar;
callp localProc();
P1788();
P40();
P1556();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2006 in the procedure';
end-proc;