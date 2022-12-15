**free

ctl-opt dftactgrp(*no);

dcl-pi P4897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1656.rpgleinc'
/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P1944.rpgleinc'

dcl-ds theTable extname('T265') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T265 LIMIT 1;

theCharVar = 'Hello from P4897';
dsply theCharVar;
callp localProc();
P1656();
P1254();
P1944();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4897 in the procedure';
end-proc;