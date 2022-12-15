**free

ctl-opt dftactgrp(*no);

dcl-pi P5213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1501.rpgleinc'
/copy 'qrpgleref/P2710.rpgleinc'
/copy 'qrpgleref/P3307.rpgleinc'

dcl-ds T1606 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1606 FROM T1606 LIMIT 1;

theCharVar = 'Hello from P5213';
dsply theCharVar;
callp localProc();
P1501();
P2710();
P3307();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5213 in the procedure';
end-proc;