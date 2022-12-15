**free

ctl-opt dftactgrp(*no);

dcl-pi P198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds theTable extname('T714') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T714 LIMIT 1;

theCharVar = 'Hello from P198';
dsply theCharVar;
callp localProc();
P5();
P136();
P196();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P198 in the procedure';
end-proc;