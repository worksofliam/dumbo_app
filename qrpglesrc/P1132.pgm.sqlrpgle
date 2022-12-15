**free

ctl-opt dftactgrp(*no);

dcl-pi P1132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P954.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T1184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1184 LIMIT 1;

theCharVar = 'Hello from P1132';
dsply theCharVar;
callp localProc();
P540();
P954();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1132 in the procedure';
end-proc;