**free

ctl-opt dftactgrp(*no);

dcl-pi P416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds theTable extname('T370') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T370 LIMIT 1;

theCharVar = 'Hello from P416';
dsply theCharVar;
callp localProc();
P216();
P139();
P354();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P416 in the procedure';
end-proc;