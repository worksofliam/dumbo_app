**free

ctl-opt dftactgrp(*no);

dcl-pi P988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P861.rpgleinc'
/copy 'qrpgleref/P440.rpgleinc'

dcl-ds theTable extname('T707') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T707 LIMIT 1;

theCharVar = 'Hello from P988';
dsply theCharVar;
callp localProc();
P129();
P861();
P440();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P988 in the procedure';
end-proc;