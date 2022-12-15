**free

ctl-opt dftactgrp(*no);

dcl-pi P5184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2636.rpgleinc'
/copy 'qrpgleref/P4997.rpgleinc'
/copy 'qrpgleref/P2000.rpgleinc'

dcl-ds T1870 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1870 FROM T1870 LIMIT 1;

theCharVar = 'Hello from P5184';
dsply theCharVar;
callp localProc();
P2636();
P4997();
P2000();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5184 in the procedure';
end-proc;