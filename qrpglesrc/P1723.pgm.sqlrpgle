**free

ctl-opt dftactgrp(*no);

dcl-pi P1723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P775.rpgleinc'

dcl-ds theTable extname('T628') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T628 LIMIT 1;

theCharVar = 'Hello from P1723';
dsply theCharVar;
callp localProc();
P534();
P595();
P775();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1723 in the procedure';
end-proc;