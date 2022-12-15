**free

ctl-opt dftactgrp(*no);

dcl-pi P5180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2721.rpgleinc'
/copy 'qrpgleref/P3791.rpgleinc'
/copy 'qrpgleref/P4913.rpgleinc'

dcl-ds theTable extname('T596') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T596 LIMIT 1;

theCharVar = 'Hello from P5180';
dsply theCharVar;
callp localProc();
P2721();
P3791();
P4913();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5180 in the procedure';
end-proc;