**free

ctl-opt dftactgrp(*no);

dcl-pi P1031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P967.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds theTable extname('T942') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T942 LIMIT 1;

theCharVar = 'Hello from P1031';
dsply theCharVar;
callp localProc();
P967();
P238();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1031 in the procedure';
end-proc;