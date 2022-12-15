**free

ctl-opt dftactgrp(*no);

dcl-pi P1058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P1058';
dsply theCharVar;
callp localProc();
P595();
P48();
P394();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1058 in the procedure';
end-proc;