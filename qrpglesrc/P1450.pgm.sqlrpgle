**free

ctl-opt dftactgrp(*no);

dcl-pi P1450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P707.rpgleinc'
/copy 'qrpgleref/P1319.rpgleinc'

dcl-ds theTable extname('T359') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T359 LIMIT 1;

theCharVar = 'Hello from P1450';
dsply theCharVar;
callp localProc();
P246();
P707();
P1319();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1450 in the procedure';
end-proc;