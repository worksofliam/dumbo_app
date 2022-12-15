**free

ctl-opt dftactgrp(*no);

dcl-pi P239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P239';
dsply theCharVar;
callp localProc();
P158();
P91();
P159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P239 in the procedure';
end-proc;