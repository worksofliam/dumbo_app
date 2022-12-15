**free

ctl-opt dftactgrp(*no);

dcl-pi P4219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2069.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'

dcl-ds theTable extname('T717') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T717 LIMIT 1;

theCharVar = 'Hello from P4219';
dsply theCharVar;
callp localProc();
P2069();
P118();
P1043();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4219 in the procedure';
end-proc;