**free

ctl-opt dftactgrp(*no);

dcl-pi P5204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P3857.rpgleinc'

dcl-ds theTable extname('T1826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1826 LIMIT 1;

theCharVar = 'Hello from P5204';
dsply theCharVar;
callp localProc();
P402();
P741();
P3857();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5204 in the procedure';
end-proc;