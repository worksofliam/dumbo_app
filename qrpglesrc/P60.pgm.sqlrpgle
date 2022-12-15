**free

ctl-opt dftactgrp(*no);

dcl-pi P60;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P60';
dsply theCharVar;
callp localProc();
P29();
P36();
P47();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P60 in the procedure';
end-proc;