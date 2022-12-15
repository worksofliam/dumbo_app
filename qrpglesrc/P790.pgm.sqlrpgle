**free

ctl-opt dftactgrp(*no);

dcl-pi P790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P772.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'

dcl-ds theTable extname('T80') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T80 LIMIT 1;

theCharVar = 'Hello from P790';
dsply theCharVar;
callp localProc();
P772();
P529();
P442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P790 in the procedure';
end-proc;