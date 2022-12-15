**free

ctl-opt dftactgrp(*no);

dcl-pi P3832;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P2317.rpgleinc'

dcl-ds theTable extname('T833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T833 LIMIT 1;

theCharVar = 'Hello from P3832';
dsply theCharVar;
callp localProc();
P130();
P216();
P2317();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3832 in the procedure';
end-proc;