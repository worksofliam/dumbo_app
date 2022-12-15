**free

ctl-opt dftactgrp(*no);

dcl-pi P1894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P1343.rpgleinc'
/copy 'qrpgleref/P1021.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P1894';
dsply theCharVar;
callp localProc();
P582();
P1343();
P1021();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1894 in the procedure';
end-proc;