**free

ctl-opt dftactgrp(*no);

dcl-pi P3919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3205.rpgleinc'
/copy 'qrpgleref/P1526.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'

dcl-ds T1551 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1551 FROM T1551 LIMIT 1;

theCharVar = 'Hello from P3919';
dsply theCharVar;
callp localProc();
P3205();
P1526();
P256();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3919 in the procedure';
end-proc;