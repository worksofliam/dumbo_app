**free

ctl-opt dftactgrp(*no);

dcl-pi P181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'

dcl-ds theTable extname('T370') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T370 LIMIT 1;

theCharVar = 'Hello from P181';
dsply theCharVar;
callp localProc();
P18();
P58();
P99();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P181 in the procedure';
end-proc;