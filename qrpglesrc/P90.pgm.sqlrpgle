**free

ctl-opt dftactgrp(*no);

dcl-pi P90;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T1238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1238 LIMIT 1;

theCharVar = 'Hello from P90';
dsply theCharVar;
callp localProc();
P84();
P68();
P11();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P90 in the procedure';
end-proc;