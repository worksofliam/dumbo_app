**free

ctl-opt dftactgrp(*no);

dcl-pi P2266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P2116.rpgleinc'

dcl-ds theTable extname('T1215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1215 LIMIT 1;

theCharVar = 'Hello from P2266';
dsply theCharVar;
callp localProc();
P829();
P14();
P2116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2266 in the procedure';
end-proc;