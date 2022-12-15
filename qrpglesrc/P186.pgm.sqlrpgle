**free

ctl-opt dftactgrp(*no);

dcl-pi P186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds theTable extname('T127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T127 LIMIT 1;

theCharVar = 'Hello from P186';
dsply theCharVar;
callp localProc();
P47();
P106();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P186 in the procedure';
end-proc;