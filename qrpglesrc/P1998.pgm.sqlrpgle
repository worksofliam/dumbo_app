**free

ctl-opt dftactgrp(*no);

dcl-pi P1998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1503.rpgleinc'
/copy 'qrpgleref/P1742.rpgleinc'
/copy 'qrpgleref/P1813.rpgleinc'

dcl-ds theTable extname('T1083') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1083 LIMIT 1;

theCharVar = 'Hello from P1998';
dsply theCharVar;
callp localProc();
P1503();
P1742();
P1813();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1998 in the procedure';
end-proc;