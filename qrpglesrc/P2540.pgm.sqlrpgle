**free

ctl-opt dftactgrp(*no);

dcl-pi P2540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P1130.rpgleinc'
/copy 'qrpgleref/P898.rpgleinc'

dcl-ds T215 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T215 FROM T215 LIMIT 1;

theCharVar = 'Hello from P2540';
dsply theCharVar;
callp localProc();
P247();
P1130();
P898();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2540 in the procedure';
end-proc;