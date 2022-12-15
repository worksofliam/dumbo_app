**free

ctl-opt dftactgrp(*no);

dcl-pi P3798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2948.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P2345.rpgleinc'

dcl-ds T1279 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1279 FROM T1279 LIMIT 1;

theCharVar = 'Hello from P3798';
dsply theCharVar;
callp localProc();
P2948();
P69();
P2345();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3798 in the procedure';
end-proc;