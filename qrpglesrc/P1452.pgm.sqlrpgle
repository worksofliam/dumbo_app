**free

ctl-opt dftactgrp(*no);

dcl-pi P1452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'

dcl-ds T736 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T736 FROM T736 LIMIT 1;

theCharVar = 'Hello from P1452';
dsply theCharVar;
callp localProc();
P1151();
P317();
P1019();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1452 in the procedure';
end-proc;