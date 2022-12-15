**free

ctl-opt dftactgrp(*no);

dcl-pi P322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T14') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T14 LIMIT 1;

theCharVar = 'Hello from P322';
dsply theCharVar;
callp localProc();
P69();
P130();
P80();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P322 in the procedure';
end-proc;