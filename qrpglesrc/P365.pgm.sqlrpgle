**free

ctl-opt dftactgrp(*no);

dcl-pi P365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'

dcl-ds theTable extname('T899') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T899 LIMIT 1;

theCharVar = 'Hello from P365';
dsply theCharVar;
callp localProc();
P273();
P149();
P357();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P365 in the procedure';
end-proc;