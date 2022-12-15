**free

ctl-opt dftactgrp(*no);

dcl-pi P2378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds theTable extname('T208') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T208 LIMIT 1;

theCharVar = 'Hello from P2378';
dsply theCharVar;
callp localProc();
P187();
P648();
P101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2378 in the procedure';
end-proc;