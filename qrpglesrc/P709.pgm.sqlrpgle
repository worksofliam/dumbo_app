**free

ctl-opt dftactgrp(*no);

dcl-pi P709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds theTable extname('T26') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T26 LIMIT 1;

theCharVar = 'Hello from P709';
dsply theCharVar;
callp localProc();
P621();
P522();
P189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P709 in the procedure';
end-proc;