**free

ctl-opt dftactgrp(*no);

dcl-pi P1262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P1262';
dsply theCharVar;
callp localProc();
P238();
P671();
P288();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1262 in the procedure';
end-proc;