**free

ctl-opt dftactgrp(*no);

dcl-pi P1684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P1466.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'

dcl-ds theTable extname('T706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T706 LIMIT 1;

theCharVar = 'Hello from P1684';
dsply theCharVar;
callp localProc();
P14();
P1466();
P695();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1684 in the procedure';
end-proc;