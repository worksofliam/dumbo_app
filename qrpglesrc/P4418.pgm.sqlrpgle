**free

ctl-opt dftactgrp(*no);

dcl-pi P4418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P3277.rpgleinc'
/copy 'qrpgleref/P1433.rpgleinc'

dcl-ds theTable extname('T773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T773 LIMIT 1;

theCharVar = 'Hello from P4418';
dsply theCharVar;
callp localProc();
P829();
P3277();
P1433();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4418 in the procedure';
end-proc;