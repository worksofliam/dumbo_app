**free

ctl-opt dftactgrp(*no);

dcl-pi P3801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2414.rpgleinc'
/copy 'qrpgleref/P3065.rpgleinc'
/copy 'qrpgleref/P1538.rpgleinc'

dcl-ds T215 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T215 FROM T215 LIMIT 1;

theCharVar = 'Hello from P3801';
dsply theCharVar;
callp localProc();
P2414();
P3065();
P1538();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3801 in the procedure';
end-proc;