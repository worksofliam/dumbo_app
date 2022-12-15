**free

ctl-opt dftactgrp(*no);

dcl-pi P1018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P827.rpgleinc'

dcl-ds theTable extname('T433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T433 LIMIT 1;

theCharVar = 'Hello from P1018';
dsply theCharVar;
callp localProc();
P303();
P466();
P827();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1018 in the procedure';
end-proc;