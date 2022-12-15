**free

ctl-opt dftactgrp(*no);

dcl-pi P231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P231';
dsply theCharVar;
callp localProc();
P88();
P100();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P231 in the procedure';
end-proc;