**free

ctl-opt dftactgrp(*no);

dcl-pi P2239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P1106.rpgleinc'
/copy 'qrpgleref/P2201.rpgleinc'

dcl-ds T1147 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1147 FROM T1147 LIMIT 1;

theCharVar = 'Hello from P2239';
dsply theCharVar;
callp localProc();
P23();
P1106();
P2201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2239 in the procedure';
end-proc;