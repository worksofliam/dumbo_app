**free

ctl-opt dftactgrp(*no);

dcl-pi P594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'

dcl-ds theTable extname('T442') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T442 LIMIT 1;

theCharVar = 'Hello from P594';
dsply theCharVar;
callp localProc();
P342();
P451();
P426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P594 in the procedure';
end-proc;