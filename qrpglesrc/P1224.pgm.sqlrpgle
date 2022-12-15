**free

ctl-opt dftactgrp(*no);

dcl-pi P1224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1052.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds theTable extname('T383') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T383 LIMIT 1;

theCharVar = 'Hello from P1224';
dsply theCharVar;
callp localProc();
P1052();
P696();
P121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1224 in the procedure';
end-proc;