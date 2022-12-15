**free

ctl-opt dftactgrp(*no);

dcl-pi P129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds theTable extname('T39') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T39 LIMIT 1;

theCharVar = 'Hello from P129';
dsply theCharVar;
callp localProc();
P122();
P91();
P92();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P129 in the procedure';
end-proc;