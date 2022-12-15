**free

ctl-opt dftactgrp(*no);

dcl-pi P452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds theTable extname('T582') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T582 LIMIT 1;

theCharVar = 'Hello from P452';
dsply theCharVar;
callp localProc();
P221();
P83();
P222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P452 in the procedure';
end-proc;