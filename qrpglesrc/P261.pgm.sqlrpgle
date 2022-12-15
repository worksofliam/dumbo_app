**free

ctl-opt dftactgrp(*no);

dcl-pi P261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds theTable extname('T895') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T895 LIMIT 1;

theCharVar = 'Hello from P261';
dsply theCharVar;
callp localProc();
P29();
P165();
P48();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P261 in the procedure';
end-proc;