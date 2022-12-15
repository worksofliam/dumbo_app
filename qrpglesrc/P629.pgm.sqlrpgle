**free

ctl-opt dftactgrp(*no);

dcl-pi P629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'

dcl-ds theTable extname('T219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T219 LIMIT 1;

theCharVar = 'Hello from P629';
dsply theCharVar;
callp localProc();
P225();
P365();
P511();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P629 in the procedure';
end-proc;