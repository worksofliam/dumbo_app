**free

ctl-opt dftactgrp(*no);

dcl-pi P188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds theTable extname('T323') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T323 LIMIT 1;

theCharVar = 'Hello from P188';
dsply theCharVar;
callp localProc();
P137();
P176();
P121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P188 in the procedure';
end-proc;