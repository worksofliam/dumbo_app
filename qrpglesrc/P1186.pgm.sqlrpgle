**free

ctl-opt dftactgrp(*no);

dcl-pi P1186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1043.rpgleinc'
/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'

dcl-ds theTable extname('T469') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T469 LIMIT 1;

theCharVar = 'Hello from P1186';
dsply theCharVar;
callp localProc();
P1043();
P740();
P972();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1186 in the procedure';
end-proc;