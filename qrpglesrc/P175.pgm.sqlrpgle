**free

ctl-opt dftactgrp(*no);

dcl-pi P175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'

dcl-ds theTable extname('T106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T106 LIMIT 1;

theCharVar = 'Hello from P175';
dsply theCharVar;
callp localProc();
P121();
P174();
P171();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P175 in the procedure';
end-proc;