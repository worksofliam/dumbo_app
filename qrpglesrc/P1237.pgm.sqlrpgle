**free

ctl-opt dftactgrp(*no);

dcl-pi P1237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P608.rpgleinc'
/copy 'qrpgleref/P1077.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'

dcl-ds theTable extname('T1244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1244 LIMIT 1;

theCharVar = 'Hello from P1237';
dsply theCharVar;
callp localProc();
P608();
P1077();
P749();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1237 in the procedure';
end-proc;