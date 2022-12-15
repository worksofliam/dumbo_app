**free

ctl-opt dftactgrp(*no);

dcl-pi P1363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P856.rpgleinc'
/copy 'qrpgleref/P962.rpgleinc'
/copy 'qrpgleref/P1271.rpgleinc'

dcl-ds theTable extname('T176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T176 LIMIT 1;

theCharVar = 'Hello from P1363';
dsply theCharVar;
callp localProc();
P856();
P962();
P1271();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1363 in the procedure';
end-proc;